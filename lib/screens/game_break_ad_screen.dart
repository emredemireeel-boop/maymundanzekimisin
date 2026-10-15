import 'package:flutter/material.dart';
import 'package:zihin_tuzaklari/l10n/app_text.dart';
import 'package:zihin_tuzaklari/services/ad_service.dart';

/// A short pause after the last answer prevents a full-screen ad from
/// appearing directly under the player's last tap.
class GameBreakAdScreen extends StatefulWidget {
  const GameBreakAdScreen({super.key, required this.resultBuilder});

  final WidgetBuilder resultBuilder;

  @override
  State<GameBreakAdScreen> createState() => _GameBreakAdScreenState();
}

class _GameBreakAdScreenState extends State<GameBreakAdScreen> {
  bool _finished = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 800), () {
      if (!mounted) return;
      AdService.instance.showInterstitialAtBreak(onComplete: _openResults);
    });
  }

  void _openResults() {
    if (!mounted || _finished) return;
    _finished = true;
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: widget.resultBuilder));
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: const Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 20),
              AppText('Sonuçlar hazırlanıyor…'),
            ],
          ),
        ),
      ),
    );
  }
}
