import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zihin_tuzaklari/config/app_colors.dart';
import 'package:zihin_tuzaklari/data/question_bank.dart';
import 'package:zihin_tuzaklari/models/game_state.dart';
import 'package:zihin_tuzaklari/models/question_model.dart';
import 'package:zihin_tuzaklari/screens/quiz_screen.dart';
import 'package:zihin_tuzaklari/screens/settings_screen.dart';
import 'package:zihin_tuzaklari/screens/multiplayer_setup_screen.dart';
import 'package:zihin_tuzaklari/screens/cognitive_profile_screen.dart';
import 'package:zihin_tuzaklari/services/ad_service.dart';
import 'package:zihin_tuzaklari/widgets/banner_ad_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _staggerController;
  late AnimationController _glowController;
  late AnimationController _bounceController;

  late Animation<double> _headerFade;
  late Animation<Offset> _headerSlide;
  late Animation<double> _battleFade;
  late Animation<Offset> _battleSlide;
  late Animation<double> _btnFade;
  late Animation<Offset> _btnSlide;
  late Animation<double> _glowAnim;
  late Animation<double> _bounceAnim;

  @override
  void initState() {
    super.initState();

    _staggerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _headerFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _staggerController,
        curve: const Interval(0.0, 0.35, curve: Curves.easeOut),
      ),
    );
    _headerSlide =
        Tween<Offset>(begin: const Offset(0, -0.15), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _staggerController,
            curve: const Interval(0.0, 0.4, curve: Curves.easeOutCubic),
          ),
        );

    _battleFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _staggerController,
        curve: const Interval(0.2, 0.55, curve: Curves.easeOut),
      ),
    );
    _battleSlide = Tween<Offset>(begin: const Offset(0, 0.12), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _staggerController,
            curve: const Interval(0.2, 0.6, curve: Curves.easeOutCubic),
          ),
        );

    _btnFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _staggerController,
        curve: const Interval(0.45, 0.75, curve: Curves.easeOut),
      ),
    );
    _btnSlide = Tween<Offset>(begin: const Offset(0, 0.1), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _staggerController,
            curve: const Interval(0.45, 0.8, curve: Curves.easeOutCubic),
          ),
        );

    // Glow pulse for play button
    _glowController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);
    _glowAnim = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _glowController, curve: Curves.easeInOut),
    );

    // Bounce for monkey/human emojis
    _bounceController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);
    _bounceAnim = Tween<double>(begin: -4, end: 4).animate(
      CurvedAnimation(parent: _bounceController, curve: Curves.easeInOut),
    );

    _staggerController.forward();
  }

  @override
  void dispose() {
    _staggerController.dispose();
    _glowController.dispose();
    _bounceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final game = context.watch<GameState>();
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: const BannerAdWidget(),
      body: Stack(
        children: [
          _GradientBackground(screenWidth: screenWidth),

          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── Hero Header ──
                  SlideTransition(
                    position: _headerSlide,
                    child: FadeTransition(
                      opacity: _headerFade,
                      child: _buildHeroHeader(game),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // ── Battle Card ──
                  SlideTransition(
                    position: _battleSlide,
                    child: FadeTransition(
                      opacity: _battleFade,
                      child: _buildBattleCard(game),
                    ),
                  ),
                  const SizedBox(height: 28),

                  // ── Primary Actions ──
                  SlideTransition(
                    position: _btnSlide,
                    child: FadeTransition(
                      opacity: _btnFade,
                      child: _buildPrimaryActions(game),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════
  // ── HERO HEADER ──
  // ═══════════════════════════════════════════════════════════════════════
  Widget _buildHeroHeader(GameState game) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              // Logo
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.glowIndigo.withValues(alpha: 0.25),
                      blurRadius: 16,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 52,
                    height: 52,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MaymunLab 🐒',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                        color: AppColors.textPrimary,
                        height: 1.2,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Zihin düellosuna hazırlan!',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        _QuickIconButton(
          icon: Icons.settings_rounded,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SettingsScreen()),
          ),
        ),
      ],
    );
  }

  // ═══════════════════════════════════════════════════════════════════════
  // ── BATTLE CARD ──
  // ═══════════════════════════════════════════════════════════════════════
  Widget _buildBattleCard(GameState game) {
    // Overall human win rate from history
    final totalGames = game.gamesPlayed;
    final humanWins = game.history.where((r) => r.correct > r.wrong).length;
    final monkeyWins = totalGames - humanWins;

    return ClipRRect(
      borderRadius: BorderRadius.circular(28),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF1E1B4B), Color(0xFF2D1B69), Color(0xFF1E1B4B)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 0.5, 1.0],
            ),
            borderRadius: BorderRadius.circular(28),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.12),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF4338CA).withValues(alpha: 0.4),
                blurRadius: 40,
                offset: const Offset(0, 16),
              ),
            ],
          ),
          child: Stack(
            children: [
              // Background star dots
              Positioned.fill(child: _StarField()),

              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    // ── Title ──
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.12),
                        ),
                      ),
                      child: Text(
                        '⚔️  BÜYÜK REKABET  ⚔️',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.white.withValues(alpha: 0.7),
                          letterSpacing: 2,
                        ),
                      ),
                    ),

                    const SizedBox(height: 28),

                    // ── VS Row ──
                    Row(
                      children: [
                        // ── Monkey ──
                        Expanded(
                          child: Column(
                            children: [
                              AnimatedBuilder(
                                animation: _bounceAnim,
                                builder: (_, child) => Transform.translate(
                                  offset: Offset(0, _bounceAnim.value),
                                  child: child,
                                ),
                                child: const Text(
                                  '🐒',
                                  style: TextStyle(fontSize: 56),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                '$monkeyWins',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900,
                                  color: const Color(0xFFFF9A3C),
                                  height: 1.0,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Maymun',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white.withValues(alpha: 0.7),
                                ),
                              ),
                              const SizedBox(height: 6),
                              _WinBadge(
                                isLeading: monkeyWins > humanWins,
                                label: monkeyWins > humanWins
                                    ? '🔥 ÖNDE'
                                    : (monkeyWins == humanWins
                                          ? '🤝 BERAER'
                                          : 'Geride'),
                                color: monkeyWins > humanWins
                                    ? const Color(0xFFFF9A3C)
                                    : Colors.white30,
                              ),
                            ],
                          ),
                        ),

                        // ── VS Center ──
                        Column(
                          children: [
                            Container(
                              width: 52,
                              height: 52,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFFF6B35),
                                    Color(0xFF9333EA),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(
                                      0xFF9333EA,
                                    ).withValues(alpha: 0.5),
                                    blurRadius: 16,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'VS',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '$totalGames oyun',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white.withValues(alpha: 0.45),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),

                        // ── Human ──
                        Expanded(
                          child: Column(
                            children: [
                              AnimatedBuilder(
                                animation: _bounceAnim,
                                builder: (_, child) => Transform.translate(
                                  offset: Offset(
                                    0,
                                    -_bounceAnim.value,
                                  ), // opposite phase
                                  child: child,
                                ),
                                child: const Text(
                                  '🧠',
                                  style: TextStyle(fontSize: 56),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                '$humanWins',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900,
                                  color: const Color(0xFF818CF8),
                                  height: 1.0,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'İnsan',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white.withValues(alpha: 0.7),
                                ),
                              ),
                              const SizedBox(height: 6),
                              _WinBadge(
                                isLeading: humanWins > monkeyWins,
                                label: humanWins > monkeyWins
                                    ? '🔥 ÖNDE'
                                    : (humanWins == monkeyWins
                                          ? '🤝 BERAER'
                                          : 'Geride'),
                                color: humanWins > monkeyWins
                                    ? const Color(0xFF818CF8)
                                    : Colors.white30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // ── Progress bar (human win rate) ──
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '🐒 Maymun',
                              style: TextStyle(
                                fontSize: 11,
                                color: const Color(0xFFFF9A3C),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              totalGames > 0
                                  ? '${((humanWins / totalGames) * 100).toStringAsFixed(0)}% İnsan'
                                  : 'İlk oyunu oyna!',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white.withValues(alpha: 0.5),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'İnsan 🧠',
                              style: TextStyle(
                                fontSize: 11,
                                color: const Color(0xFF818CF8),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            children: [
                              // Full orange (monkey)
                              Container(
                                height: 10,
                                decoration: BoxDecoration(
                                  color: const Color(
                                    0xFFFF9A3C,
                                  ).withValues(alpha: 0.3),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              // Indigo fill (human)
                              if (totalGames > 0)
                                FractionallySizedBox(
                                  widthFactor: (humanWins / totalGames).clamp(
                                    0.0,
                                    1.0,
                                  ),
                                  child: Container(
                                    height: 10,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFF6366F1),
                                          Color(0xFF818CF8),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(
                                            0xFF6366F1,
                                          ).withValues(alpha: 0.5),
                                          blurRadius: 6,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          totalGames == 0
                              ? 'Henüz oyun yok — başlat ve meydan oku!'
                              : humanWins > monkeyWins
                              ? '🏆 İnsan önde! Maymuna şans tanıma!'
                              : monkeyWins > humanWins
                              ? '😤 Maymun kazanıyor! Daha iyi yap!'
                              : '⚖️ Beraberlik! Kim kazanacak?',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withValues(alpha: 0.55),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════
  // ── PRIMARY ACTIONS ──
  // ═══════════════════════════════════════════════════════════════════════
  Widget _buildPrimaryActions(GameState game) {
    return Column(
      children: [
        // ── Yeni Oyun ──
        AnimatedBuilder(
          animation: _glowAnim,
          builder: (context, child) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.glowOrange.withValues(
                      alpha: 0.3 * _glowAnim.value,
                    ),
                    blurRadius: 24 * _glowAnim.value,
                    spreadRadius: 2 * _glowAnim.value,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: child,
            );
          },
          child: _PrimaryActionButton(
            icon: Icons.play_arrow_rounded,
            title: '🐒 Maymuna Meydan Oku!',
            subtitle: 'Yeni soru seti ile başla',
            gradient: AppColors.playButtonGradient,
            onTap: () => _startNewGame(context),
          ),
        ),

        const SizedBox(height: 14),

        // ── Devam Et ──
        AnimatedOpacity(
          opacity: game.hasSavedGame ? 1.0 : 0.45,
          duration: const Duration(milliseconds: 400),
          child: _PrimaryActionButton(
            icon: Icons.play_circle_outline_rounded,
            title: 'Kaldığın Yerden Devam Et',
            subtitle: game.hasSavedGame
                ? '📌 Kayıtlı oyun bulundu'
                : 'Kayıtlı oyun bulunamadı',
            gradient: AppColors.resumeButtonGradient,
            onTap: game.hasSavedGame ? () => _resumeGame(context) : null,
          ),
        ),

        const SizedBox(height: 14),

        // ── Günün Zihin Düellosu ──
        _PrimaryActionButton(
          icon: Icons.science_rounded,
          title: '🧬 Günün Zihin Düellosu',
          subtitle: '6 bilişsel alan • günlük seri: ${game.dailyStreak}',
          gradient: const LinearGradient(
            colors: [Color(0xFF7C3AED), Color(0xFF4F46E5)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          onTap: () => _startDailyChallenge(context),
        ),

        const SizedBox(height: 14),

        _PrimaryActionButton(
          icon: Icons.insights_rounded,
          title: 'Zihin DNA’m',
          subtitle: 'Karar örüntülerini ve güçlü alanlarını gör',
          gradient: const LinearGradient(
            colors: [Color(0xFF0F766E), Color(0xFF0891B2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const CognitiveProfileScreen(),
            ),
          ),
        ),

        const SizedBox(height: 14),

        // ── 🎮 Arkadaşlarınla Oyna ──
        _PrimaryActionButton(
          icon: Icons.people_rounded,
          title: '🎮 Arkadaşlarınla Oyna',
          subtitle: '2-10 kişi ile yarışın!',
          gradient: const LinearGradient(
            colors: [Color(0xFF10B981), Color(0xFF059669), Color(0xFF047857)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const MultiplayerSetupScreen()),
          ),
        ),
      ],
    );
  }

  // ── Helpers ──
  void _startNewGame(BuildContext context) {
    final game = context.read<GameState>();
    final unsolvedQuestions = QuestionBank.getUnsolvedQuestions(
      game.solvedQuestions,
    );

    if (unsolvedQuestions.isEmpty) {
      _showAllCompletedDialog(context);
      return;
    }

    AdService.instance.resetForNewGame();
    game.startGame(unsolvedQuestions);
    setState(() {});
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const QuizScreen()),
    );
  }

  void _startDailyChallenge(BuildContext context) {
    final game = context.read<GameState>();
    final allQuestions = QuestionBank.getAllQuestions();
    final now = DateTime.now();
    final seed = now.year * 10000 + now.month * 100 + now.day;
    final dailyQuestions = QuestionCategory.values.map((category) {
      final candidates = allQuestions
          .where((question) => question.category == category)
          .toList();
      return candidates[seed % candidates.length];
    }).toList();

    AdService.instance.resetForNewGame();
    game.startDailyChallenge(dailyQuestions);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const QuizScreen()),
    );
  }

  void _showAllCompletedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: const Color(0xFF1E1B4B),
        title: const Row(
          children: [
            Text('🐒', style: TextStyle(fontSize: 28)),
            SizedBox(width: 8),
            Text('Tebrikler!', style: TextStyle(color: Colors.white)),
          ],
        ),
        content: const Text(
          'Tüm soruları bitirdiniz! Komik maymunlar daha fazla soru üretirken güncellemeyi beklemede kal :)',
          style: TextStyle(color: Colors.white70, fontSize: 16),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text(
              'Tamam, Bekliyorum!',
              style: TextStyle(
                color: Color(0xFFFF9A3C),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _resumeGame(BuildContext context) async {
    final game = context.read<GameState>();
    final allQuestions = QuestionBank.getAllQuestions();
    final success = await game.resumeGame(allQuestions);
    if (success && context.mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const QuizScreen()),
      );
    }
  }
}

// ══════════════════════════════════════════════════════════════════════════
// ── WIN BADGE ──
// ══════════════════════════════════════════════════════════════════════════
class _WinBadge extends StatelessWidget {
  final bool isLeading;
  final String label;
  final Color color;
  const _WinBadge({
    required this.isLeading,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: color,
        ),
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════
// ── STAR FIELD (decorative) ──
// ══════════════════════════════════════════════════════════════════════════
class _StarField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: _StarPainter());
  }
}

class _StarPainter extends CustomPainter {
  final _rng = math.Random(42);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white.withValues(alpha: 0.12);
    for (int i = 0; i < 30; i++) {
      final x = _rng.nextDouble() * size.width;
      final y = _rng.nextDouble() * size.height;
      final r = _rng.nextDouble() * 1.5 + 0.5;
      canvas.drawCircle(Offset(x, y), r, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter old) => false;
}

// ══════════════════════════════════════════════════════════════════════════
// ── GRADIENT BACKGROUND ──
// ══════════════════════════════════════════════════════════════════════════
class _GradientBackground extends StatelessWidget {
  final double screenWidth;
  const _GradientBackground({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF8F9FF),
              Color(0xFFF3EEFF),
              Color(0xFFFFF8F5),
              Color(0xFFF5F7FF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.3, 0.7, 1.0],
          ),
        ),
        child: CustomPaint(
          painter: _BlobPainter(screenWidth: screenWidth),
          size: Size.infinite,
        ),
      ),
    );
  }
}

class _BlobPainter extends CustomPainter {
  final double screenWidth;
  _BlobPainter({required this.screenWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()
      ..color = const Color(0xFF6366F1).withValues(alpha: 0.06)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 60);
    canvas.drawCircle(
      Offset(size.width * 0.85, size.height * 0.08),
      screenWidth * 0.45,
      paint1,
    );

    final paint2 = Paint()
      ..color = const Color(0xFFFF6B35).withValues(alpha: 0.04)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 50);
    canvas.drawCircle(
      Offset(size.width * 0.1, size.height * 0.45),
      screenWidth * 0.35,
      paint2,
    );

    final paint3 = Paint()
      ..color = const Color(0xFF26A69A).withValues(alpha: 0.04)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 40);
    canvas.drawCircle(
      Offset(size.width * 0.7, size.height * 0.85),
      screenWidth * 0.3,
      paint3,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// ══════════════════════════════════════════════════════════════════════════
// ── QUICK ICON BUTTON ──
// ══════════════════════════════════════════════════════════════════════════
class _QuickIconButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onTap;
  const _QuickIconButton({required this.icon, required this.onTap});
  @override
  State<_QuickIconButton> createState() => _QuickIconButtonState();
}

class _QuickIconButtonState extends State<_QuickIconButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _scaleCtrl;

  @override
  void initState() {
    super.initState();
    _scaleCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      lowerBound: 0.9,
      upperBound: 1.0,
      value: 1.0,
    );
  }

  @override
  void dispose() {
    _scaleCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _scaleCtrl.reverse(),
      onTapUp: (_) {
        _scaleCtrl.forward();
        widget.onTap();
      },
      onTapCancel: () => _scaleCtrl.forward(),
      child: ScaleTransition(
        scale: _scaleCtrl,
        child: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.85),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.divider.withValues(alpha: 0.5)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Icon(widget.icon, color: AppColors.primary, size: 20),
        ),
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════
// ── PRIMARY ACTION BUTTON ──
// ══════════════════════════════════════════════════════════════════════════
class _PrimaryActionButton extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final LinearGradient gradient;
  final VoidCallback? onTap;

  const _PrimaryActionButton({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.gradient,
    this.onTap,
  });

  @override
  State<_PrimaryActionButton> createState() => _PrimaryActionButtonState();
}

class _PrimaryActionButtonState extends State<_PrimaryActionButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _pressCtrl;

  @override
  void initState() {
    super.initState();
    _pressCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
      lowerBound: 0.96,
      upperBound: 1.0,
      value: 1.0,
    );
  }

  @override
  void dispose() {
    _pressCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        if (widget.onTap != null) _pressCtrl.reverse();
      },
      onTapUp: (_) {
        _pressCtrl.forward();
        widget.onTap?.call();
      },
      onTapCancel: () => _pressCtrl.forward(),
      child: ScaleTransition(
        scale: _pressCtrl,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: widget.gradient,
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                color: widget.gradient.colors.first.withValues(alpha: 0.3),
                blurRadius: 16,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(widget.icon, color: Colors.white, size: 28),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      widget.subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withValues(alpha: 0.85),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white.withValues(alpha: 0.7),
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
