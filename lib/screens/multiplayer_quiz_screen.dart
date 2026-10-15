import 'package:flutter/material.dart';
import 'package:zihin_tuzaklari/l10n/app_text.dart';
import 'package:zihin_tuzaklari/config/app_colors.dart';
import 'package:zihin_tuzaklari/models/question_model.dart';
import 'package:zihin_tuzaklari/screens/multiplayer_result_screen.dart';
import 'package:zihin_tuzaklari/screens/game_break_ad_screen.dart';
import 'package:zihin_tuzaklari/screens/home_screen.dart';
import 'package:zihin_tuzaklari/services/ad_service.dart';
import 'package:zihin_tuzaklari/services/sound_service.dart';
import 'package:zihin_tuzaklari/widgets/banner_ad_widget.dart';
import 'package:zihin_tuzaklari/config/ad_config.dart';

class MultiplayerQuizScreen extends StatefulWidget {
  final List<String> playerNames;
  final List<Question> questions;

  const MultiplayerQuizScreen({
    super.key,
    required this.playerNames,
    required this.questions,
  });

  @override
  State<MultiplayerQuizScreen> createState() => _MultiplayerQuizScreenState();
}

class _MultiplayerQuizScreenState extends State<MultiplayerQuizScreen>
    with TickerProviderStateMixin {
  int _currentIndex = 0;
  bool _answerRevealed = false;
  bool _playersMarked = false;

  // Per-player scores: playerIndex -> total score
  late List<int> _scores;
  // Per-question scores: questionIndex -> list of scores per player for that question
  late List<List<int>> _scoreHistory;
  // Which players got the current question right
  late List<bool> _currentCorrect;

  late AnimationController _cardController;
  late Animation<double> _cardFade;
  late Animation<Offset> _cardSlide;

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

  @override
  void initState() {
    super.initState();
    _scores = List.filled(widget.playerNames.length, 0);
    _scoreHistory = [];
    _currentCorrect = List.filled(widget.playerNames.length, false);

    _cardController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _cardFade = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _cardController, curve: Curves.easeOut));
    _cardSlide = Tween<Offset>(begin: const Offset(0.05, 0), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: _cardController, curve: Curves.easeOutCubic),
        );

    _playEntrance();
  }

  void _playEntrance() {
    _cardController.forward(from: 0);
  }

  @override
  void dispose() {
    _cardController.dispose();
    super.dispose();
  }

  Question get _currentQuestion => widget.questions[_currentIndex];
  bool get _isLastQuestion => _currentIndex >= widget.questions.length - 1;

  void _revealAnswer() {
    setState(() => _answerRevealed = true);
  }

  void _confirmPlayers() {
    // Save scores for this question
    final questionScores = <int>[];
    for (int i = 0; i < widget.playerNames.length; i++) {
      if (_currentCorrect[i]) {
        _scores[i] += 10;
        questionScores.add(10);
      } else {
        questionScores.add(0);
      }
    }
    _scoreHistory.add(questionScores);
    setState(() => _playersMarked = true);
  }

  void _nextQuestion() {
    if (_isLastQuestion) {
      // Build cumulative scores for chart
      final cumulativeScores = <List<int>>[];
      for (int q = 0; q < _scoreHistory.length; q++) {
        final cumRow = <int>[];
        for (int p = 0; p < widget.playerNames.length; p++) {
          int cumSum = 0;
          for (int qPrev = 0; qPrev <= q; qPrev++) {
            cumSum += _scoreHistory[qPrev][p];
          }
          cumRow.add(cumSum);
        }
        cumulativeScores.add(cumRow);
      }

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) {
            Widget buildResult(BuildContext context) => MultiplayerResultScreen(
              playerNames: widget.playerNames,
              scores: List.from(_scores),
              cumulativeScores: cumulativeScores,
            );
            return AdService.instance.canShowInterstitialAtBreak
                ? GameBreakAdScreen(resultBuilder: buildResult)
                : buildResult(context);
          },
        ),
      );
    } else {
      setState(() {
        _currentIndex++;
        _answerRevealed = false;
        _playersMarked = false;
        _currentCorrect = List.filled(widget.playerNames.length, false);
      });
      _playEntrance();
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = _currentQuestion;

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
        backgroundColor: const Color(0xFFF8F6FF),
        bottomNavigationBar: const BannerAdWidget(
          placement: BannerPlacement.multiplayerQuiz,
        ),
        body: Stack(
          children: [
            // Background
            Positioned(
              top: -60,
              right: -40,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF10B981).withValues(alpha: 0.06),
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
                  color: const Color(0xFF6366F1).withValues(alpha: 0.06),
                ),
              ),
            ),

            SafeArea(
              child: Column(
                children: [
                  // ── Top Controls (Home & Mute) ──
                  _buildTopControls(),

                  // ── Progress header ──
                  _buildProgressHeader(),

                  const SizedBox(height: 8),

                  // ── Content ──
                  Expanded(
                    child: SlideTransition(
                      position: _cardSlide,
                      child: FadeTransition(
                        opacity: _cardFade,
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ── Question card ──
                              _buildQuestionCard(question),
                              const SizedBox(height: 14),

                              if (!_answerRevealed) ...[
                                // Show "Cevabı Göster" button
                                _buildRevealButton(),
                              ] else ...[
                                // Show correct answer
                                _buildCorrectAnswerCard(question),
                                const SizedBox(height: 10),
                                _buildInsightCard(question),
                                const SizedBox(height: 16),

                                if (!_playersMarked) ...[
                                  // Show player marking UI
                                  _buildPlayerMarking(),
                                  const SizedBox(height: 16),
                                  _buildConfirmButton(),
                                ] else ...[
                                  // Show continue button
                                  _buildContinueButton(),
                                ],
                              ],

                              const SizedBox(height: 24),
                            ],
                          ),
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

  Widget _buildTopControls() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.home_rounded, color: Color(0xFF64748B)),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const HomeScreen()),
                (_) => false,
              );
            },
          ),
          IconButton(
            icon: Icon(
              SoundService.instance.soundEnabled
                  ? Icons.volume_up_rounded
                  : Icons.volume_off_rounded,
              color: const Color(0xFF64748B),
            ),
            onPressed: () async {
              await SoundService.instance.toggleSound(
                !SoundService.instance.soundEnabled,
              );
              setState(() {});
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProgressHeader() {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1E1B4B), Color(0xFF312E81)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF4338CA).withValues(alpha: 0.3),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF10B981).withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: AppText(
              '🎮 ${_currentIndex + 1}/${widget.questions.length}',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF10B981),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: LinearProgressIndicator(
                value: (_currentIndex + 1) / widget.questions.length,
                minHeight: 8,
                backgroundColor: Colors.white.withValues(alpha: 0.1),
                valueColor: const AlwaysStoppedAnimation<Color>(
                  Color(0xFF10B981),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          AppText(
            '👥 ${widget.playerNames.length}',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionCard(Question question) {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF6366F1).withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(8),
            ),
            child: AppText(
              '${question.category.icon} ${question.category.title}',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF6366F1),
              ),
            ),
          ),
          const SizedBox(height: 14),
          AppText(
            question.scenario,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: AppColors.textPrimary,
              height: 1.7,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRevealButton() {
    return Row(
      children: [
        // Ana Sayfa Butonu
        GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => const HomeScreen()),
              (_) => false,
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: const Color(0xFF64748B).withValues(alpha: 0.25),
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF64748B).withValues(alpha: 0.12),
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Icon(
              Icons.home_rounded,
              color: Color(0xFF64748B),
              size: 18,
            ),
          ),
        ),
        const SizedBox(width: 8),
        // Cevabı Göster
        Expanded(
          child: GestureDetector(
            onTap: _revealAnswer,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFFF7043), Color(0xFFFF5722)],
                ),
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFFF7043).withValues(alpha: 0.35),
                    blurRadius: 16,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.emoji_objects_rounded,
                    color: Colors.white,
                    size: 22,
                  ),
                  const SizedBox(width: 10),
                  AppText(
                    'Cevabı Göster',
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
        ),
      ],
    );
  }

  Widget _buildCorrectAnswerCard(Question question) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 450),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) => Opacity(
        opacity: value,
        child: Transform.translate(
          offset: Offset(0, 16 * (1 - value)),
          child: child,
        ),
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
          border: Border.all(
            color: AppColors.correct.withValues(alpha: 0.4),
            width: 1.5,
          ),
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
                  AppText(
                    'Doğru Cevap',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: AppColors.correct,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 4),
                  AppText(
                    question.options[question.correctIndex],
                    style: TextStyle(
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

  Widget _buildInsightCard(Question question) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 550),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) => Opacity(
        opacity: value,
        child: Transform.translate(
          offset: Offset(0, 20 * (1 - value)),
          child: child,
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: const Color(0xFFFEF9EC),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xFFFBBF24).withValues(alpha: 0.35),
            width: 1.5,
          ),
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
                child: AppText('💡', style: TextStyle(fontSize: 18)),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    'Açıklama',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFFB45309),
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 4),
                  AppText(
                    question.insight,
                    style: TextStyle(
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

  Widget _buildPlayerMarking() {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCubic,
      builder: (context, v, child) => Opacity(
        opacity: v,
        child: Transform.translate(
          offset: Offset(0, 18 * (1 - v)),
          child: child,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            'Kimler bildi?',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 6),
          AppText(
            'Doğru bilen oyuncuları işaretleyin',
            style: TextStyle(fontSize: 12, color: AppColors.textSecondary),
          ),
          const SizedBox(height: 12),
          ...List.generate(widget.playerNames.length, (index) {
            final isCorrect = _currentCorrect[index];
            final color = playerColors[index % playerColors.length];
            final emojis = [
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

            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _currentCorrect[index] = !_currentCorrect[index];
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeOut,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: isCorrect
                        ? AppColors.correct.withValues(alpha: 0.08)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: isCorrect
                          ? AppColors.correct.withValues(alpha: 0.5)
                          : AppColors.divider.withValues(alpha: 0.5),
                      width: isCorrect ? 2 : 1,
                    ),
                    boxShadow: [
                      if (isCorrect)
                        BoxShadow(
                          color: AppColors.correct.withValues(alpha: 0.15),
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                    ],
                  ),
                  child: Row(
                    children: [
                      AppText(
                        emojis[index % emojis.length],
                        style: const TextStyle(fontSize: 24),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: AppText(
                          widget.playerNames[index],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: isCorrect
                                ? AppColors.correct
                                : AppColors.textPrimary,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: color.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: AppText(
                          '${_scores[index]} puan',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: color,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: isCorrect
                              ? AppColors.correct
                              : Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Icon(
                            isCorrect
                                ? Icons.check_rounded
                                : Icons.close_rounded,
                            color: isCorrect ? Colors.white : Colors.grey,
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildConfirmButton() {
    return GestureDetector(
      onTap: _confirmPlayers,
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
              color: const Color(0xFF10B981).withValues(alpha: 0.35),
              blurRadius: 14,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_rounded,
              color: Colors.white,
              size: 22,
            ),
            const SizedBox(width: 10),
            AppText(
              'Onayla',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContinueButton() {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeOut,
      builder: (context, value, child) => Opacity(opacity: value, child: child),
      child: GestureDetector(
        onTap: _nextQuestion,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            gradient: _isLastQuestion
                ? AppColors.primaryGradient
                : AppColors.playButtonGradient,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color:
                    (_isLastQuestion ? AppColors.primary : AppColors.glowOrange)
                        .withValues(alpha: 0.3),
                blurRadius: 16,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _isLastQuestion
                    ? Icons.emoji_events_rounded
                    : Icons.arrow_forward_rounded,
                color: Colors.white,
                size: 22,
              ),
              const SizedBox(width: 10),
              AppText(
                _isLastQuestion ? 'Sonuçları Gör 🏆' : 'Sonraki Soru →',
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
    );
  }
}
