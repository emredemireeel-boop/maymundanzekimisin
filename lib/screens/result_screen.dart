import 'dart:math';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:provider/provider.dart';
import 'package:zihin_tuzaklari/config/app_colors.dart';
import 'package:zihin_tuzaklari/models/game_state.dart';
import 'package:zihin_tuzaklari/models/question_model.dart';
import 'package:zihin_tuzaklari/data/question_bank.dart';
import 'package:zihin_tuzaklari/screens/home_screen.dart';
import 'package:zihin_tuzaklari/screens/quiz_screen.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(
      duration: const Duration(seconds: 3),
    );
    Future.delayed(const Duration(milliseconds: 400), () {
      _confettiController.play();
    });
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void _startNewGame(BuildContext context) {
    final game = context.read<GameState>();
    final unsolvedQuestions = QuestionBank.getUnsolvedQuestions(
      game.solvedQuestions,
    );
    game.startGame(unsolvedQuestions);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const QuizScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final game = context.read<GameState>();
    final level = game.iqLevel;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const HomeScreen()),
          (_) => false,
        );
      },
      child: Scaffold(
        body: Stack(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(
                  24,
                  16,
                  24,
                  // Gesture navigation bar + ekstra alt boşluk
                  MediaQuery.of(context).padding.bottom + 24,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),

                    // ── IQ Seviyesi ──
                    Text(level.emoji, style: const TextStyle(fontSize: 64)),
                    const SizedBox(height: 16),
                    Text(
                      level.title,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      level.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.textSecondary,
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 24),

                    // ── Puan Kartı ──
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        gradient: AppColors.primaryGradient,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primary.withValues(alpha: 0.3),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Zeka Puanı',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withValues(alpha: 0.8),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '${game.totalScore}',
                                style: TextStyle(
                                  fontSize: 56,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: Text(
                                  ' / 200',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white.withValues(alpha: 0.7),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _StatBubble(
                                label: 'Doğru',
                                value: '${game.correctCount}',
                                color: AppColors.correct,
                              ),
                              _StatBubble(
                                label: 'Yanlış',
                                value: '${game.wrongCount}',
                                color: AppColors.wrong,
                              ),
                              _StatBubble(
                                label: 'Toplam',
                                value: '${game.questionCount}',
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 32),

                    // ── Radar Grafik ──
                    Text(
                      'Kategori Analizi',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 16),

                    SizedBox(
                      height: 260,
                      child: CustomPaint(
                        size: const Size(260, 260),
                        painter: _RadarChartPainter(game),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // ── Kategori Detayları ──
                    ...QuestionCategory.values.map((cat) {
                      final pct = game.getCategoryPercentage(cat);
                      final solved = game.categorySolved[cat] ?? 0;
                      final correct = game.categoryCorrect[cat] ?? 0;
                      final comment = game.getCategoryComment(cat);

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.surface,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: AppColors.divider.withValues(alpha: 0.5),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${cat.icon} ${cat.title}',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                  Text(
                                    '${(pct * 100).toInt()}%',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: pct >= 0.7
                                          ? AppColors.correct
                                          : pct >= 0.4
                                          ? AppColors.amber
                                          : AppColors.wrong,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: LinearProgressIndicator(
                                  value: pct,
                                  minHeight: 6,
                                  backgroundColor: AppColors.divider,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    pct >= 0.7
                                        ? AppColors.correct
                                        : pct >= 0.4
                                        ? AppColors.amber
                                        : AppColors.wrong,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '$correct/$solved doğru • $comment',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.textSecondary,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),

                    const SizedBox(height: 24),

                    // ── Yeni Oyuna Başla ──
                    SizedBox(
                      width: double.infinity,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFFFF9800), Color(0xFFFF5722)],
                          ),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(
                                0xFFFF9800,
                              ).withValues(alpha: 0.35),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () => _startNewGame(context),
                          icon: const Icon(Icons.replay_rounded, size: 22),
                          label: Text(
                            'Yeni Oyuna Başla',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // ── Ana Menüye Dön ──
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const HomeScreen(),
                            ),
                            (_) => false,
                          );
                        },
                        icon: const Icon(Icons.home_rounded),
                        label: Text(
                          'Ana Menüye Dön',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),

            // ── Konfeti ──
            Align(
              alignment: Alignment.topCenter,
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirectionality: BlastDirectionality.explosive,
                numberOfParticles: 30,
                maxBlastForce: 15,
                minBlastForce: 5,
                gravity: 0.2,
                colors: const [
                  AppColors.primary,
                  AppColors.accent,
                  AppColors.amber,
                  AppColors.correct,
                  AppColors.categoryLogic,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatBubble extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _StatBubble({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: color,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.white.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}

/// Radar / Spider Chart Painter
class _RadarChartPainter extends CustomPainter {
  final GameState game;
  _RadarChartPainter(this.game);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 30;
    final categories = QuestionCategory.values;
    final count = categories.length;
    final angle = 2 * pi / count;

    // Grid çizgileri
    final gridPaint = Paint()
      ..color = AppColors.divider
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8;

    for (int level = 1; level <= 4; level++) {
      final r = radius * level / 4;
      final path = Path();
      for (int i = 0; i <= count; i++) {
        final a = -pi / 2 + angle * i;
        final point = Offset(center.dx + r * cos(a), center.dy + r * sin(a));
        if (i == 0) {
          path.moveTo(point.dx, point.dy);
        } else {
          path.lineTo(point.dx, point.dy);
        }
      }
      canvas.drawPath(path, gridPaint);
    }

    // Eksen çizgileri
    for (int i = 0; i < count; i++) {
      final a = -pi / 2 + angle * i;
      final end = Offset(
        center.dx + radius * cos(a),
        center.dy + radius * sin(a),
      );
      canvas.drawLine(center, end, gridPaint);
    }

    // Veri alanı
    final dataPath = Path();
    final dataPaint = Paint()
      ..color = AppColors.primary.withValues(alpha: 0.2)
      ..style = PaintingStyle.fill;
    final dataBorderPaint = Paint()
      ..color = AppColors.primary
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5;

    for (int i = 0; i <= count; i++) {
      final idx = i % count;
      final pct = game.getCategoryPercentage(categories[idx]);
      final r = radius * pct.clamp(0.05, 1.0);
      final a = -pi / 2 + angle * i;
      final point = Offset(center.dx + r * cos(a), center.dy + r * sin(a));
      if (i == 0) {
        dataPath.moveTo(point.dx, point.dy);
      } else {
        dataPath.lineTo(point.dx, point.dy);
      }
    }

    canvas.drawPath(dataPath, dataPaint);
    canvas.drawPath(dataPath, dataBorderPaint);

    // Nokta vurguları
    for (int i = 0; i < count; i++) {
      final pct = game.getCategoryPercentage(categories[i]);
      final r = radius * pct.clamp(0.05, 1.0);
      final a = -pi / 2 + angle * i;
      final point = Offset(center.dx + r * cos(a), center.dy + r * sin(a));

      canvas.drawCircle(point, 5, Paint()..color = Colors.white);
      canvas.drawCircle(point, 4, Paint()..color = AppColors.primary);
    }

    // Etiketler
    for (int i = 0; i < count; i++) {
      final a = -pi / 2 + angle * i;
      final labelRadius = radius + 20;
      final labelOffset = Offset(
        center.dx + labelRadius * cos(a),
        center.dy + labelRadius * sin(a),
      );

      final text = categories[i].icon;
      final tp = TextPainter(
        text: TextSpan(text: text, style: const TextStyle(fontSize: 18)),
        textDirection: TextDirection.ltr,
      )..layout();

      tp.paint(
        canvas,
        Offset(labelOffset.dx - tp.width / 2, labelOffset.dy - tp.height / 2),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
