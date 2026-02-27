import 'dart:ui';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter/foundation.dart';

/// Merkezi reklam yonetim servisi
/// Test ID'leri kullanilmaktadir – gercek ID'ler sonra verilecek.
class AdService {
  AdService._();
  static final AdService instance = AdService._();

  // ═══════════════════════════════════════════════════════
  // ── TEST AD UNIT IDs (gercek ID'lerle degistirilecek) ──
  // ═══════════════════════════════════════════════════════
  // ignore: constant_identifier_names
  static const String _interstitialAdUnitId =
      'ca-app-pub-3940256099942544/1033173712'; // TEST
  // ignore: constant_identifier_names
  static const String _rewardedAdUnitId =
      'ca-app-pub-3940256099942544/5224354917'; // TEST
  // ignore: constant_identifier_names
  static const String _bannerAdUnitId =
      'ca-app-pub-3940256099942544/6300978111'; // TEST
  // ignore: constant_identifier_names
  static const String _nativeAdUnitId =
      'ca-app-pub-3940256099942544/2247696110'; // TEST

  InterstitialAd? _interstitialAd;
  RewardedAd? _rewardedAd;
  NativeAd? _nativeAd;
  bool _isNativeAdLoaded = false;

  int _questionsSinceLastAd = 0;
  static const int _adInterval = 3; // Her 3 sorudan sonra reklam

  bool get isNativeAdLoaded => _isNativeAdLoaded;
  NativeAd? get nativeAd => _nativeAd;

  // ═══════════════════════════════════════════════════════
  // ── BASLAT ──
  // ═══════════════════════════════════════════════════════
  Future<void> initialize() async {
    await MobileAds.instance.initialize();
    _loadInterstitialAd();
    _loadRewardedAd();
    _loadNativeAd();
  }

  // ═══════════════════════════════════════════════════════
  // ── INTERSTITIAL (Gecis Reklamlari) ──
  // ═══════════════════════════════════════════════════════
  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: _interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              _interstitialAd = null;
              _loadInterstitialAd(); // Yenisini yukle
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              ad.dispose();
              _interstitialAd = null;
              _loadInterstitialAd();
            },
          );
        },
        onAdFailedToLoad: (error) {
          debugPrint('Interstitial yukleme hatasi: $error');
          // 30 saniye sonra tekrar dene
          Future.delayed(const Duration(seconds: 30), _loadInterstitialAd);
        },
      ),
    );
  }

  /// Soru sayacini artir ve gerekirse interstitial goster
  /// 3. sorudan sonra her soruda reklam gosterir
  bool shouldShowInterstitial() {
    _questionsSinceLastAd++;
    return _questionsSinceLastAd >= _adInterval;
  }

  void showInterstitialAd({VoidCallback? onAdClosed}) {
    if (_interstitialAd != null) {
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          _interstitialAd = null;
          _questionsSinceLastAd = 0;
          _loadInterstitialAd();
          onAdClosed?.call();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
          _interstitialAd = null;
          _loadInterstitialAd();
          onAdClosed?.call();
        },
      );
      _interstitialAd!.show();
    } else {
      _questionsSinceLastAd = 0;
      onAdClosed?.call();
    }
  }

  // ═══════════════════════════════════════════════════════
  // ── REWARDED (Odullu Reklam) ──
  // ═══════════════════════════════════════════════════════
  void _loadRewardedAd() {
    RewardedAd.load(
      adUnitId: _rewardedAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          _rewardedAd = ad;
        },
        onAdFailedToLoad: (error) {
          debugPrint('Rewarded yukleme hatasi: $error');
          Future.delayed(const Duration(seconds: 30), _loadRewardedAd);
        },
      ),
    );
  }

  /// Odullu reklam goster
  void showRewardedAd({
    required Function(RewardItem reward) onRewarded,
    VoidCallback? onAdClosed,
  }) {
    if (_rewardedAd != null) {
      _rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          _rewardedAd = null;
          _loadRewardedAd();
          onAdClosed?.call();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
          _rewardedAd = null;
          _loadRewardedAd();
          onAdClosed?.call();
        },
      );
      _rewardedAd!.show(
        onUserEarnedReward: (_, reward) => onRewarded(reward),
      );
    } else {
      onAdClosed?.call();
    }
  }

  bool get isRewardedAdReady => _rewardedAd != null;

  // ═══════════════════════════════════════════════════════
  // ── NATIVE (Yerel Gelismis Reklam) ──
  // ═══════════════════════════════════════════════════════
  void _loadNativeAd() {
    _nativeAd?.dispose();
    _isNativeAdLoaded = false;

    _nativeAd = NativeAd(
      adUnitId: _nativeAdUnitId,
      listener: NativeAdListener(
        onAdLoaded: (ad) {
          _isNativeAdLoaded = true;
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint('Native yukleme hatasi: $error');
          ad.dispose();
          _isNativeAdLoaded = false;
          Future.delayed(const Duration(seconds: 30), _loadNativeAd);
        },
      ),
      request: const AdRequest(),
      nativeTemplateStyle: NativeTemplateStyle(
        templateType: TemplateType.small,
        mainBackgroundColor: const Color(0xFF1E1E2C),
        cornerRadius: 16,
        callToActionTextStyle: NativeTemplateTextStyle(
          textColor: const Color(0xFFFFFFFF),
          backgroundColor: const Color(0xFF7C4DFF),
          style: NativeTemplateFontStyle.bold,
          size: 14,
        ),
        primaryTextStyle: NativeTemplateTextStyle(
          textColor: const Color(0xFFE0E0E0),
          style: NativeTemplateFontStyle.normal,
          size: 13,
        ),
        secondaryTextStyle: NativeTemplateTextStyle(
          textColor: const Color(0xFF888888),
          style: NativeTemplateFontStyle.normal,
          size: 11,
        ),
      ),
    );
    _nativeAd!.load();
  }

  void reloadNativeAd() => _loadNativeAd();

  // ═══════════════════════════════════════════════════════
  // ── BANNER ──
  // ═══════════════════════════════════════════════════════
  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: _bannerAdUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdFailedToLoad: (ad, error) {
          debugPrint('Banner yukleme hatasi: $error');
          ad.dispose();
        },
      ),
    );
  }

  // ═══════════════════════════════════════════════════════
  // ── TEMIZLIK ──
  // ═══════════════════════════════════════════════════════
  void dispose() {
    _interstitialAd?.dispose();
    _rewardedAd?.dispose();
    _nativeAd?.dispose();
  }
}
