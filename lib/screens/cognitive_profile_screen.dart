import 'package:flutter/material.dart';
import 'package:zihin_tuzaklari/l10n/app_text.dart';
import 'package:provider/provider.dart';
import 'package:zihin_tuzaklari/config/app_colors.dart';
import 'package:zihin_tuzaklari/models/game_state.dart';
import 'package:zihin_tuzaklari/models/question_model.dart';

class CognitiveProfileScreen extends StatelessWidget {
  const CognitiveProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final game = context.watch<GameState>();
    final categories = QuestionCategory.values;
    final ranked = [...categories]
      ..sort(
        (a, b) =>
            game.getLifetimeAccuracy(b).compareTo(game.getLifetimeAccuracy(a)),
      );
    final totalSolved = game.lifetimeSolved.values.fold<int>(
      0,
      (sum, value) => sum + value,
    );
    final totalCorrect = game.lifetimeCorrect.values.fold<int>(
      0,
      (sum, value) => sum + value,
    );
    final overall = totalSolved == 0 ? 0.0 : totalCorrect / totalSolved;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const AppText('Zihin DNA’m'),
        backgroundColor: AppColors.background,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(18, 8, 18, 32),
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF1E1B4B), Color(0xFF4338CA)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(26),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF4338CA).withValues(alpha: 0.28),
                  blurRadius: 28,
                  offset: const Offset(0, 12),
                ),
              ],
            ),
            child: Column(
              children: [
                const AppText('🧬', style: TextStyle(fontSize: 42)),
                const SizedBox(height: 8),
                AppText(
                  totalSolved == 0
                      ? 'İlk ölçümünü başlat'
                      : '%${(overall * 100).round()} bilişsel doğruluk',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 7),
                AppText(
                  totalSolved == 0
                      ? 'Cevapların altı farklı düşünme alanında analiz edilir.'
                      : '$totalSolved karar analiz edildi • '
                            '${game.dailyStreak} günlük seri',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.72),
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          if (totalSolved > 0)
            _InsightCard(
              strongest: ranked.first,
              weakest: ranked.last,
              strongestScore: game.getLifetimeAccuracy(ranked.first),
              weakestScore: game.getLifetimeAccuracy(ranked.last),
            ),
          const SizedBox(height: 18),
          const AppText(
            'Bilişsel alanlar',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 19,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          ...categories.map((category) {
            final solved = game.lifetimeSolved[category] ?? 0;
            final accuracy = game.getLifetimeAccuracy(category);
            final color = _colorFromHex(category.color);
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: color.withValues(alpha: 0.18)),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: color.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: AppText(
                        category.icon,
                        style: const TextStyle(fontSize: 22),
                      ),
                    ),
                    const SizedBox(width: 13),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: AppText(
                                  category.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ),
                              AppText(
                                solved == 0
                                    ? 'Ölçülmedi'
                                    : '%${(accuracy * 100).round()}',
                                style: TextStyle(
                                  color: color,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: LinearProgressIndicator(
                              value: solved == 0 ? 0 : accuracy,
                              minHeight: 7,
                              color: color,
                              backgroundColor: color.withValues(alpha: 0.1),
                            ),
                          ),
                          const SizedBox(height: 6),
                          AppText(
                            solved == 0
                                ? 'Bu alandaki ilk sorunu çöz.'
                                : '$solved karar üzerinden hesaplandı.',
                            style: const TextStyle(
                              color: AppColors.textSecondary,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
          const SizedBox(height: 8),
          const AppText(
            'Bu profil bir IQ veya sağlık tanısı değildir; oyun içindeki '
            'karar örüntülerini gösteren kişisel bir ilerleme özetidir.',
            style: TextStyle(
              color: AppColors.textHint,
              fontSize: 11,
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  static Color _colorFromHex(String hex) {
    final normalized = hex.replaceFirst('#', '');
    return Color(int.parse('FF$normalized', radix: 16));
  }
}

class _InsightCard extends StatelessWidget {
  const _InsightCard({
    required this.strongest,
    required this.weakest,
    required this.strongestScore,
    required this.weakestScore,
  });

  final QuestionCategory strongest;
  final QuestionCategory weakest;
  final double strongestScore;
  final double weakestScore;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF7ED),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFFED7AA)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppText(
            'Maymunun gözlemi',
            style: TextStyle(
              color: Color(0xFF9A3412),
              fontWeight: FontWeight.w900,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          AppText(switch (Localizations.localeOf(context).languageCode) {
            'en' =>
              'Your strongest area is ${strongest.title} '
                  '(${(strongestScore * 100).round()}% accuracy). '
                  'In ${weakest.title}, you scored '
                  '${(weakestScore * 100).round()}%. '
                  'The daily challenge offers a balanced mix of puzzles.',
            'es' =>
              'Tu área más fuerte es ${strongest.title} '
                  '(${(strongestScore * 100).round()} % de aciertos). '
                  'En ${weakest.title}, obtuviste '
                  '${(weakestScore * 100).round()} %. '
                  'El desafío diario combina distintos tipos de acertijos.',
            _ =>
              'En güçlü alanın ${strongest.title} '
                  '(%${(strongestScore * 100).round()}). '
                  '${weakest.title} alanında ise '
                  '%${(weakestScore * 100).round()} doğruluktasın. '
                  'Günün Zihin Düellosu bu iki alanı dengeli biçimde çalıştırır.',
          }, style: const TextStyle(color: Color(0xFF7C2D12), height: 1.45)),
        ],
      ),
    );
  }
}
