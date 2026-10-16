import 'package:flutter/foundation.dart';

enum BannerPlacement { home, soloQuiz, multiplayerQuiz }

/// Platform-specific ad identifiers.
///
/// Android production IDs belong to the Google Play-linked Maymundan Zeki
/// Misin? app (com.zihintuzaklari.zihin_tuzaklari).
abstract final class AdConfig {
  static const _androidBanners = {
    BannerPlacement.home: 'ca-app-pub-2265053267835785/1605076965',
    BannerPlacement.soloQuiz: 'ca-app-pub-2265053267835785/2592739788',
    BannerPlacement.multiplayerQuiz: 'ca-app-pub-2265053267835785/8830845077',
  };
  static const _androidRewardedInterstitial =
      'ca-app-pub-2265053267835785/4373392914';
  static const _androidAppOpen = 'ca-app-pub-2265053267835785/1349939403';
  static const _androidInterstitial = 'ca-app-pub-2265053267835785/8826227217';

  static const _iosBanner = 'ca-app-pub-6387001035314883/6473352077';
  static const _iosRewardedInterstitial =
      'ca-app-pub-6387001035314883/1576936973';
  static const _iosAppOpen = 'ca-app-pub-6387001035314883/2838047753';
  static const _iosInterstitial = 'ca-app-pub-6387001035314883/2852550075';

  static String bannerAdUnitId(BannerPlacement placement) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return kReleaseMode
          ? _iosBanner
          : 'ca-app-pub-3940256099942544/2435281174';
    }
    return kReleaseMode
        ? _androidBanners[placement]!
        : 'ca-app-pub-3940256099942544/9214589741';
  }

  static String get rewardedInterstitialAdUnitId {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return kReleaseMode
          ? _iosRewardedInterstitial
          : 'ca-app-pub-3940256099942544/6978759866';
    }
    return kReleaseMode
        ? _androidRewardedInterstitial
        : 'ca-app-pub-3940256099942544/5354046379';
  }

  static String get appOpenAdUnitId {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return kReleaseMode
          ? _iosAppOpen
          : 'ca-app-pub-3940256099942544/5575463023';
    }
    return kReleaseMode
        ? _androidAppOpen
        : 'ca-app-pub-3940256099942544/9257395921';
  }

  static String? get interstitialAdUnitId {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return kReleaseMode
          ? _iosInterstitial
          : 'ca-app-pub-3940256099942544/4411468910';
    }
    return kReleaseMode
        ? _androidInterstitial
        : 'ca-app-pub-3940256099942544/1033173712';
  }
}
