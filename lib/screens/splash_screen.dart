import 'package:flutter/material.dart';
import 'package:zihin_tuzaklari/l10n/app_text.dart';
import 'package:zihin_tuzaklari/config/app_colors.dart';
import 'package:zihin_tuzaklari/screens/home_screen.dart';
import 'package:zihin_tuzaklari/services/ad_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _mainController;
  late AnimationController _pulseController;
  late Animation<double> _fadeIn;
  late Animation<double> _scale;
  late Animation<Offset> _slideUp;
  late Animation<double> _pulse;

  @override
  void initState() {
    super.initState();

    _mainController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);

    _fadeIn = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _mainController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
      ),
    );

    _scale = Tween<double>(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: _mainController,
        curve: const Interval(0.0, 0.6, curve: Curves.elasticOut),
      ),
    );

    _slideUp = Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _mainController,
            curve: const Interval(0.3, 0.8, curve: Curves.easeOut),
          ),
        );

    _pulse = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _mainController.forward();

    // Splash animasyonu tamamlanınca App Open reklamı göster,
    // reklam kapandıktan (veya hazır değilse hemen) sonra HomeScreen'e geç.
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (!mounted) return;
      AdService.instance.showAppOpenAd(
        onComplete: () {
          if (!mounted) return;
          Navigator.of(context).pushReplacement(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const HomeScreen(),
              transitionsBuilder: (context, anim, secondaryAnimation, child) =>
                  FadeTransition(opacity: anim, child: child),
              transitionDuration: const Duration(milliseconds: 800),
            ),
          );
        },
      );
    });
  }

  @override
  void dispose() {
    _mainController.dispose();
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(gradient: AppColors.splashGradient),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ── Logo ──
              AnimatedBuilder(
                animation: Listenable.merge([
                  _mainController,
                  _pulseController,
                ]),
                builder: (context, _) => FadeTransition(
                  opacity: _fadeIn,
                  child: ScaleTransition(
                    scale: _scale,
                    child: ScaleTransition(
                      scale: _pulse,
                      child: Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyanAccent.withValues(alpha: 0.3),
                              blurRadius: 40,
                              spreadRadius: 10,
                            ),
                            BoxShadow(
                              color: Colors.orangeAccent.withValues(alpha: 0.2),
                              blurRadius: 60,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/logo.png',
                            width: 180,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // ── Başlık ──
              SlideTransition(
                position: _slideUp,
                child: FadeTransition(
                  opacity: _fadeIn,
                  child: Column(
                    children: [
                      AppText(
                        'MAYMUNDAN',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          letterSpacing: 3,
                        ),
                      ),
                      AppText(
                        'ZEKİ MİSİN?',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          letterSpacing: 3,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 60,
                        height: 3,
                        decoration: BoxDecoration(
                          color: AppColors.amber,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(height: 16),
                      AppText(
                        'Zekânı Test Et!',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withValues(alpha: 0.85),
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 80),

              // ── Loading ──
              FadeTransition(
                opacity: _fadeIn,
                child: SizedBox(
                  width: 28,
                  height: 28,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.white.withValues(alpha: 0.6),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
