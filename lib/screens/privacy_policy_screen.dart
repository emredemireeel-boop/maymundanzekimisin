import 'package:flutter/material.dart';
import 'package:zihin_tuzaklari/config/app_colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
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
            _paragraph(
              'iOS cihazlarda kişiselleştirilmiş reklam ve reklam ölçümü için '
              'Apple Uygulama Takibi Şeffaflığı izni istenebilir. İzni '
              'reddetmek uygulamanın kullanılmasını engellemez.',
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
            Text(
              'Son güncelleme: 27 Temmuz 2026',
              style: TextStyle(fontSize: 12, color: AppColors.textHint),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  static Widget _sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
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
      child: Text(
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
          Text('• ', style: TextStyle(fontSize: 14, color: AppColors.primary)),
          Expanded(
            child: Text(
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
