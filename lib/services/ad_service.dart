import 'dart:async';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter/foundation.dart';
import 'package:zihin_tuzaklari/config/ad_config.dart';

/// Merkezi reklam yönetim servisi
/// Banner, ödüllü geçiş, uygulama açılışı ve oyun sonu geçiş reklamları.
///
/// Ödül Mantığı:
///   Kullanıcı "Reklam İzle → 3 Bedava Cevap Hakkı" butonuna tıklar.
///   Reklam izlenince [freeAnswers] 3 artar.
///   Kullanıcı cevabı görüntülerken [useFreeAnswer()] ile hak düşürülür.
class AdService {
  AdService._();
  static final AdService instance = AdService._();

  // ── STATE ──
  RewardedInterstitialAd? _rewardedInterstitialAd;
  bool _rewardedInterstitialLoading = false;
  bool _mobileAdsStarted = false;
  bool _trackingAuthorized = false;

  InterstitialAd? _interstitialAd;
  bool _interstitialLoading = false;
  bool _interstitialShowing = false;
  DateTime? _lastFullScreenAdAt;
  static const _fullScreenCooldown = Duration(minutes: 3);

  AppOpenAd? _appOpenAd;
  bool _appOpenAdLoading = false;
  bool _appOpenAdShowing = false;

  final ValueNotifier<bool> adsReady = ValueNotifier<bool>(false);
  final ValueNotifier<bool> privacyOptionsRequired = ValueNotifier<bool>(false);

  /// Reklam izleyerek kazanılan bedava cevap hakkı sayısı.
  int _freeAnswers = 0;

  int get freeAnswers => _freeAnswers;
  bool get hasFreeAnswers => _freeAnswers > 0;
  bool get isRewardedInterstitialReady => _rewardedInterstitialAd != null;
  bool get isAppOpenAdReady => _appOpenAd != null && !_appOpenAdShowing;
  AdRequest get adRequest => AdRequest(
    nonPersonalizedAds:
        defaultTargetPlatform == TargetPlatform.iOS && !_trackingAuthorized,
  );

  // ═══════════════════════════════════════════════════════
  // ── BAŞLAT ──
  // ═══════════════════════════════════════════════════════
  Future<void> initialize() async {
    if (kIsWeb ||
        (defaultTargetPlatform != TargetPlatform.android &&
            defaultTargetPlatform != TargetPlatform.iOS)) {
      return;
    }

    final params = ConsentRequestParameters();
    ConsentInformation.instance.requestConsentInfoUpdate(
      params,
      () async {
        await _refreshPrivacyOptionsRequirement();
        await _startAdsIfAllowed();

        ConsentForm.loadAndShowConsentFormIfRequired((formError) async {
          if (formError != null) {
            debugPrint(
              'Gizlilik formu gösterilemedi: '
              '${formError.errorCode} ${formError.message}',
            );
          }
          await _refreshPrivacyOptionsRequirement();
          await _startAdsIfAllowed();
        });
      },
      (formError) async {
        debugPrint(
          'Gizlilik bilgisi alınamadı: '
          '${formError.errorCode} ${formError.message}',
        );
        await _refreshPrivacyOptionsRequirement();
        await _startAdsIfAllowed();
      },
    );
  }

  Future<void> _startAdsIfAllowed() async {
    if (_mobileAdsStarted ||
        !await ConsentInformation.instance.canRequestAds()) {
      return;
    }

    _mobileAdsStarted = true;
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      try {
        final status = await AppTrackingTransparency.trackingAuthorizationStatus;
        if (status == TrackingStatus.notDetermined) {
          // The UMP dialog has just closed; let iOS finish dismissing it.
          await Future<void>.delayed(const Duration(milliseconds: 300));
          _trackingAuthorized =
              await AppTrackingTransparency.requestTrackingAuthorization() ==
              TrackingStatus.authorized;
        } else {
          _trackingAuthorized = status == TrackingStatus.authorized;
        }
      } catch (error) {
        debugPrint('ATT izni alınamadı: $error');
        _trackingAuthorized = false;
      }
    }
    await MobileAds.instance.initialize();
    adsReady.value = true;
    _loadRewardedInterstitialAd();
    _loadAppOpenAd();
    _loadInterstitialAd();
  }

  Future<void> _refreshPrivacyOptionsRequirement() async {
    privacyOptionsRequired.value =
        await ConsentInformation.instance
            .getPrivacyOptionsRequirementStatus() ==
        PrivacyOptionsRequirementStatus.required;
  }

  Future<FormError?> showPrivacyOptionsForm() {
    final completer = Completer<FormError?>();
    ConsentForm.showPrivacyOptionsForm((formError) async {
      if (formError != null) {
        debugPrint(
          'Gizlilik seçenekleri gösterilemedi: '
          '${formError.errorCode} ${formError.message}',
        );
      }
      await _refreshPrivacyOptionsRequirement();
      await _startAdsIfAllowed();
      completer.complete(formError);
    });
    return completer.future;
  }

  /// Her yeni oyun başladığında 3 bedava hak hediye et
  void resetForNewGame() {
    _freeAnswers = 3; // ilk 3 cevap ücretsiz, reklamı 4. sorudan sonra gör
  }

  // ═══════════════════════════════════════════════════════
  // ── REWARDED INTERSTITIAL (Ödüllü Geçiş) ──
  // ═══════════════════════════════════════════════════════
  void _loadRewardedInterstitialAd() {
    if (_rewardedInterstitialLoading) return;
    _rewardedInterstitialLoading = true;
    RewardedInterstitialAd.load(
      adUnitId: AdConfig.rewardedInterstitialAdUnitId,
      request: adRequest,
      rewardedInterstitialAdLoadCallback: RewardedInterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _rewardedInterstitialAd = ad;
          _rewardedInterstitialLoading = false;
          debugPrint('RewardedInterstitial yüklendi.');
        },
        onAdFailedToLoad: (error) {
          _rewardedInterstitialLoading = false;
          debugPrint('RewardedInterstitial yükleme hatası: $error');
          Future.delayed(
            const Duration(seconds: 30),
            _loadRewardedInterstitialAd,
          );
        },
      ),
    );
  }

  /// Reklamı göster. İzlenirse [onRewarded] callback'i çağrılır (3 hak verilir).
  /// Reklam hazır değilse yine de yüklenir ve [onNotAvailable] çağrılır.
  void showRewardedInterstitialAd({
    required VoidCallback onRewarded,
    VoidCallback? onNotAvailable,
    VoidCallback? onAdClosed,
  }) {
    if (_rewardedInterstitialAd != null) {
      _rewardedInterstitialAd!.fullScreenContentCallback =
          FullScreenContentCallback(
            onAdShowedFullScreenContent: (_) {
              _lastFullScreenAdAt = DateTime.now();
            },
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              _rewardedInterstitialAd = null;
              _loadRewardedInterstitialAd();
              onAdClosed?.call();
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              debugPrint('RewardedInterstitial gösterme hatası: $error');
              ad.dispose();
              _rewardedInterstitialAd = null;
              _loadRewardedInterstitialAd();
              onAdClosed?.call();
            },
          );
      _rewardedInterstitialAd!.show(
        onUserEarnedReward: (_, reward) {
          _freeAnswers += 3;
          debugPrint('Ödül kazanıldı! Bedava cevap: $_freeAnswers');
          onRewarded();
        },
      );
    } else {
      _loadRewardedInterstitialAd();
      onNotAvailable?.call();
    }
  }

  /// Bir bedava cevap hakkı kullan. Hak varsa true döner ve düşer.
  bool useFreeAnswer() {
    if (_freeAnswers > 0) {
      _freeAnswers--;
      return true;
    }
    return false;
  }

  // ── OYUN SONU GEÇİŞ REKLAMI ──
  void _loadInterstitialAd() {
    final unitId = AdConfig.interstitialAdUnitId;
    if (unitId == null ||
        _interstitialLoading ||
        _interstitialAd != null ||
        !adsReady.value) {
      return;
    }
    _interstitialLoading = true;
    InterstitialAd.load(
      adUnitId: unitId,
      request: adRequest,
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          _interstitialLoading = false;
        },
        onAdFailedToLoad: (error) {
          _interstitialLoading = false;
          debugPrint('Geçiş reklamı yükleme hatası: $error');
          Future.delayed(const Duration(seconds: 30), _loadInterstitialAd);
        },
      ),
    );
  }

  bool get canShowInterstitialAtBreak {
    final lastAd = _lastFullScreenAdAt;
    return _interstitialAd != null &&
        !_interstitialShowing &&
        !_appOpenAdShowing &&
        (lastAd == null ||
            DateTime.now().difference(lastAd) >= _fullScreenCooldown);
  }

  /// Called only after a completed game, before the result screen opens.
  void showInterstitialAtBreak({required VoidCallback onComplete}) {
    if (!canShowInterstitialAtBreak) {
      onComplete();
      return;
    }
    final ad = _interstitialAd!;
    _interstitialAd = null;
    _interstitialShowing = true;
    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (_) {
        _lastFullScreenAdAt = DateTime.now();
      },
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        _interstitialShowing = false;
        _loadInterstitialAd();
        onComplete();
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        debugPrint('Geçiş reklamı gösterme hatası: $error');
        ad.dispose();
        _interstitialShowing = false;
        _loadInterstitialAd();
        onComplete();
      },
    );
    ad.show();
  }

  // ═══════════════════════════════════════════════════════
  // ── BANNER ──
  // ═══════════════════════════════════════════════════════
  BannerAd createBannerAd(BannerPlacement placement) {
    return BannerAd(
      adUnitId: AdConfig.bannerAdUnitId(placement),
      size: AdSize.banner,
      request: adRequest,
      listener: BannerAdListener(
        onAdFailedToLoad: (ad, error) {
          debugPrint('Banner yükleme hatası: $error');
          ad.dispose();
        },
      ),
    );
  }

  // ═══════════════════════════════════════════════════════
  // ── APP OPEN AD (Uygulama Açılış Reklamı) ──
  // ═══════════════════════════════════════════════════════

  /// App Open reklamını önceden yükle (initialize() tarafından çağrılır)
  void _loadAppOpenAd() {
    if (_appOpenAdLoading || _appOpenAd != null) return;
    _appOpenAdLoading = true;

    AppOpenAd.load(
      adUnitId: AdConfig.appOpenAdUnitId,
      request: adRequest,
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          _appOpenAd = ad;
          _appOpenAdLoading = false;
          debugPrint('AppOpenAd yüklendi.');
        },
        onAdFailedToLoad: (error) {
          _appOpenAdLoading = false;
          debugPrint('AppOpenAd yükleme hatası: $error');
          // 30 saniye sonra tekrar dene
          Future.delayed(const Duration(seconds: 30), _loadAppOpenAd);
        },
      ),
    );
  }

  /// Splash screen'den çağrılır.
  /// Reklam hazırsa tam ekran gösterir; kullanıcı kapatınca [onComplete] tetiklenir.
  /// Reklam henüz yüklenmemişse [onComplete]'i hemen çağırır (uygulama bloke olmaz).
  void showAppOpenAd({required VoidCallback onComplete}) {
    if (_appOpenAd == null || _appOpenAdShowing) {
      debugPrint('AppOpenAd hazır değil, atlıyorum.');
      onComplete();
      return;
    }

    _appOpenAdShowing = true;
    _appOpenAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (ad) {
        _lastFullScreenAdAt = DateTime.now();
        debugPrint('AppOpenAd gösterildi.');
      },
      onAdDismissedFullScreenContent: (ad) {
        debugPrint('AppOpenAd kapatıldı.');
        _appOpenAdShowing = false;
        ad.dispose();
        _appOpenAd = null;
        _loadAppOpenAd(); // Bir sonraki açılış için yeniden yükle
        onComplete();
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        debugPrint('AppOpenAd gösterme hatası: $error');
        _appOpenAdShowing = false;
        ad.dispose();
        _appOpenAd = null;
        _loadAppOpenAd();
        onComplete();
      },
    );

    _appOpenAd!.show();
  }

  // ═══════════════════════════════════════════════════════
  // ── TEMİZLİK ──
  // ═══════════════════════════════════════════════════════
  void dispose() {
    _rewardedInterstitialAd?.dispose();
    _interstitialAd?.dispose();
    _appOpenAd?.dispose();
    adsReady.dispose();
    privacyOptionsRequired.dispose();
  }
}
