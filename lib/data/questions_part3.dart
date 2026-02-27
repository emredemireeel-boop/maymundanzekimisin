// Maymundan Zeki Misin? – Part 21: RIDDLE_011 – RIDDLE_026
// Yanal Düşünme, Beklenmedik Mantık ve Zorlu Matematik Bilmeceleri

final List<Map<String, dynamic>> questionsPart3 = [
  {
    'id': 'RIDDLE_011',
    'category': 'Mantık Bulmacaları ve İfadeler',
    'scenario': "Beş kişi bir odada oturuyor. Her biri ya her zaman doğruyu söyleyen (dürüst) ya da her zaman yalan söyleyen (yalancı). Herkes diğerlerini tanıyor. Her birine 'Aranızda kaç yalancı var?' diye soruluyor. Cevaplar sırayla şöyledir:\n1. kişi: 'Bir'\n2. kişi: 'İki'\n3. kişi: 'Üç'\n4. kişi: 'Dört'\n5. kişi: 'Beş'\nBu odada tam olarak kaç yalancı vardır?",
    'options': [
      '1',
      '2',
      '3',
      '4',
      '5',
      'Hiçbiri, hepsi doğru söylüyor'
    ],
    'correctIndex': 3,
    'insight': "Herkes farklı bir sayı söylediği için sadece 1 kişi doğruyu söylüyor olabilir (çünkü doğru cevap tek bir sayıdır, aynı anda 5 farklı doğru olmaz). Eğer 1 kişi dürüstse, diğer 4 kişi yalancıdır. 'Dört' diyen kişi doğruyu söylemektedir.",
  },
  {
    'id': 'RIDDLE_012',
    'category': 'Sıra Mantığı ve Paradoks',
    'scenario': "50 kişi tek sıra halinde duruyor (1’den 50’ye, 1 numara en arkada, 50 numara en önde). Tek numaralar (1, 3, 5... 49) 'Önümdeki herkes yalancı' diyor. Çift numaralar (2, 4, 6... 50) 'Arkamdaki herkes yalancı' diyor. (Herkes ya hep doğru ya hep yalan söyler). Bu grupta en fazla kaç dürüst olabilir?",
    'options': [
      'Sadece 50. kişi dürüsttür',
      'En fazla 2 dürüst olabilir',
      'Sadece 1. ve 50. kişiler dürüsttür',
      'Yarısıdürüsttür',
      'Hiçbiri dürüst olamaz, hepsi yalancı',
      'En fazla 3 dürüst olabilir'
    ],
    'correctIndex': 1,
    'insight': "Eğer 50. dürüst olsaydı, önünde kimse olmadığı için bu ifade geçersiz olurdu. 49. kişi 'Önümdeki (Sadece 50. kişi) yalancı' diyor, bu doğru olabilir. 50 yalancıysa 49 dürüsttür. Çift numaraların argümanı arkaya yöneliktir. Zincirleme çözüldüğünde en fazla dürüst kişi sayısı 2'dir: Bunlar 49. ve 2. kişilerdir.",
  },
  {
    'id': 'RIDDLE_013',
    'category': 'Zamanlı İşlem ve Yanılsama',
    'scenario': "Ormanda bir aslan ve tekboynuz yaşıyor.\nAslan; Pazartesi, Salı, Çarşamba günleri YALAN söyler, diğer günler DOĞRU söyler.\nTekboynuz; Perşembe, Cuma, Cumartesi günleri YALAN söyler, diğer günler DOĞRU söyler.\nBugün ormanda karşılaşıyorlar.\nAslan: 'Dün yalan söylüyordum.'\nTekboynuz: 'Ben de bugün dünkü gibi yalan söylüyordum.' (Veya sadece 'Ben de dün yalan söylüyordum').\nBugün günlerden hangisidir?",
    'options': [
      'Pazartesi',
      'Salı',
      'Çarşamba',
      'Perşembe',
      'Cuma',
      'Pazar'
    ],
    'correctIndex': 3,
    'insight': "Perşembe günü Aslan doğruyu söyler (ve Çarşamba yalan günüdür, yani 'Dün yalan söylüyordum' diyebilir). Tekboynuz ise Perşembe günü yalan söyler (Çarşamba doğru günüydü, dolayısıyla 'Dün yalan söylüyordum' cümlesi aslında bir yalandır). Bu iki ifadenin aynı anda sağlandığı tek gün Perşembe'dir.",
  },
  {
    'id': 'RIDDLE_014',
    'category': 'Doğruluk Çıkarımı',
    'scenario': "Üç kişi: Alex, Ben, Cody. \nBiri Şövalye (her zaman doğru), biri Düzenbaz (her zaman yalan), biri Casus (istediğini söyler, bazen yalan bazen doğru).\nAlex: 'Cody düzenbazdır.'\nBen: 'Alex şövalyedir.'\nCody: 'Ben casusum.'\nHer birinin gerçek kimliği (Alex, Ben, Cody) sırasıyla nedir?",
    'options': [
      'Şövalye, Casus, Düzenbaz',
      'Casus, Düzenbaz, Şövalye',
      'Düzenbaz, Şövalye, Casus',
      'Düzenbaz, Casus, Şövalye',
      'Şövalye, Düzenbaz, Casus',
      'Casus, Şövalye, Düzenbaz'
    ],
    'correctIndex': 0,
    'insight': "Eğer Ben doğruyu söylüyorsa Alex Şövalyedir. O zaman Ben'in kendisi Şövalye olamaz (sadece 1 şövalye var). Demek ki Ben Casus'tur. Cody hiçbir zaman Şövalye veya Düzenbazken 'Ben casusum' diyemez (Şövalye yalan söyleyemez, Düzenbaz zaten kendini casus ilan edemez... aslında edebilir, düzenbaz her zaman yalan söyler. Cody düzenbazsa yalan söyleyip casusum der). Alex Şövalye, Ben Casus, Cody Düzenbazdır.",
  },
  {
    'id': 'RIDDLE_016',
    'category': 'Fiziksel Yanal Düşünme',
    'scenario': "Silindirik, içi şarap dolu ama üst kapağı olmayan bir fıçı düşünün. Kadın: 'Fıçı yarıdan fazla dolu.' Diyor. Adam: 'Hayır, yarıdan az.' diyor. Hiçbir ölçüm aleti, çubuk veya kap kullanmadan, hem de bir damla bile şarap dökmeden kimin haklı olduğunu KESİN olarak nasıl anlarsınız?",
    'options': [
      'Güneş ışığının yüzeyde oluşturduğu gölge açısını izleyerek',
      'Fıçıya hafifçe vurup tok veya tiz sesten yankı süresini dinleyerek',
      'Fıçıyı şarap dudağınagelene kadar yavaşça eğerek',
      'Sıvının rüzgardaki dalgalanma hızına bakarak',
      'İçerisine ağır bir taş atıp taşma oranına göre hesaplayarak',
      'Fıçının dışındaki soğukluk, terleme çizgisine dışarıdan bakarak'
    ],
    'correctIndex': 2,
    'insight': "Fıçıyı sıvı tam dışarı akacak sınıra (dudağına) gelene kadar eğersiniz. Eğik bir silindirde üst uç dudağa değerken, alt tabanın seviyesine bakılır. Eğer fıçının alt tabanı (köşesi) hala sıvının altındaysa yarıdan fazladır. Eğer sıvı tabanın altına düşmüş ve dipsiz köşe görünüyorsa yarıdan azdır.",
  },
  {
    'id': 'RIDDLE_017',
    'category': 'Matematiksel Mantık ve Bahis',
    'scenario': "Susan ve Lisa tenis oynuyorlar. Her oyunda kaybeden, kazanana 1 TL verecek. Günün sonunda Susan maçlardan toplam 3 TL kâr ederek ayrılıyor. Lisa ise gün içinde tam 5 oyun kazanmayı başarıyor. İkisi toplamda kaç oyun oynamıştır?",
    'options': [
      '8 Oyun',
      '15 Oyun',
      '5 Oyun',
      '11 Oyun',
      '13 Oyun',
      '9 Oyun'
    ],
    'correctIndex': 3,
    'insight': "Lisa 5 oyun kazandı, demek ki Susan'dan 5 TL aldı. Susan'ın günün sonunda net 3 TL kazançta olabilmesi için, kaybettiği o 5 TL'yi geri alması VE üzerine 3 TL daha kazanması gerekir (Yani Susan 5 + 3 = 8 oyun kazanmıştır). Susan 8, Lisa 5 galibiyet aldı. Toplam oyun sayısı: 8 + 5 = 11 oyundur.",
  },
  {
    'id': 'RIDDLE_020',
    'category': 'Algoritmik Arama ve Kutu Bulmacası',
    'scenario': "1'den 5'e kadar numaralandırılmış beş kutu yan yana duruyor. Kedi her gece BİR YANDAKİ (sağ veya sol) bitişik kutuya zıplamak zorundadır. Her sabah uyanıp sadece bir kutu açma hakkınız vardır. Kediyi kesin ve garantili olarak en hızlı hangi düzende kutu açarak bulabilirsiniz?",
    'options': [
      'En fazla 3 günde garantilidir: 1, 3, 5 sırasıyla açılırsa',
      'Takip etmek bir algoritmadan çok tamamen şansa bağlıdır',
      'En fazla 5 günde: Sırayla 1, 2, 3, 4, 5 açılırsa kedi köşe sıkışır',
      'En fazla 6 günde: Sırayla 2, 3, 4 ve ardından tekrar 2, 3, 4 açıldığında',
      'Kediyi bulmanın imkanı yoktur çünkü döngü sonsuzdur',
      'Sırayla sağdan başlanıp 5, 4, 3 açıldığında en fazla 3 gün sürer'
    ],
    'correctIndex': 3,
    'insight': "En fazla 6 günde bulursunuz: 2, 3, 4, 2, 3, 4 (veya 2,3,4,4,3,2) stratejisiyle kesinleşir. Başta kedi tek nolu bir kutudaysa 2-3-4 açılışında kesin denk gelirsiniz. Eğer kedi baştan çift nolu kutudaysa, 2-3-4 serisinde yakalayamazsınız ancak bu seri bitince kedi paritesi değişip çift kutu döngüsüne girer ve ikinci turdaki 2-3-4 veya 4-3-2 açılışında kesin yakalanır.",
  },
  {
    'id': 'RIDDLE_022',
    'category': 'Kelime Oyunu ve Basit Yanıltmaca',
    'scenario': "Bir çiftçinin 17 tane sağlıklı koyunu vardı. Köye bir salgın geldi ve koyunlardan 9 tanesi hastalandı. Sürüde başka bir ölüm veya kayıp yaşanmadı. Çiftçinin şu anda kaç koyunu kalmıştır?",
    'options': [
      '8',
      '0',
      '9',
      '17',
      '18',
      'Bilinemez'
    ],
    'correctIndex': 3,
    'insight': "Cevap 17'dir. Soruda 9 tanesi hastalandı deniyor, öldü veya kayboldu denmiyor. Hastalanan koyunlar da hala çiftçinin koyunları olduğu için toplam sahip olduğu koyun sayısı değişmemiştir.",
  },
  {
    'id': 'RIDDLE_023',
    'category': 'Takvim Mantığı',
    'scenario': "Dünya çapında istatistik yapıldığında, insanlar yılın hangi ayında EN AZ süre boyunca uyumuş olurlar?",
    'options': [
      'Ağustos',
      'Aralık',
      'Ocak',
      'Şubat',
      'Haziran',
      'Eylül'
    ],
    'correctIndex': 3,
    'insight': "Şubat ayıdır. Ortalama olarak en az gün sayısına (28 veya 29 gün) sahip olduğu için, o ay boyunca edilen toplam uyku süresi diğer tüm 30 ve 31 günlük aylardan çok daha az çıkar.",
  },
  {
    'id': 'RIDDLE_026',
    'category': 'Kelimelerle Mantık Oyunu',
    'scenario': "Bir adamın tam 9 tane çocuğu vardır. Bu çocukların 'yarısı' kız çocuğudur. Bu durum, buçuklu çocuk olamayacağına göre matematiksel ve mantıksal olarak nasıl açıklanabilir?",
    'options': [
      'Üvey çocukları hesaba katılmamaktadır, onlar matematikten düşer',
      'Çocukların hepsi aslında zaten erkek çocuğudur, yarısı lafı yalandır',
      'Çocukların hepsi kız çocuğudur, dolayısıyla yarısı da kızdır',
      '"Yarısı" kelimesi aslında mahalledeki diğer kadınları temsil eder',
      'Gruptaki kızların hepsi ikizdir, dolayısıyla oranlamaya girmezler',
      'Baştaki çocuk cinsiyetsizdir, sadece 8 çocuk üstünden hesap yapılmıştır'
    ],
    'correctIndex': 2,
    'insight': "Adamın çocuklarının 'hepsi' kızdır. Eğer bütün kardeşler kızsa, o grubun herhangi bir yarısını alın, onlar da yine 'kız' olacaktır. 'Yarısı kız' cümlesi diğer yarısının erkek olduğunu iddia etmez, sadece bir yarısının kız olduğunu belirtir ve bu tamamen doğrudur.",
  }
];
