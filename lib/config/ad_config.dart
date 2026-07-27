import 'package:flutter/foundation.dart';

/// Platform-specific ad identifiers.
///
/// Android keeps the existing production identifiers. iOS uses Google's demo
/// identifiers until the iOS app and ad units are created in AdMob. Supply the
/// production values at build time with the IOS_ADMOB_* dart defines.
abstract final class AdConfig {
  static const _androidBanner = 'ca-app-pub-2265053267835785/7158897413';
  static const _androidRewardedInterstitial =
      'ca-app-pub-2265053267835785/4373392914';
  static const _androidAppOpen = 'ca-app-pub-2265053267835785/1349939403';

  static const _iosBanner = String.fromEnvironment(
    'IOS_ADMOB_BANNER_ID',
    defaultValue: 'ca-app-pub-3940256099942544/2435281174',
  );
  static const _iosRewardedInterstitial = String.fromEnvironment(
    'IOS_ADMOB_REWARDED_INTERSTITIAL_ID',
    defaultValue: 'ca-app-pub-3940256099942544/6978759866',
  );
  static const _iosAppOpen = String.fromEnvironment(
    'IOS_ADMOB_APP_OPEN_ID',
    defaultValue: 'ca-app-pub-3940256099942544/5575463023',
  );

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
