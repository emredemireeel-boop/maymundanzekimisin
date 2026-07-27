import 'package:flutter/foundation.dart';

/// Platform-specific ad identifiers.
///
/// Production identifiers for the Android and iOS AdMob applications.
abstract final class AdConfig {
  static const _androidBanner = 'ca-app-pub-6387001035314883/5985115224';
  static const _androidRewardedInterstitial =
      'ca-app-pub-6387001035314883/9454738636';
  static const _androidAppOpen = 'ca-app-pub-6387001035314883/2008181816';

  static const _iosBanner = 'ca-app-pub-6387001035314883/6473352077';
  static const _iosRewardedInterstitial =
      'ca-app-pub-6387001035314883/1576936973';
  static const _iosAppOpen = 'ca-app-pub-6387001035314883/2838047753';

  static String get bannerAdUnitId =>
      defaultTargetPlatform == TargetPlatform.iOS ? _iosBanner : _androidBanner;

  static String get rewardedInterstitialAdUnitId =>
      defaultTargetPlatform == TargetPlatform.iOS
      ? _iosRewardedInterstitial
      : _androidRewardedInterstitial;

  static String get appOpenAdUnitId =>
      defaultTargetPlatform == TargetPlatform.iOS
      ? _iosAppOpen
      : _androidAppOpen;
}
