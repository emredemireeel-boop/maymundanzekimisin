import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:zihin_tuzaklari/config/ad_config.dart';
import 'package:zihin_tuzaklari/services/ad_service.dart';

/// Ekranın altına yapışık banner reklam widget'ı.
///
/// • Scaffold.bottomNavigationBar içinde kullanılır.
/// • Adaptive banner kullanır: ekran genişliği + sistem navigation bar
///   yüksekliğini otomatik hesaplayarak doğru boyutu alır.
/// • Gesture navigation bar bulunan telefonlarda içerik kesilmez.
class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({super.key, required this.placement});

  final BannerPlacement placement;

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;
  bool _isLoading = false;
  AdSize? _adSize;

  @override
  void initState() {
    super.initState();
    AdService.instance.adsReady.addListener(_onAdsReady);
  }

  void _onAdsReady() {
    if (mounted && _bannerAd == null) {
      _loadBanner();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Banner henüz yüklenmediyse yükle (didChangeDependencies, context hazır olduğunda çağrılır)
    if (AdService.instance.adsReady.value && _bannerAd == null) {
      _loadBanner();
    }
  }

  Future<void> _loadBanner() async {
    if (_isLoading || _bannerAd != null) return;
    _isLoading = true;

    // Ekran genişliğine göre adaptive banner boyutu hesapla
    final width = MediaQuery.of(context).size.width.truncate();
    final adSize = await AdSize.getLargeAnchoredAdaptiveBannerAdSize(width);

    // Adaptive boyut alınamazsa standart banner kullan
    final size = adSize ?? AdSize.banner;

    final ad = BannerAd(
      adUnitId: AdConfig.bannerAdUnitId(widget.placement),
      size: size,
      request: AdService.instance.adRequest,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          if (mounted) {
            setState(() {
              _bannerAd = ad as BannerAd;
              _adSize = size;
              _isLoaded = true;
              _isLoading = false;
            });
          } else {
            ad.dispose();
          }
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint('Banner yükleme hatası: $error');
          _isLoading = false;
          ad.dispose();
        },
      ),
    );
    await ad.load();
  }

  @override
  void dispose() {
    AdService.instance.adsReady.removeListener(_onAdsReady);
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isLoaded || _bannerAd == null || _adSize == null) {
      // Reklam yüklenene kadar sistem navigation bar yüksekliği kadar boşluk bırak
      return SizedBox(height: MediaQuery.of(context).padding.bottom);
    }

    return SafeArea(
      top: false,
      // Gesture navigation bar + banner'ı içine al
      child: SizedBox(
        width: _adSize!.width.toDouble(),
        height: _adSize!.height.toDouble(),
        child: AdWidget(ad: _bannerAd!),
      ),
    );
  }
}
