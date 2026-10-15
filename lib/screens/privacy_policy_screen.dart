import 'package:flutter/material.dart';
import 'package:zihin_tuzaklari/l10n/app_text.dart';
import 'package:zihin_tuzaklari/config/app_colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final language = Localizations.localeOf(context).languageCode;
    if (language == 'en' || language == 'es') {
      return _buildLocalizedPolicy(language);
    }
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: AppText(
          'Gizlilik Politikası',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionTitle('1. Cihazda Saklanan Veriler'),
            _paragraph(
              'Oyunla ilgili aşağıdaki bilgiler yalnızca cihazınızda yerel '
              'olarak saklanır:',
            ),
            _bulletPoint('Oyun skorları ve ilerleme durumu'),
            _bulletPoint('Çözülmüş soru kayıtları'),
            _bulletPoint('Kullanıcı tercihleri (ses ayarları vb.)'),
            _paragraph(
              'Bu oyun verileri hesabımıza gönderilmez ve uygulamayı '
              'sildiğinizde cihazdan kaldırılır.',
            ),

            const SizedBox(height: 20),
            _sectionTitle('2. Kişisel Bilgiler'),
            _bulletPoint('Ad, e-posta veya telefon numarası istemez'),
            _bulletPoint('Kesin konum bilgisine erişmez'),
            _bulletPoint('Kamera veya mikrofona erişmez'),
            _bulletPoint('Hesap oluşturma veya giriş yapma gerektirmez'),

            const SizedBox(height: 20),
            _sectionTitle('3. Üçüncü Taraf Hizmetleri'),
            _paragraph(
              'Uygulama reklam göstermek için Google Mobile Ads (AdMob) '
              'hizmetini kullanır. Google; reklam sunma, ölçüm, sahtekârlığı '
              'önleme ve güvenlik amaçlarıyla reklam kimliği, IP adresi, '
              'cihaz bilgileri, reklam etkileşimleri ve tanılama verileri gibi '
              'bilgileri işleyebilir. Bu işlemler Google politikalarına tabidir.',
            ),

            const SizedBox(height: 20),
            _sectionTitle('4. Reklam ve Gizlilik Tercihleri'),
            _paragraph(
              'Gerekli bölgelerde Google User Messaging Platform üzerinden '
              'reklam ve kişisel veri kullanım tercihleri sorulur. İzin durumu '
              'alınmadan reklam isteği başlatılmaz. Gizlilik seçeneklerinin '
              'sunulmasının zorunlu olduğu bölgelerde tercihler Ayarlar '
              'ekranındaki Reklam Gizliliği bölümünden değiştirilebilir.',
            ),
            const SizedBox(height: 20),
            _sectionTitle('5. Çocukların Gizliliği'),
            _paragraph(
              'Uygulama özellikle 13 yaşın altındaki çocuklara yönelik değildir. '
              '13 yaşın altındaki bir çocuğa ait verinin uygunsuz biçimde '
              'işlendiğini düşünüyorsanız bizimle iletişime geçebilirsiniz.',
            ),

            const SizedBox(height: 20),
            _sectionTitle('6. Veri Güvenliği'),
            _paragraph(
              'Yerel oyun verileri yalnızca cihazınızda saklanır. Üçüncü taraf '
              'hizmetlerinin işlediği veriler kendi güvenlik ve saklama '
              'politikalarına tabidir.',
            ),

            const SizedBox(height: 20),
            _sectionTitle('7. İletişim'),
            _paragraph('Sorularınız için: zihintuzaklari.app@gmail.com'),

            const SizedBox(height: 16),
            AppText(
              'Son güncelleme: 27 Temmuz 2026',
              style: TextStyle(fontSize: 12, color: AppColors.textHint),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildLocalizedPolicy(String language) {
    final sections = language == 'en' ? _englishPolicy : _spanishPolicy;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const AppText('Gizlilik Politikası'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          for (final section in sections) ...[
            AppText(
              section.$1,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 8),
            AppText(
              section.$2,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.textSecondary,
                height: 1.6,
              ),
            ),
            const SizedBox(height: 20),
          ],
          AppText(
            language == 'en'
                ? 'Last updated: 27 July 2026'
                : 'Última actualización: 27 de julio de 2026',
            style: const TextStyle(fontSize: 12, color: AppColors.textHint),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  static Widget _sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: AppText(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.primary,
        ),
      ),
    );
  }

  static Widget _paragraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: AppText(
        text,
        style: TextStyle(
          fontSize: 14,
          color: AppColors.textSecondary,
          height: 1.6,
        ),
      ),
    );
  }

  static Widget _bulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            '• ',
            style: TextStyle(fontSize: 14, color: AppColors.primary),
          ),
          Expanded(
            child: AppText(
              text,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.textSecondary,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const _englishPolicy = <(String, String)>[
  (
    '1. Data stored on your device',
    'Game scores, progress, solved questions, and preferences are stored locally on your device. Removing the app removes this local data.',
  ),
  (
    '2. Personal information',
    'The app does not ask for your name, email address, or phone number. It does not access precise location, camera, or microphone. No account or sign-in is required.',
  ),
  (
    '3. Third-party services',
    'The app uses Google Mobile Ads (AdMob) to display ads. Google may process advertising IDs, IP addresses, device information, ad interactions, and diagnostic data to serve and measure ads, prevent fraud, and protect security. Google’s policies govern this processing.',
  ),
  (
    '4. Ads and privacy choices',
    'Where required, the Google User Messaging Platform asks for your advertising and data-use choices. Ad requests do not start before the required consent state is available. Where privacy options must be offered, you can change your choices in Settings.',
  ),
  (
    '5. Children’s privacy',
    'The app is not specifically directed at children under 13. Contact us if you believe a child’s data has been processed inappropriately.',
  ),
  (
    '6. Data security',
    'Local game data remains on your device. Data processed by third-party services is subject to their security and retention policies.',
  ),
  ('7. Contact', 'Questions? Contact zihintuzaklari.app@gmail.com'),
];

const _spanishPolicy = <(String, String)>[
  (
    '1. Datos guardados en tu dispositivo',
    'Las puntuaciones, el progreso, las preguntas resueltas y las preferencias se guardan localmente en tu dispositivo. Al desinstalar la aplicación, se eliminan estos datos locales.',
  ),
  (
    '2. Datos personales',
    'La aplicación no solicita tu nombre, correo electrónico ni número de teléfono. No accede a tu ubicación precisa, cámara ni micrófono. No es necesario crear una cuenta ni iniciar sesión.',
  ),
  (
    '3. Servicios de terceros',
    'La aplicación utiliza Google Mobile Ads (AdMob) para mostrar anuncios. Google puede tratar identificadores publicitarios, direcciones IP, información del dispositivo, interacciones con anuncios y datos de diagnóstico para mostrar y medir anuncios, prevenir fraudes y proteger la seguridad. Este tratamiento se rige por las políticas de Google.',
  ),
  (
    '4. Anuncios y opciones de privacidad',
    'Cuando es necesario, Google User Messaging Platform solicita tus preferencias sobre anuncios y uso de datos. Las solicitudes de anuncios no comienzan antes de conocer el estado de consentimiento requerido. Donde deban ofrecerse opciones de privacidad, puedes cambiarlas en Ajustes.',
  ),
  (
    '5. Privacidad de los menores',
    'La aplicación no está dirigida específicamente a menores de 13 años. Contáctanos si crees que se han tratado de forma inapropiada datos de un menor.',
  ),
  (
    '6. Seguridad de los datos',
    'Los datos locales del juego permanecen en tu dispositivo. Los datos tratados por servicios de terceros se rigen por sus políticas de seguridad y conservación.',
  ),
  (
    '7. Contacto',
    'Si tienes preguntas, escribe a zihintuzaklari.app@gmail.com',
  ),
];
