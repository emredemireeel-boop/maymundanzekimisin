import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zihin_tuzaklari/l10n/app_text.dart';
import 'package:confetti/confetti.dart';
import 'package:zihin_tuzaklari/config/app_colors.dart';
import 'package:zihin_tuzaklari/screens/home_screen.dart';
import 'package:zihin_tuzaklari/screens/multiplayer_setup_screen.dart';

class MultiplayerResultScreen extends StatefulWidget {
  final List<String> playerNames;
  final List<int> scores;
  final List<List<int>>
  cumulativeScores; // [questionIndex][playerIndex] = cumulative score

  const MultiplayerResultScreen({
    super.key,
    required this.playerNames,
    required this.scores,
    required this.cumulativeScores,
  });

  @override
  State<MultiplayerResultScreen> createState() =>
      _MultiplayerResultScreenState();
}

class _MultiplayerResultScreenState extends State<MultiplayerResultScreen> {
  late ConfettiController _confettiController;

  static const List<Color> playerColors = [
    Color(0xFF6366F1),
    Color(0xFFFF6B35),
    Color(0xFF10B981),
    Color(0xFFF59E0B),
    Color(0xFFEC4899),
    Color(0xFF8B5CF6),
    Color(0xFF14B8A6),
    Color(0xFFEF4444),
    Color(0xFF3B82F6),
    Color(0xFFA855F7),
  ];

  static const List<String> emojis = [
    '🧠',
    '🐒',
    '🦊',
    '🐸',
    '🦁',
    '🐼',
    '🦄',
    '🐯',
    '🐺',
    '🦅',
  ];

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(
      duration: const Duration(seconds: 4),
    );
    Future.delayed(const Duration(milliseconds: 500), () {
      _confettiController.play();
    });
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  List<int> get _rankedIndices {
    final indices = List.generate(widget.playerNames.length, (i) => i);
    indices.sort((a, b) => widget.scores[b].compareTo(widget.scores[a]));
    return indices;
  }

  @override
  Widget build(BuildContext context) {
    final ranked = _rankedIndices;
    final maxScore = widget.scores.isEmpty ? 0 : widget.scores.reduce(max);

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
        backgroundColor: const Color(0xFFF8F9FF),
        body: Stack(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 8),

                    // ── Trophy header ──
                    const AppText('🏆', style: TextStyle(fontSize: 56)),
                    const SizedBox(height: 12),
                    AppText(
                      'Oyun Bitti!',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 4),
                    if (ranked.isNotEmpty)
                      AppText(
                        '${emojis[ranked[0] % emojis.length]} ${widget.playerNames[ranked[0]]} kazandı!',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: playerColors[ranked[0] % playerColors.length],
                        ),
                      ),

                    const SizedBox(height: 28),

                    // ── Line Chart ──
                    AppText(
                      '📈 Puan Gelişimi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      height: 260,
                      padding: const EdgeInsets.fromLTRB(12, 16, 16, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                          color: AppColors.divider.withValues(alpha: 0.4),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.04),
                            blurRadius: 16,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: CustomPaint(
                        size: Size.infinite,
                        painter: _LineChartPainter(
                          cumulativeScores: widget.cumulativeScores,
                          playerCount: widget.playerNames.length,
                          maxScore: maxScore > 0 ? maxScore : 10,
                          colors: playerColors,
                        ),
                      ),
                    ),

                    // ── Chart Legend ──
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 12,
                      runSpacing: 6,
                      alignment: WrapAlignment.center,
                      children: List.generate(widget.playerNames.length, (i) {
                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 14,
                              height: 4,
                              decoration: BoxDecoration(
                                color: playerColors[i % playerColors.length],
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            const SizedBox(width: 4),
                            AppText(
                              widget.playerNames[i],
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        );
                      }),
                    ),

                    const SizedBox(height: 28),

                    // ── Rankings ──
                    AppText(
                      '🏅 Sıralama',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ...List.generate(ranked.length, (rankPos) {
                      final playerIdx = ranked[rankPos];
                      final score = widget.scores[playerIdx];
                      final name = widget.playerNames[playerIdx];
                      final color =
                          playerColors[playerIdx % playerColors.length];
                      final emoji = emojis[playerIdx % emojis.length];
                      final medal = rankPos == 0
                          ? '🥇'
                          : rankPos == 1
                          ? '🥈'
                          : rankPos == 2
                          ? '🥉'
                          : '${rankPos + 1}.';

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            gradient: rankPos == 0
                                ? LinearGradient(
                                    colors: [
                                      color.withValues(alpha: 0.08),
                                      color.withValues(alpha: 0.02),
                                    ],
                                  )
                                : null,
                            color: rankPos == 0 ? null : Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                              color: rankPos == 0
                                  ? color.withValues(alpha: 0.3)
                                  : AppColors.divider.withValues(alpha: 0.4),
                              width: rankPos == 0 ? 2 : 1,
                            ),
                            boxShadow: [
                              if (rankPos == 0)
                                BoxShadow(
                                  color: color.withValues(alpha: 0.15),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                            ],
                          ),
                          child: Row(
                            children: [
                              // Medal / Rank
                              SizedBox(
                                width: 36,
                                child: AppText(
                                  medal,
                                  style: TextStyle(
                                    fontSize: rankPos < 3 ? 22 : 16,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textPrimary,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(width: 10),
                              // Emoji
                              AppText(emoji, style: const TextStyle(fontSize: 28)),
                              const SizedBox(width: 12),
                              // Name
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText(
                                      name,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                    if (rankPos == 0)
                                      AppText(
                                        '🔥 Birinci!',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                          color: color,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              // Score
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: color.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: AppText(
                                  '$score',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: color,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),

                    const SizedBox(height: 28),

                    // ── Tekrar Oyna ──
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const MultiplayerSetupScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF10B981), Color(0xFF059669)],
                          ),
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(
                                0xFF10B981,
                              ).withValues(alpha: 0.35),
                              blurRadius: 14,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.replay_rounded,
                              color: Colors.white,
                              size: 22,
                            ),
                            const SizedBox(width: 10),
                            AppText(
                              'Tekrar Oyna',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // ── Ana Menüye Dön ──
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => const HomeScreen()),
                          (_) => false,
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          gradient: AppColors.primaryGradient,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary.withValues(alpha: 0.3),
                              blurRadius: 14,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.home_rounded,
                              color: Colors.white,
                              size: 22,
                            ),
                            const SizedBox(width: 10),
                            AppText(
                              'Ana Menüye Dön',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
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

/// Custom painter for line chart showing cumulative scores per question
class _LineChartPainter extends CustomPainter {
  final List<List<int>> cumulativeScores; // [qIndex][playerIndex]
  final int playerCount;
  final int maxScore;
  final List<Color> colors;

  _LineChartPainter({
    required this.cumulativeScores,
    required this.playerCount,
    required this.maxScore,
    required this.colors,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (cumulativeScores.isEmpty) return;

    final questionCount = cumulativeScores.length;
    final leftPad = 32.0;
    final bottomPad = 24.0;
    final topPad = 8.0;
    final rightPad = 8.0;

    final chartW = size.width - leftPad - rightPad;
    final chartH = size.height - topPad - bottomPad;

    // Draw grid lines
    final gridPaint = Paint()
      ..color = const Color(0xFFE5E7EB)
      ..strokeWidth = 0.7;

    const gridCount = 4;
    for (int i = 0; i <= gridCount; i++) {
      final y = topPad + chartH * (1 - i / gridCount);
      canvas.drawLine(
        Offset(leftPad, y),
        Offset(leftPad + chartW, y),
        gridPaint,
      );

      // Y-axis labels
      final label = ((maxScore * i) / gridCount).round().toString();
      final tp = TextPainter(
        text: TextSpan(
          text: label,
          style: TextStyle(fontSize: 9, color: Colors.grey.shade500),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      tp.paint(canvas, Offset(leftPad - tp.width - 4, y - tp.height / 2));
    }

    // X-axis labels
    for (int q = 0; q < questionCount; q++) {
      final x =
          leftPad + (chartW * q / (questionCount - 1).clamp(1, questionCount));
      if (q % max(1, questionCount ~/ 10) == 0 || q == questionCount - 1) {
        final tp = TextPainter(
          text: TextSpan(
            text: '${q + 1}',
            style: TextStyle(fontSize: 9, color: Colors.grey.shade500),
          ),
          textDirection: TextDirection.ltr,
        )..layout();
        tp.paint(canvas, Offset(x - tp.width / 2, topPad + chartH + 6));
      }
    }

    // Draw lines for each player
    for (int p = 0; p < playerCount; p++) {
      final paint = Paint()
        ..color = colors[p % colors.length]
        ..strokeWidth = 2.5
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..strokeJoin = StrokeJoin.round;

      final dotPaint = Paint()..color = colors[p % colors.length];

      final dotOutlinePaint = Paint()
        ..color = Colors.white
        ..style = PaintingStyle.fill;

      final path = Path();

      for (int q = 0; q < questionCount; q++) {
        final x =
            leftPad +
            (chartW * q / (questionCount - 1).clamp(1, questionCount));
        final yVal = cumulativeScores[q][p] / maxScore;
        final y = topPad + chartH * (1 - yVal.clamp(0.0, 1.0));

        if (q == 0) {
          path.moveTo(x, y);
        } else {
          path.lineTo(x, y);
        }
      }

      canvas.drawPath(path, paint);

      // Draw dots
      for (int q = 0; q < questionCount; q++) {
        final x =
            leftPad +
            (chartW * q / (questionCount - 1).clamp(1, questionCount));
        final yVal = cumulativeScores[q][p] / maxScore;
        final y = topPad + chartH * (1 - yVal.clamp(0.0, 1.0));

        canvas.drawCircle(Offset(x, y), 4, dotOutlinePaint);
        canvas.drawCircle(Offset(x, y), 3, dotPaint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
