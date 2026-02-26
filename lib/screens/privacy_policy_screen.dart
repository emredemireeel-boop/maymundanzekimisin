import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zihin_tuzaklari/config/app_colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('Gizlilik Politikasi',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w700)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionTitle('1. Toplanan Veriler'),
            _paragraph(
              'Bu uygulama hicbir kisisel veri toplamaz. Uygulama tamamen cevrimdisi calisir ve asagidaki verileri yalnizca cihazinizda yerel olarak saklar:'
            ),
            _bulletPoint('Oyun skorlari ve ilerleme durumu'),
            _bulletPoint('Cozulmus soru kayitlari'),
            _bulletPoint('Kullanici tercihleri (ses ayarlari vb.)'),
            _paragraph('Bu veriler cihazinizdan asla disari gonderilmez.'),

            const SizedBox(height: 20),
            _sectionTitle('2. Kisisel Bilgiler'),
            _bulletPoint('Ad, e-posta veya telefon numarasi toplamaz'),
            _bulletPoint('Konum bilgisi toplamaz'),
            _bulletPoint('Kamera veya mikrofona erismez'),
            _bulletPoint('Hesap olusturma veya giris yapma gerektirmez'),

            const SizedBox(height: 20),
            _sectionTitle('3. Ucuncu Taraf Hizmetleri'),
            _paragraph(
              'Uygulama, Google Fonts kutuphanesini kullanmaktadir. Internet baglantisi mevcut oldugunda yazi tipleri indirilir.'
            ),

            const SizedBox(height: 20),
            _sectionTitle('4. Cocuklarin Gizliligi'),
            _paragraph(
              'Uygulama her yas grubuna uygundur. 13 yasin altindaki cocuklardan bilincli olarak kisisel veri toplanmaz.'
            ),

            const SizedBox(height: 20),
            _sectionTitle('5. Veri Guvenligi'),
            _paragraph(
              'Tum oyun verileri yalnizca cihazinizda saklanir. Uygulamayi sildiginizde tum veriler otomatik olarak kaldirilir.'
            ),

            const SizedBox(height: 20),
            _sectionTitle('6. Iletisim'),
            _paragraph('Sorulariniz icin: zihintuzaklari.app@gmail.com'),

            const SizedBox(height: 16),
            Text(
              'Son guncelleme: Subat 2026',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: AppColors.textHint,
              ),
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
        style: GoogleFonts.poppins(
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
        style: GoogleFonts.poppins(
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
          Text('• ',
              style: GoogleFonts.poppins(
                  fontSize: 14, color: AppColors.primary)),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
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
