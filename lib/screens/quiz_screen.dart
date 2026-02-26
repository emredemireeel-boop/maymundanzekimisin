import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zihin_tuzaklari/config/app_colors.dart';
import 'package:zihin_tuzaklari/models/game_state.dart';
import 'package:zihin_tuzaklari/models/question_model.dart';
import 'package:zihin_tuzaklari/screens/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with TickerProviderStateMixin {

  // ── Monkey vs Human scores (session) ──
  int _monkeyScore = 0;  // wrong answers
  int _humanScore  = 0;  // correct answers

  // ── Self-report state (after answer revealed) ──
  bool _answerRevealed = false;
  bool _selfReported   = false; // user pressed correct/wrong

  // ── Animasyonlar ──
  late AnimationController _cardController;
  late AnimationController _optionController;
  late Animation<double>   _cardFade;
  late Animation<Offset>   _cardSlide;

  // ── Score pulse animation ──
  late AnimationController _pulseController;

  @override
  void initState() {
    super.initState();

    _cardController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _optionController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _cardFade  = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _cardController, curve: Curves.easeOut),
    );
    _cardSlide = Tween<Offset>(begin: const Offset(0.05, 0), end: Offset.zero).animate(
      CurvedAnimation(parent: _cardController, curve: Curves.easeOutCubic),
    );

    _playEntrance();
  }

  void _playEntrance() {
    _cardController.forward(from: 0);
    _optionController.forward(from: 0);
  }

  void _resetPerQuestion() {
    _answerRevealed = false;
    _selfReported   = false;
  }

  @override
  void dispose() {
    _cardController.dispose();
    _optionController.dispose();
    _pulseController.dispose();
    super.dispose();
  }

  // ── Self-report: user says they got it right ──
  void _reportCorrect(GameState game, Question question) {
    _humanScore++;
    _selfReported = true;
    _pulseController.forward(from: 0);
    game.submitAnswer(question.correctIndex); // counts as correct in GameState
    setState(() {});
  }

  // ── Self-report: user says they got it wrong ──
  void _reportWrong(GameState game, Question question) {
    _monkeyScore++;
    _selfReported = true;
    _pulseController.forward(from: 0);
    // Submit wrong answer (index -1 forces wrong)
    game.submitAnswer(-1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final game     = context.watch<GameState>();
    final question = game.currentQuestion;

    if (question == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: const Color(0xFFF8F6FF),
        body: Stack(
          children: [
            _QuizBackground(),

            SafeArea(
              child: Column(
                children: [

                  // ═══════════════════════════════════════════════
                  // ── MONKEY VS HUMAN SCOREBOARD ──
                  // ═══════════════════════════════════════════════
                  _buildScoreboard(),

                  const SizedBox(height: 10),

                  // ═══════════════════════════════════════════════
                  // ── SCROLLABLE CONTENT ──
                  // ═══════════════════════════════════════════════
                  Expanded(
                    child: SlideTransition(
                      position: _cardSlide,
                      child: FadeTransition(
                        opacity: _cardFade,
                        child: _answerRevealed
                            // ── Answer revealed view ──
                            ? SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildScenarioCard(question),
                                    const SizedBox(height: 14),
                                    _buildDirectAnswerCard(question),
                                    const SizedBox(height: 10),
                                    _buildInsight(game, question),
                                    const SizedBox(height: 16),
                                    // ── Self-report buttons or Continue ──
                                    if (!_selfReported)
                                      _buildSelfReportButtons(game, question)
                                    else
                                      _buildContinueButton(game),
                                    const SizedBox(height: 24),
                                  ],
                                ),
                              )
                            // ── Question only view ──
                            : Column(
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: SingleChildScrollView(
                                        physics: const BouncingScrollPhysics(),
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        child: _buildScenarioCard(question),
                                      ),
                                    ),
                                  ),
                                  _buildActionRow(game, question),
                                  const SizedBox(height: 16),
                                ],
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════
  // ── SCOREBOARD ──
  // ═══════════════════════════════════════════════════════════════
  Widget _buildScoreboard() {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1E1B4B), Color(0xFF312E81)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF4338CA).withValues(alpha: 0.35),
            blurRadius: 20,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          // ── Monkey side ──
          Expanded(
            child: _ScoreSide(
              emoji: '🐒',
              label: 'Maymun',
              score: _monkeyScore,
              color: const Color(0xFFFF9A3C),
              controller: _pulseController,
              ismonkey: true,
              lastWasMonkey: _selfReported && _monkeyScore > _humanScore,
            ),
          ),

          // ── VS divider ──
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'VS',
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w900,
                color: Colors.white.withValues(alpha: 0.6),
                letterSpacing: 2,
              ),
            ),
          ),

          // ── Human side ──
          Expanded(
            child: _ScoreSide(
              emoji: '🧠',
              label: 'İnsan',
              score: _humanScore,
              color: const Color(0xFF7C3AED),
              controller: _pulseController,
              ismonkey: false,
              lastWasMonkey: _selfReported && _humanScore > _monkeyScore,
            ),
          ),
        ],
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════
  // ── SENARYO KARTI ──
  // ═══════════════════════════════════════════════════════════════
  Widget _buildScenarioCard(Question question) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: AppColors.divider.withValues(alpha: 0.4)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Text(
        question.scenario,
        style: GoogleFonts.poppins(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary,
          height: 1.7,
        ),
        textAlign: _answerRevealed ? TextAlign.start : TextAlign.center,
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════
  // ── DOĞRUDAN CEVAP KARTI ──
  // ═══════════════════════════════════════════════════════════════
  Widget _buildDirectAnswerCard(Question question) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 450),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) => Opacity(
        opacity: value,
        child: Transform.translate(offset: Offset(0, 16 * (1 - value)), child: child),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFF0FFF6), Color(0xFFDCFCE7)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.correct.withValues(alpha: 0.4), width: 1.5),
          boxShadow: [
            BoxShadow(
              color: AppColors.correct.withValues(alpha: 0.12),
              blurRadius: 14,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: AppColors.correct,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Icon(Icons.check_rounded, color: Colors.white, size: 20),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Doğru Cevap',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: AppColors.correct,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    question.options[question.correctIndex],
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF14532D),
                      height: 1.45,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════
  // ── INSIGHT PANEL ──
  // ═══════════════════════════════════════════════════════════════
  Widget _buildInsight(GameState game, Question question) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 550),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) => Opacity(
        opacity: value,
        child: Transform.translate(offset: Offset(0, 20 * (1 - value)), child: child),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: const Color(0xFFFEF9EC),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFFFBBF24).withValues(alpha: 0.35), width: 1.5),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFFBBF24).withValues(alpha: 0.10),
              blurRadius: 14,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: const Color(0xFFF59E0B),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text('💡', style: TextStyle(fontSize: 18)),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Açıklama',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFFB45309),
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    question.insight,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF78350F),
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════
  // ── SELF-REPORT BUTTONS ──
  // ═══════════════════════════════════════════════════════════════
  Widget _buildSelfReportButtons(GameState game, Question question) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCubic,
      builder: (context, v, child) => Opacity(
        opacity: v,
        child: Transform.translate(offset: Offset(0, 18 * (1 - v)), child: child),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 10),
            child: Text(
              'Cevabın doğru muydu?',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          Row(
            children: [
              // ── Doğru Cevapladım ──
              Expanded(
                child: GestureDetector(
                  onTap: () => _reportCorrect(game, question),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF10B981), Color(0xFF059669)],
                      ),
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF10B981).withValues(alpha: 0.35),
                          blurRadius: 14,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('✅', style: TextStyle(fontSize: 24)),
                        const SizedBox(height: 6),
                        Text(
                          'Doğru\nBiliyordum!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '🧠 +1 İnsan',
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: Colors.white70,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // ── Yanlış Cevapladım ──
              Expanded(
                child: GestureDetector(
                  onTap: () => _reportWrong(game, question),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFF6B35), Color(0xFFEF4444)],
                      ),
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFEF4444).withValues(alpha: 0.35),
                          blurRadius: 14,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('❌', style: TextStyle(fontSize: 24)),
                        const SizedBox(height: 6),
                        Text(
                          'Yanlış\nBildim!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '🐒 +1 Maymun',
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: Colors.white70,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════
  // ── CONTINUE BUTTON ──
  // ═══════════════════════════════════════════════════════════════
  Widget _buildContinueButton(GameState game) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeOut,
      builder: (context, value, child) => Opacity(opacity: value, child: child),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            gradient: game.isLastQuestion
                ? AppColors.primaryGradient
                : AppColors.playButtonGradient,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: (game.isLastQuestion ? AppColors.primary : AppColors.glowOrange)
                    .withValues(alpha: 0.3),
                blurRadius: 16,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(18),
              onTap: () {
                if (game.isLastQuestion) {
                  game.endGame();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const ResultScreen()),
                  );
                } else {
                  setState(_resetPerQuestion);
                  game.nextQuestion();
                  _playEntrance();
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      game.isLastQuestion
                          ? Icons.emoji_events_rounded
                          : Icons.arrow_forward_rounded,
                      color: Colors.white,
                      size: 22,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      game.isLastQuestion ? 'Sonuçları Gör' : 'Sonraki Soru',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════
  // ── ACTION ROW (Cevabı Göster / Atla) ──
  // ═══════════════════════════════════════════════════════════════
  Widget _buildActionRow(GameState game, Question question) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Row(
        children: [
          // Cevabı Göster
          Expanded(
            child: _ActionButton(
              icon: Icons.emoji_objects_rounded,
              label: 'Cevabı Göster',
              color: const Color(0xFFFF7043),
              onTap: () => _showAnswerPressed(game, question),
            ),
          ),
          const SizedBox(width: 10),
          // Atla
          _ActionButton(
            icon: Icons.skip_next_rounded,
            label: 'Atla',
            color: const Color(0xFF78909C),
            onTap: !game.isLastQuestion ? () => _skipPressed(game) : null,
          ),
        ],
      ),
    );
  }

  // ── Cevabı Göster ──────────────────────────────────────────────
  void _showAnswerPressed(GameState game, Question question) {
    setState(() => _answerRevealed = true);
  }

  // ── Atla ──────────────────────────────────────────────────────
  void _skipPressed(GameState game) {
    if (!mounted) return;
    // Count as monkey point when skipped
    _monkeyScore++;
    setState(_resetPerQuestion);
    game.nextQuestion();
    _playEntrance();
  }
}

// ══════════════════════════════════════════════════════════════
// ── SCORE SIDE WIDGET ──
// ══════════════════════════════════════════════════════════════
class _ScoreSide extends StatelessWidget {
  final String emoji;
  final String label;
  final int score;
  final Color color;
  final AnimationController controller;
  final bool ismonkey;
  final bool lastWasMonkey;

  const _ScoreSide({
    required this.emoji,
    required this.label,
    required this.score,
    required this.color,
    required this.controller,
    bool? ismonkey,
    required this.lastWasMonkey,
  }) : ismonkey = ismonkey ?? true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Emoji
        AnimatedBuilder(
          animation: controller,
          builder: (_, child) {
            final pulse = lastWasMonkey
                ? (1.0 + 0.15 * (1 - (controller.value - 0.5).abs() * 2).clamp(0.0, 1.0))
                : 1.0;
            return Transform.scale(scale: pulse, child: child);
          },
          child: Text(emoji, style: const TextStyle(fontSize: 28)),
        ),
        const SizedBox(height: 4),
        // Score
        AnimatedBuilder(
          animation: controller,
          builder: (_, child) {
            return Text(
              '$score',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                height: 1.0,
              ),
            );
          },
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 11,
            color: Colors.white.withValues(alpha: 0.6),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

// ══════════════════════════════════════════════════════════════
// ── QUIZ BACKGROUND ──
// ══════════════════════════════════════════════════════════════
class _QuizBackground extends StatelessWidget {
  const _QuizBackground();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -60,
          right: -40,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF6366F1).withValues(alpha: 0.06),
            ),
          ),
        ),
        Positioned(
          bottom: 80,
          left: -50,
          child: Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFFF7043).withValues(alpha: 0.06),
            ),
          ),
        ),
      ],
    );
  }
}

// ══════════════════════════════════════════════════════════════
// ── ACTION BUTTON ──
// ══════════════════════════════════════════════════════════════
class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback? onTap;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final enabled = onTap != null;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedOpacity(
        opacity: enabled ? 1.0 : 0.4,
        duration: const Duration(milliseconds: 200),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: enabled ? color.withValues(alpha: 0.25) : Colors.grey.withValues(alpha: 0.15),
              width: 1.5,
            ),
            boxShadow: [
              if (enabled)
                BoxShadow(
                  color: color.withValues(alpha: 0.12),
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: enabled ? color : Colors.grey, size: 18),
              const SizedBox(width: 6),
              Flexible(
                child: Text(
                  label,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: enabled ? color : Colors.grey,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
