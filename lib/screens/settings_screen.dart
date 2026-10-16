import 'package:flutter/material.dart';
import 'package:zihin_tuzaklari/l10n/app_text.dart';
import 'package:zihin_tuzaklari/config/app_colors.dart';
import 'package:zihin_tuzaklari/services/ad_service.dart';
import 'package:zihin_tuzaklari/services/sound_service.dart';
import 'package:zihin_tuzaklari/screens/privacy_policy_screen.dart';
import 'package:provider/provider.dart';
import 'package:zihin_tuzaklari/services/app_language.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late bool _soundEnabled;

  @override
  void initState() {
    super.initState();
    _soundEnabled = SoundService.instance.soundEnabled;
  }

  Future<void> _showPrivacyOptions() async {
    final error = await AdService.instance.showPrivacyOptionsForm();
    if (!mounted || error == null) return;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: AppText('Gizlilik seçenekleri şu anda açılamıyor.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final language = context.watch<AppLanguage>();
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: AppText(
          'Ayarlar',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
          24,
          8,
          24,
          // Gesture navigation bar + ekstra boşluk
          MediaQuery.of(context).padding.bottom + 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),

            AppText(
              'Dil',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            const AppText('Uygulama ve soru dili'),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children:
                  const [('tr', 'Türkçe'), ('en', 'English'), ('es', 'Español')]
                      .map(
                        (option) => ChoiceChip(
                          label: AppText(option.$2),
                          selected: language.code == option.$1,
                          onSelected: (_) => language.select(option.$1),
                          selectedColor: AppColors.primary.withValues(
                            alpha: 0.18,
                          ),
                        ),
                      )
                      .toList(),
            ),
            const SizedBox(height: 32),

            // ── Ses Ayarları ──
            AppText(
              'Ses',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 12),

            _SettingsTile(
              icon: _soundEnabled
                  ? Icons.volume_up_rounded
                  : Icons.volume_off_rounded,
              title: 'Ses Efektleri',
              subtitle:
                  'Yanlış cevapta maymun sesi ve doğru/yanlış geri bildirimi',
              trailing: Switch.adaptive(
                value: _soundEnabled,
                onChanged: (val) {
                  setState(() => _soundEnabled = val);
                  SoundService.instance.toggleSound(val);
                },
                activeTrackColor: AppColors.primary,
              ),
            ),

            const SizedBox(height: 32),

            // ── Oyun Bilgisi ──
            AppText(
              'Oyun Bilgisi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 12),

            _SettingsTile(
              icon: Icons.shuffle_rounded,
              title: 'Karıştırma',
              subtitle: 'Sorular ve şıklar her oyunda farklı sırada gelir',
              trailing: const Icon(
                Icons.info_outline,
                color: AppColors.textHint,
                size: 20,
              ),
            ),

            const SizedBox(height: 8),

            _SettingsTile(
              icon: Icons.sports_score_rounded,
              title: 'Puanlama',
              subtitle: 'Doğru: 🧠 +1 İnsan · Yanlış: 🐒 +1 Maymun',
              trailing: const Icon(
                Icons.info_outline,
                color: AppColors.textHint,
                size: 20,
              ),
            ),

            const SizedBox(height: 32),

            // ── Hakkında ──
            AppText(
              'Hakkında',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 12),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
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
                  AppText(
                    '🐵 Maymundan Zeki Misin?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  AppText(
                    'Oyun Teorisi, Bilişsel Yanılgılar, Etik Paradokslar ve Davranışsal Ekonomi üzerine kurulu bir strateji ve mantık yarışması.',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.textSecondary,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen()),
              ),
              child: _SettingsTile(
                icon: Icons.privacy_tip_rounded,
                title: 'Gizlilik Politikası',
                subtitle: 'Veri kullanımı ve gizlilik bilgileri',
                trailing: const Icon(
                  Icons.chevron_right_rounded,
                  color: AppColors.textHint,
                  size: 24,
                ),
              ),
            ),

            ValueListenableBuilder<bool>(
              valueListenable: AdService.instance.privacyOptionsRequired,
              builder: (context, isRequired, _) {
                if (!isRequired) return const SizedBox.shrink();

                return Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: GestureDetector(
                    onTap: _showPrivacyOptions,
                    child: const _SettingsTile(
                      icon: Icons.tune_rounded,
                      title: 'Reklam Gizliliği',
                      subtitle: 'Reklam ve veri kullanım tercihlerini yönet',
                      trailing: Icon(
                        Icons.chevron_right_rounded,
                        color: AppColors.textHint,
                        size: 24,
                      ),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Widget trailing;

  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.divider.withValues(alpha: 0.5)),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: AppColors.primary, size: 22),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                AppText(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          trailing,
        ],
      ),
    );
  }
}
