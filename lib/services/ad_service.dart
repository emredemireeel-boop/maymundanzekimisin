import 'dart:async';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter/foundation.dart';
import 'package:zihin_tuzaklari/config/ad_config.dart';

/// Merkezi reklam yönetim servisi
/// Aktif reklam tipleri: Banner + Ödüllü Geçiş (RewardedInterstitial) + Uygulama Açılış (AppOpen)
///
/// Ödül Mantığı:
///   Kullanıcı "Reklam İzle → 3 Bedava Cevap Hakkı" butonuna tıklar.
///   Reklam izlenince [freeAnswers] 3 artar.
///   Kullanıcı cevabı görüntülerken [useFreeAnswer()] ile hak düşürülür.
class AdService {
  AdService._();
  static final AdService instance = AdService._();

  // ═══════════════════════════════════════════════════════
  // ── AD UNIT IDs ──
  // ═══════════════════════════════════════════════════════
  // ═══════════════════════════════════════════════════════
  // ── STATE ──
  // ═══════════════════════════════════════════════════════
  RewardedInterstitialAd? _rewardedInterstitialAd;
  bool _rewardedInterstitialLoading = false;
  bool _mobileAdsStarted = false;

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
    await MobileAds.instance.initialize();
    adsReady.value = true;
    _loadRewardedInterstitialAd();
    _loadAppOpenAd();
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
      request: const AdRequest(),
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

  // ═══════════════════════════════════════════════════════
  // ── BANNER ──
  // ═══════════════════════════════════════════════════════
  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: AdConfig.bannerAdUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
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
      request: const AdRequest(),
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
    _appOpenAd?.dispose();
    adsReady.dispose();
    privacyOptionsRequired.dispose();
  }
}
