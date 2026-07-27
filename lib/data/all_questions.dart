// Tüm soruların birleştirildiği tek dosya, Maymundan Zeki Misin?
final List<Map<String, dynamic>> allQuestionsData = [
  {
    'id': 'IQ_Pattern_001',
    'category': 'Matematiksel Örüntü',
    'timeLimitSeconds': 60,
    'scenario':
        "Aşağıdaki 3x3 tabloda sayılar arasında gizli bir bağıntı vardır:\n\nÜst satır: 3, 2, 13\nOrta satır: 5, 2, 29\nAlt satır: 6, 4, ?\n\nSoru işareti yerine hangi sayı gelmelidir?",
    'options': ['52', '48', '50', '36', '42', '60'],
    'correctIndex': 0,
    'insight':
        "Mantık: Her satırdaki ilk iki sayının karelerinin toplamı, üçüncü sayıyı vermektedir. Formül: A² + B² = C.\n\nÜst satır: 3² + 2² = 9 + 4 = 13\nOrta satır: 5² + 2² = 25 + 4 = 29\nAlt satır: 6² + 4² = 36 + 16 = 52 olmalıdır.",
  },
  {
    'id': 'RIDDLE_011',
    'category': 'Mantık Bulmacaları ve İfadeler',
    'timeLimitSeconds': 60,
    'scenario':
        "Beş kişi bir odada oturuyor. Her biri ya her zaman doğruyu söyleyen (dürüst) ya da her zaman yalan söyleyen (yalancı). Herkes diğerlerini tanıyor. Her birine 'Aranızda kaç yalancı var?' diye soruluyor. Cevaplar sırayla şöyledir:\n1. kişi: 'Bir'\n2. kişi: 'İki'\n3. kişi: 'Üç'\n4. kişi: 'Dört'\n5. kişi: 'Beş'\nBu odada tam olarak kaç yalancı vardır?",
    'options': ['1', '2', '3', '4', '5', 'Hiçbiri, hepsi doğru söylüyor'],
    'correctIndex': 3,
    'insight':
        "Herkes farklı bir sayı söylediği için sadece 1 kişi doğruyu söylüyor olabilir (çünkü doğru cevap tek bir sayıdır, aynı anda 5 farklı doğru olmaz). Eğer 1 kişi dürüstse, diğer 4 kişi yalancıdır. 'Dört' diyen kişi doğruyu söylemektedir.",
  },
  {
    'id': 'RIDDLE_012',
    'category': 'Sıra Mantığı ve Paradoks',
    'timeLimitSeconds': 60,
    'scenario':
        "50 kişi tek sıra halinde duruyor (1’den 50’ye, 1 numara en arkada, 50 numara en önde). Tek numaralar (1, 3, 5... 49) 'Önümdeki herkes yalancı' diyor. Çift numaralar (2, 4, 6... 50) 'Arkamdaki herkes yalancı' diyor. (Herkes ya hep doğru ya hep yalan söyler). Bu grupta en fazla kaç dürüst olabilir?",
    'options': [
      'Sadece 50. kişi dürüsttür',
      'En fazla 2 dürüst olabilir',
      'Sadece 1. ve 50. kişiler dürüsttür',
      'Yarısıdürüsttür',
      'Hiçbiri dürüst olamaz, hepsi yalancı',
      'En fazla 3 dürüst olabilir',
    ],
    'correctIndex': 1,
    'insight':
        "Eğer 50. dürüst olsaydı, önünde kimse olmadığı için bu ifade geçersiz olurdu. 49. kişi 'Önümdeki (Sadece 50. kişi) yalancı' diyor, bu doğru olabilir. 50 yalancıysa 49 dürüsttür. Çift numaraların argümanı arkaya yöneliktir. Zincirleme çözüldüğünde en fazla dürüst kişi sayısı 2'dir: Bunlar 49. ve 2. kişilerdir.",
  },
  {
    'id': 'RIDDLE_013',
    'category': 'Zamanlı İşlem ve Yanılsama',
    'timeLimitSeconds': 50,
    'scenario':
        "Ormanda bir aslan ve tekboynuz yaşıyor.\nAslan; Pazartesi, Salı, Çarşamba günleri YALAN söyler, diğer günler DOĞRU söyler.\nTekboynuz; Perşembe, Cuma, Cumartesi günleri YALAN söyler, diğer günler DOĞRU söyler.\nBugün ormanda karşılaşıyorlar.\nAslan: 'Dün yalan söylüyordum.'\nTekboynuz: 'Ben de bugün dünkü gibi yalan söylüyordum.' (Veya sadece 'Ben de dün yalan söylüyordum').\nBugün günlerden hangisidir?",
    'options': ['Pazartesi', 'Salı', 'Çarşamba', 'Perşembe', 'Cuma', 'Pazar'],
    'correctIndex': 3,
    'insight':
        "Perşembe günü Aslan doğruyu söyler (ve Çarşamba yalan günüdür, yani 'Dün yalan söylüyordum' diyebilir). Tekboynuz ise Perşembe günü yalan söyler (Çarşamba doğru günüydü, dolayısıyla 'Dün yalan söylüyordum' cümlesi aslında bir yalandır). Bu iki ifadenin aynı anda sağlandığı tek gün Perşembe'dir.",
  },
  {
    'id': 'RIDDLE_014',
    'category': 'Doğruluk Çıkarımı',
    'timeLimitSeconds': 60,
    'scenario':
        "Üç kişi: Alex, Ben, Cody. \nBiri Şövalye (her zaman doğru), biri Düzenbaz (her zaman yalan), biri Casus (istediğini söyler, bazen yalan bazen doğru).\nAlex: 'Cody düzenbazdır.'\nBen: 'Alex şövalyedir.'\nCody: 'Ben casusum.'\nHer birinin gerçek kimliği (Alex, Ben, Cody) sırasıyla nedir?",
    'options': [
      'Şövalye, Casus, Düzenbaz',
      'Casus, Düzenbaz, Şövalye',
      'Düzenbaz, Şövalye, Casus',
      'Düzenbaz, Casus, Şövalye',
      'Şövalye, Düzenbaz, Casus',
      'Casus, Şövalye, Düzenbaz',
    ],
    'correctIndex': 0,
    'insight':
        "Eğer Ben doğruyu söylüyorsa Alex Şövalyedir. O zaman Ben'in kendisi Şövalye olamaz (sadece 1 şövalye var). Demek ki Ben Casus'tur. Cody hiçbir zaman Şövalye veya Düzenbazken 'Ben casusum' diyemez (Şövalye yalan söyleyemez, Düzenbaz zaten kendini casus ilan edemez... aslında edebilir, düzenbaz her zaman yalan söyler. Cody düzenbazsa yalan söyleyip casusum der). Alex Şövalye, Ben Casus, Cody Düzenbazdır.",
  },
  {
    'id': 'RIDDLE_016',
    'category': 'Fiziksel Yanal Düşünme',
    'timeLimitSeconds': 45,
    'scenario':
        "Silindirik, içi şarap dolu ama üst kapağı olmayan bir fıçı düşünün. Kadın: 'Fıçı yarıdan fazla dolu.' Diyor. Adam: 'Hayır, yarıdan az.' diyor. Hiçbir ölçüm aleti, çubuk veya kap kullanmadan, hem de bir damla bile şarap dökmeden kimin haklı olduğunu KESİN olarak nasıl anlarsınız?",
    'options': [
      'Güneş ışığının yüzeyde oluşturduğu gölge açısını izleyerek',
      'Fıçıya hafifçe vurup tok veya tiz sesten yankı süresini dinleyerek',
      'Fıçıyı şarap dudağınagelene kadar yavaşça eğerek',
      'Sıvının rüzgardaki dalgalanma hızına bakarak',
      'İçerisine ağır bir taş atıp taşma oranına göre hesaplayarak',
      'Fıçının dışındaki soğukluk, terleme çizgisine dışarıdan bakarak',
    ],
    'correctIndex': 2,
    'insight':
        "Fıçıyı sıvı tam dışarı akacak sınıra (dudağına) gelene kadar eğersiniz. Eğik bir silindirde üst uç dudağa değerken, alt tabanın seviyesine bakılır. Eğer fıçının alt tabanı (köşesi) hala sıvının altındaysa yarıdan fazladır. Eğer sıvı tabanın altına düşmüş ve dipsiz köşe görünüyorsa yarıdan azdır.",
  },
  {
    'id': 'RIDDLE_017',
    'category': 'Matematiksel Mantık ve Bahis',
    'timeLimitSeconds': 45,
    'scenario':
        "Susan ve Lisa tenis oynuyorlar. Her oyunda kaybeden, kazanana 1 TL verecek. Günün sonunda Susan maçlardan toplam 3 TL kâr ederek ayrılıyor. Lisa ise gün içinde tam 5 oyun kazanmayı başarıyor. İkisi toplamda kaç oyun oynamıştır?",
    'options': ['8 Oyun', '15 Oyun', '5 Oyun', '11 Oyun', '13 Oyun', '9 Oyun'],
    'correctIndex': 3,
    'insight':
        "Lisa 5 oyun kazandı, demek ki Susan'dan 5 TL aldı. Susan'ın günün sonunda net 3 TL kazançta olabilmesi için, kaybettiği o 5 TL'yi geri alması VE üzerine 3 TL daha kazanması gerekir (Yani Susan 5 + 3 = 8 oyun kazanmıştır). Susan 8, Lisa 5 galibiyet aldı. Toplam oyun sayısı: 8 + 5 = 11 oyundur.",
  },
  {
    'id': 'RIDDLE_020',
    'category': 'Algoritmik Arama ve Kutu Bulmacası',
    'timeLimitSeconds': 60,
    'scenario':
        "1'den 5'e kadar numaralandırılmış beş kutu yan yana duruyor. Kedi her gece BİR YANDAKİ (sağ veya sol) bitişik kutuya zıplamak zorundadır. Her sabah uyanıp sadece bir kutu açma hakkınız vardır. Kediyi kesin ve garantili olarak en hızlı hangi düzende kutu açarak bulabilirsiniz?",
    'options': [
      'En fazla 3 günde garantilidir: 1, 3, 5 sırasıyla açılırsa',
      'Takip etmek bir algoritmadan çok tamamen şansa bağlıdır',
      'En fazla 5 günde: Sırayla 1, 2, 3, 4, 5 açılırsa kedi köşe sıkışır',
      'En fazla 6 günde: Sırayla 2, 3, 4 ve ardından tekrar 2, 3, 4 açıldığında',
      'Kediyi bulmanın imkanı yoktur çünkü döngü sonsuzdur',
      'Sırayla sağdan başlanıp 5, 4, 3 açıldığında en fazla 3 gün sürer',
    ],
    'correctIndex': 3,
    'insight':
        "En fazla 6 günde bulursunuz: 2, 3, 4, 2, 3, 4 (veya 2,3,4,4,3,2) stratejisiyle kesinleşir. Başta kedi tek nolu bir kutudaysa 2-3-4 açılışında kesin denk gelirsiniz. Eğer kedi baştan çift nolu kutudaysa, 2-3-4 serisinde yakalayamazsınız ancak bu seri bitince kedi paritesi değişip çift kutu döngüsüne girer ve ikinci turdaki 2-3-4 veya 4-3-2 açılışında kesin yakalanır.",
  },
  {
    'id': 'RIDDLE_022',
    'category': 'Kelime Oyunu ve Basit Yanıltmaca',
    'timeLimitSeconds': 25,
    'scenario':
        "Bir çiftçinin 17 tane sağlıklı koyunu vardı. Köye bir salgın geldi ve koyunlardan 9 tanesi hastalandı. Sürüde başka bir ölüm veya kayıp yaşanmadı. Çiftçinin şu anda kaç koyunu kalmıştır?",
    'options': ['8', '0', '9', '17', '18', 'Bilinemez'],
    'correctIndex': 3,
    'insight':
        "Cevap 17'dir. Soruda 9 tanesi hastalandı deniyor, öldü veya kayboldu denmiyor. Hastalanan koyunlar da hala çiftçinin koyunları olduğu için toplam sahip olduğu koyun sayısı değişmemiştir.",
  },
  {
    'id': 'RIDDLE_023',
    'category': 'Takvim Mantığı',
    'timeLimitSeconds': 20,
    'scenario':
        "Dünya çapında istatistik yapıldığında, insanlar yılın hangi ayında EN AZ süre boyunca uyumuş olurlar?",
    'options': ['Ağustos', 'Aralık', 'Ocak', 'Şubat', 'Haziran', 'Eylül'],
    'correctIndex': 3,
    'insight':
        "Şubat ayıdır. Ortalama olarak en az gün sayısına (28 veya 29 gün) sahip olduğu için, o ay boyunca edilen toplam uyku süresi diğer tüm 30 ve 31 günlük aylardan çok daha az çıkar.",
  },
  {
    'id': 'FUN_056',
    'category': 'Zaman Paradoksu',
    'timeLimitSeconds': 30,
    'scenario':
        'Bir suikastçı hedefine: "Seni hafta içi bir gün öğle vakti vuracağım ama o sabah uyandığında o gün öleceğini asla tahmin edememiş olacaksın" der. Hedef "Beni asla vuramazsın" der. Neden?',
    'options': [
      'Cuma günü vurulamaz çünkü perşembe sağsa cuma kesinleşir; bu mantıkla tüm günler elenir',
      'Hedef evden hiç çıkmayarak olasılığı sıfırlar',
      'Mektup sürprizi zaten bozmuştur',
      'Suikastçı mektubu yanlış kişiye göndermiştir',
      'Hafta içi kavramı çok geniştir',
      'Ölüm tahmini imkansız bir bilimdir',
    ],
    'correctIndex': 0,
    'insight':
        'Sürpriz Sınav Paradoksu! Eğer Perşembe sağsa Cuma öleceğini kesin bilir (sürpriz bozulur). Cuma elenince, Çarşamba sağsa Perşembe kesinleşir. Geriye doğru tüm günler elenir.',
  },
  {
    'id': 'RIDDLE_001',
    'category': 'Yanal Düşünme',
    'scenario':
        "Bir adam bara girer ve barmenden 'Bir bardak su' ister. Barmen aniden tabancasını çıkarıp adamın başına doğrultur. Adam 'Çok teşekkür ederim!' der ve gülerek çıkar. Neden?",
    'options': [
      'Barmen adamın hıçkırığını korkutarak geçirmek istemiştir',
      'Adam bir suikastçıdır ve silah bir onay işaretidir',
      'Silah aslında bir su tabancasıdır',
      'Adam barmene olan borcunu silmesi için şaka yapmıştır',
      'Adam tiyatro provası yapmaktadır',
      'Barmen yanlışlıkla silah çekmiştir',
    ],
    'correctIndex': 0,
    'insight':
        "Adamın şiddetli bir hıçkırığı vardı. Barmen su vermek yerine onu ani bir korkuyla sarsarak hıçkırığını geçirdi. Adam da iyileştiği için teşekkür etti. Gerçek bir 'şok' tedavisi!",
  },
  {
    'id': 'RIDDLE_002',
    'category': 'Fiziksel Çözümleme',
    'scenario':
        "Bir adam 10 katlı bir apartmanda yaşıyor. Asansöre bindiğinde her zaman 7. kata kadar çıkıp kalan yolu merdivenle yürüyor. Ancak yağmurlu günlerde direkt 10. kata çıkabiliyor. Neden?",
    'options': [
      'Üst katlarda asansör bozulmaktadır',
      'Adam egzersiz yapmayı sevmektedir',
      'Adam cücedir ve boyu sadece 7. kat düğmesine yetmektedir',
      'Yağmurlu günlerde asansör daha hızlı çalışmaktadır',
      '7. kattan sonra elektrikler kesilmektedir',
      'Adamın 10. kat için özel anahtarı yoktur',
    ],
    'correctIndex': 2,
    'insight':
        "Adamın boyu çok kısadır (cücedir). Normalde sadece 7. katın düğmesine uzanabiliyor. Yağmurlu günlerde ise elindeki şemsiyeyi kullanarak 10. katın düğmesine basabiliyor.",
  },
  {
    'id': 'RIDDLE_003',
    'category': 'Yanal Düşünme',
    'scenario':
        "Boş bir arazide, sırtında bir çanta olan bir adam ölü bulunur. Çantası açılmamıştır. Etrafta hiçbir iz, araç veya başka bir insan yoktur. Bu adam neden ölmüştür?",
    'options': [
      'Çantanın içinde zehirli bir yılan vardı',
      'Adam susuzluktan ölmüştür',
      'Sırtındaki çanta aslında açılmayan bir paraşüttür',
      'Adam yıldırım çarpması sonucu ölmüştür',
      'Çanta çok ağır olduğu için kalbi durmuştur',
      'Adam aslında bir dağcıdır ve donmuştur',
    ],
    'correctIndex': 2,
    'insight':
        "Adam uçaktan atlayan bir paraşütçüdür. Paraşütü (sırtındaki çanta) açılmadığı için boş araziye çakılarak hayatını kaybetmiştir. Çantanın açılmamış olması ölüm sebebidir!",
  },
  {
    'id': 'RIDDLE_004',
    'category': 'Zaman Bağlamlı Dedüksiyon',
    'scenario':
        "İki adam bir barda aynı içkiyi sipariş eder. Biri içkiyi bir dikişte hızla bitirir ve ona hiçbir şey olmaz. Diğeri yavaş yavaş içer ve bir süre sonra ölür. Zehir neresindeydi?",
    'options': [
      'Bardağın kenarındaydı',
      'İçkinin içindeki buz küplerindeydi',
      'Barmenin parmaklarındaydı',
      'Sadece yavaş içen adamın bardağındaydı',
      'Şişenin dibindeydi',
      'Havada yayılan bir gazdaydı',
    ],
    'correctIndex': 1,
    'insight':
        "Zehir buzların içindeydi. Hızlı içen adam buzlar erimeden içkisini bitirdiği için kurtuldu. Yavaş içen adamın bardağında buzlar eridi ve zehir içkiye karıştı.",
  },
  {
    'id': 'RIDDLE_006',
    'category': 'Olay-Sonuç İlişkisi',
    'scenario':
        "Sakin bir gecede bir adam odasının ışığını kapatıp uyur. Sabah uyandığında 300 kişinin ölümüne sebep olduğunu fark eder. Adamın mesleği nedir?",
    'options': [
      'Hastane jeneratör görevlisi',
      'Nükleer santral mühendisi',
      'Deniz feneri bekçisi',
      'Hava trafik kontrolörü',
      'Baraj kapak sorumlusu',
      'Sokak lambası tamircisi',
    ],
    'correctIndex': 2,
    'insight':
        "Adam bir deniz feneri bekçisidir. Işığı kapattığı için dev bir gemi kayalıklara çarpmış ve batmıştır. Bazen tek bir düğme, yüzlerce hayat demektir.",
  },
  {
    'id': 'RIDDLE_009',
    'category': 'Nesnel Mantık',
    'scenario':
        "Ağzına kadar su dolu ağır bir fıçıya ne eklerseniz fıçı daha hafif olur?",
    'options': [
      'Zeytinyağı',
      'Hava kabarcıkları',
      'Bir delik',
      'Kuru buz',
      'Talaş',
      'Pamuk',
    ],
    'correctIndex': 2,
    'insight':
        "Fıçıya bir 'delik' eklerseniz içindeki su boşalır ve fıçı hafifler. Bazen bir şey eklemek, aslında bir şeyleri eksiltmektir.",
  },
  {
    'id': 'LATERAL_075',
    'category': 'Aile Twist',
    'scenario':
        'Bir kız şöyle der: "Babamın tek kızı benim kardeşim değildir." Bu kız yalan söylemiyorsa, bahsettiği kişi kimdir?',
    'options': [
      'Üvey kız kardeşi',
      'Kuzeni',
      'Kendisidir',
      'Annesidir',
      'Hayali arkadaşıdır',
      'Babası aslında başkasıdır',
    ],
    'correctIndex': 2,
    'insight':
        'Kız bizzat kendisinden bahsediyor! "Babamın tek kızı" kendisi olduğuna göre, kendisi kendi kardeşi olamaz. Cümle kurgusu beyni "başka bir akraba" aramaya itiyor.',
  },
  {
    'id': 'LATERAL_076',
    'category': 'Gözlem Zekası',
    'scenario':
        'Simsiyah bir araba, farları kapalı, sokak lambaları sönük ve dolunay yok. Yola fırlayan simsiyah bir kediyi şoför nasıl gördü ve ezmedi?',
    'options': [
      'Arabanın gece görüş kamerası vardı',
      'Kedi parlayan gözlere sahipti',
      'Çünkü gündüz vaktiydi',
      'Şoför aslında bir yapay zekaydı',
      'Sokaktaki kar kediyi belirgin kıldı',
      'Şoför yoldan geçen bir yayaydı',
    ],
    'correctIndex': 2,
    'insight':
        'Hava kararmış gibi bir atmosfer çizilse de, aslında "gündüz vakti" olduğu gerçeği atlanıyor. Gündüz vakti farların veya sokak lambalarının bir önemi yoktur. En klasik ama en etkili yanal düşünce sorusudur.',
  },
  {
    'id': 'LATERAL_078',
    'category': 'Kelime Paradoksu',
    'scenario':
        'Elimde tuttuğum sürece benimdir, ama başkasına verdiğim anda artık o şey bende de yoktur, başkasında da "tek başına" kalamaz. Nedir bu?',
    'options': ['Para', 'Zaman', 'Sır', 'Nefes', 'Bilgi', 'Sevgi'],
    'correctIndex': 2,
    'insight':
        'Cevap: Sır! Bir sırrı paylaştığınızda o artık bir "sır" olmaktan çıkar, yayılmış bir bilgiye dönüşür. Paylaştıkça yok olan tek şeydir.',
  },
  {
    'id': 'LATERAL_080',
    'category': 'Miktar Bilmecesi',
    'scenario':
        'İki baba ve iki oğul balığa çıkarlar. Toplamda sadece 3 balık tutarlar ama her birine tam birer balık düşer. Bu nasıl mümkün oldu?',
    'options': [
      'Balıklardan biri çok büyüktür',
      'Biri balığını diğerine vermiştir',
      'Grupta aslında sadece 3 kişi vardır (Dede, Baba, Oğul)',
      'Balıklar aslında önceden tutulmuştur',
      'Gruptan biri balık sevmiyordur',
      'Kalan 1 balık denize atılmıştır',
    ],
    'correctIndex': 2,
    'insight':
        'Grupta 3 kuşak vardır: Dede (baba), onun oğlu (hem baba hem oğul) ve onun oğlu (oğul). Yani toplamda 2 baba ve 2 oğul ederler ama fiziksel olarak 3 kişidirler.',
  },
  {
    'id': 'LATERAL_061',
    'category': 'Matematiksel Paradoks',
    'scenario':
        "Bir adam ölmeden önce 17 devesini 3 oğluna miras bırakıyor: 'Büyük oğul yarısını, orta oğul üçte birini, küçük oğul dokuzda birini alsın' diyor. Ama develer tam sayı çıkmıyor, bölünemiyor. Bir bilge geliyor ve sorunu anında, hiç deve kesmeden çözüyor. Bu nasıl mümkün?",
    'options': [
      'Bilge, en küçük oğula aslında hiç miras düşmediğini kanıtlıyor',
      'Develerden birinin hamile olduğunu iddia edip onu iki sayıyor',
      'Bilge kendi devesini veriyor, bölüştürüyor, sonra kendi devesini geri alıyor',
      'Büyük oğul kendi payından feragat edip oranları tam sayıya çeviriyor',
      'Mirasın aslında develerin kilosu üzerinden hesaplanması gerektiğini söylüyor',
      'Kalan 1 deveyi satıp parasını üçe bölüyorlar',
    ],
    'correctIndex': 2,
    'insight':
        "Bu ünlü bir Arap bilmecesidir. Bilge kendi devesini onlara verir, toplam 18 deve olur. \n18'in yarısı = 9 (Büyük oğul)\n18'in 1/3'ü = 6 (Orta oğul)\n18'in 1/9'u = 2 (Küçük oğul)\nToplam: 9 + 6 + 2 = 17. 18. deve artar ve bilge kendi devesini alıp gider!",
  },
  {
    'id': 'LATERAL_062',
    'category': 'Aile Bağları',
    'scenario':
        "Bir ailede toplam 5 çocuk var. Her çocuğun '1 erkek kardeşi ve 3 kız kardeşi' var. Bu ailede tam olarak kaç kız, kaç erkek çocuk vardır?",
    'options': [
      '2 erkek, 3 kız',
      '1 erkek, 4 kız',
      'Hiç erkek yok, hepsi kız ama üvey',
      '3 erkek, 2 kız',
      '4 erkek, 1 kız',
      '2 erkek, 4 kız',
    ],
    'correctIndex': 1,
    'insight':
        "4 kız, 1 erkek vardır. \nErkek çocuğun açısından: kendisi 1 erkek, geriye 4 kızı kardeşi kalır. \nKız çocuklarından birinin açısından: 1 erkek kardeşi vardır ve (kendi dışındaki) 3 kız kardeşi vardır. İfade mükemmel bir şekilde uyar.",
  },
  {
    'id': 'LATERAL_063',
    'category': 'Klasik Mitoloji',
    'scenario':
        "Bir varlık düşünün: Sabahları 4 ayakla, öğlenleri 2 ayakla, akşamları ise 3 ayakla yürür. Bu nedir?",
    'options': [
      'Bir maymun',
      'Bir mitolojik canavar',
      'Güneşin gölgesi',
      'Zamanın kendisi',
      'İnsan',
      'Bir karınca',
    ],
    'correctIndex': 4,
    'insight':
        "İnsan. Antik Sfenksin ünlü bilmecesidir. \n'Sabah' hayatın başlangıcıdır (bebeklikte emekler, 4 ayak). \n'Öğle' hayatın ortasıdır (yetişkinlik, 2 ayak). \n'Akşam' hayatın sonudur (yaşlılıkta baston kullanır, 3 ayak olur).",
  },
  {
    'id': 'LATERAL_064',
    'category': 'Soyut Algı',
    'scenario':
        "Gözünüzle çok net görürsünüz, ondan kaçamazsınız, ona tam olarak dokunmak veya elinizle yakalamak isterseniz asla tutamazsınız. Bu nedir?",
    'options': ['Rüzgar', 'Su', 'Ateş', 'Ruh', 'Gölge', 'Gökkuşağı'],
    'correctIndex': 4,
    'insight':
        "Cevap Gölge. Görürsünüz, size bağlıdır, hareket eder ama asla fiziksel olarak kavrayıp elinizde tutamazsınız.",
  },
  {
    'id': 'LATERAL_069',
    'category': 'Cinsiyet Varsayımı',
    'scenario':
        "Bir adam arkadaşına bir grup fotoğrafı gösteriyor. 'Bak bunlar benim kardeşlerim!' diyor sevgiyle. Sonra birazüzülerek ekliyor: 'Ama gel gör ki benim hiç erkek kardeşim yok.' Fotoğraftaki grup kimlerden oluşuyor ve bu nasıl mümkün oluyor?",
    'options': [
      'Adam kendi yalan söylüyor, hepsi erkek',
      'Adam bir köpekti aslen, kendi yavruları oradakiler',
      'Adam aslında kadındı',
      'Adamın gösterdiği fotoğraftakiler üvey anne/baba idi',
      'Fotoğraftakiler onun eşinin kardeşleriydi',
      'Fotoğraftakiler adamın kiz kardeşleridir',
    ],
    'correctIndex': 5,
    'insight':
        "Fotoğraftaki kişiler adamın KIZ kardeşleridir. Türkçede 'kardeş' kelimesi cinsiyetsiz kullanılır, beyin hemen bir grupta erkekler de arar ama hepsi adamın kız kardeşleridir, bu yüzden adamın erkek kardeşi yoktur.",
  },
  {
    'id': 'LATERAL_070',
    'category': 'Biyolojik Bağlar',
    'scenario':
        "Kendisini aynada izleyen bir adam şöyle sesli düşünüyor: 'Annemin tek bir oğlu var, ama O benim kardeşim falan değil!'... Adam burada kimden bahsediyor?",
    'options': [
      'Yeğeninden',
      'Babasından',
      'Kendisinden',
      'Dayısından',
      'Amcasından',
      'Ölmüş ikizinden',
    ],
    'correctIndex': 2,
    'insight':
        "Kendisinden bahsediyor. 'Annemin tek oğlu var' diyorsa o da adamın ta kendisidir. Kendi kardeşi olamayacağına göre bahsettiği 'tek oğul' aslında kendisidir.",
  },
  {
    "id": "ELITE_001",
    "category": "Sistem Mantığı",
    "timeLimitSeconds": 20,
    "scenario":
        "Bir binanın zemin katından (1. kat) başlayıp 4. katına çıkmak için tam 60 basamak tırmanman gerekiyor. Eğer aynı hızla ve her kat arasında eşit sayıda basamak olan bu merdivenlerden 8. kata kadar çıkmak istersen, toplamda kaç basamak çıkmış olursun?",
    "options": ["120", "140", "160", "100", "80"],
    "correctIndex": 1,
    "insight":
        "Tuzak: Beynimiz 8'in 4'ün iki katı olduğunu görüp hemen 60x2=120 cevabına koşar. Mantık: 1. kattan 4. kata çıkmak için 3 kat (aralık) tırmanırsın (60 / 3 = her kat arası 20 basamak). 8. kata çıkmak için ise zemin kattan itibaren 7 kat (aralık) tırmanman gerekir. 7 x 20 = 140!",
  },
  {
    "id": "LATERAL_105",
    "category": "Görselleştirme ve Detay",
    "timeLimitSeconds": 20,
    "scenario":
        "Bir şüpheli, olay anında evinde kitap okuduğunu iddia ediyor. Dedektife şöyle der: 'Hatta kaldığım yeri unutmamak için kitabın 75. ve 76. sayfalarının arasına kurumuş bir gül koymuştum, gidin bakın hala orada.' Dedektif, kitaba dokunmadan bile adamın yalan söylediğini anlıyor. Neden?",
    "options": [
      "75. sayfalar genelde resimlidir.",
      "75 ve 76. sayfalar aynı yaprağın ön ve arka yüzüdür.",
      "Kurutulmuş gül kitaba zarar verir, kimse yapmaz.",
      "Kitaplarda 75'ten sonra 77. sayfa gelir.",
      "Olay anında kütüphaneler kapalıdır.",
    ],
    "correctIndex": 1,
    "insight":
        "Cevap: 75 ve 76. sayfaların arasına hiçbir şey koyamazsın! Kitaplarda tek sayılar (75) her zaman bir yaprağın ön yüzü, çift sayılar (76) ise o aynı yaprağın tam arkasıdır. Bir şey koymak için 74 ile 75'in veya 76 ile 77'nin arasını açman gerekir.",
  },
  {
    'id': 'LATERAL_112',
    'category': 'Bağıl Konum Paradoksu',
    'timeLimitSeconds': 15,
    'scenario':
        'İstanbul’dan Ankara’ya doğru 120 km/s sabit hızla bir yolcu treni kalkıyor. Aynı anda Ankara’dan İstanbul’a doğru 260 km/s hızla bir hızlı tren yola çıkıyor. Bu iki tren tek hat üzerinde karşılaştıkları (birbirlerinin yanından geçtikleri) o anda, hangisi Ankara’ya daha yakındır?',
    'options': [
      'Hızlı Tren (260 km/s olan)',
      'Yolcu Treni (120 km/s olan)',
      'İkisi de aynı uzaklıktadır',
      'Hızlı trenin ivmesine bağlıdır',
      'Yolcu treni (Yol farkından dolayı)',
    ],
    'correctIndex': 2,
    'insight':
        'Tuzak: Beynimiz hemen hız farkına (260 vs 120) odaklanıp birinin daha çok yol kat ettiğini düşünerek mesafe hesabı yapmaya çalışır. Mantık: "Karşılaştıkları an" demek, ikisinin de aynı koordinatta olması demektir. Aynı noktada olan iki nesnenin başka bir şehre (Ankara) olan uzaklığı da doğal olarak birbirine eşittir.',
  },
  {
    'id': 'LATERAL_115',
    'category': 'Algı ve İletişim Tuzağı',
    'timeLimitSeconds': 15,
    'scenario':
        'Bir dilsiz, diş fırçası almak için bir dükkana girer. Dişlerini fırçalama hareketi yaparak satıcıya ne istediğini anlatır ve fırçasını başarıyla alır. Hemen ardından dükkana bir "kör" adam girer. Kör adam, güneş gözlüğü almak istediğini satıcıya en kısa yoldan nasıl anlatır?',
    'options': [
      'Gözlük takma hareketi yapar.',
      'Gözlerini işaret eder.',
      'Bastonunu satıcıya gösterir.',
      'Sadece "Güneş gözlüğü istiyorum" der.',
      'Dilsiz adamdan yardım ister.',
    ],
    'correctIndex': 3,
    'insight':
        'Tuzak: Beynimiz ilk örnekteki "dilsiz" ile "kör" arasında bir paralellik kurar ve kör adamın da bir "beden dili/işaret" kullanması gerektiğini varsayar. Mantık: Körler konuşabilir! En kısa yol, ağzıyla ne istediğini söylemektir. Mülakatlarda bu, "Önyargıların çözümü ne kadar gölgelediğini" ölçer.',
  },
  {
    'id': 'BURN_006',
    'category': 'Varlık Mantığı',
    'scenario':
        'Bir havuzda 3 balık var. Biri öldü, biri canlı, biri ise can çekişiyor. Havuzda toplam kaç balık kaldı?',
    'options': [
      '2 balık',
      '3 balık',
      '1 balık',
      '0 balık',
      '2.5 balık',
      'Sadece canlı olanlar kalır',
    ],
    'correctIndex': 1,
    'insight':
        'Ölmek, yok olmak değildir! Ölü balık fiziksel olarak hala havuzun içindedir. Beyin "öldü" kelimesini duyduğunda otomatik olarak "çıkarma" işlemi yapar ancak soru "canlı kalanları" değil, fiziksel mevcudiyeti soruyor.',
  },
  {
    'id': 'BURN_008',
    'category': 'Referans Hatası',
    'scenario':
        'Bir babanın 4 kızı var. Her kızın 1 erkek kardeşi var. Bu babanın toplam kaç çocuğu var?',
    'options': [
      '8 çocuk',
      '5 çocuk',
      '9 çocuk',
      '4 çocuk',
      '12 çocuk',
      '6 çocuk',
    ],
    'correctIndex': 1,
    'insight':
        'Aynı kişi, farklı referanslar! 4 kızın her birinin erkek kardeşi olan o "1 kişi", aslında hepsinin ortak kardeşidir. 4 kız + 1 erkek = 5 çocuk. Beyin "her" kelimesini duyunca otomatik olarak çarpma işlemi (4x1) yapma eğilimi gösterir.',
  },
  {
    'id': 'BURN_010',
    'category': 'Kalıp Tanıma',
    'scenario':
        'Emily\'nin annesinin 4 çocuğu var: Nisan, Mayıs, Haziran ve... Dördüncü çocuğun adı nedir?',
    'options': ['Temmuz', 'Mart', 'Emily', 'Ağustos', 'Aralık', 'Bilinemez'],
    'correctIndex': 2,
    'insight':
        'Pattern Recognition (Kalıp Tanıma)! Beyin Nisan-Mayıs-Haziran dizilimini görünce hemen "Temmuz" cevabına kilitlenir. Oysa sorunun ilk kelimesi cevabı zaten veriyor: Emily! Bu, hızlı düşünmenin (System 1) yavaş düşünmeyi (System 2) nasıl devre dışı bıraktığının örneğidir.',
  },
  {
    'id': 'BURN_024',
    'category': 'Karar Verme Mekanizması',
    'scenario':
        'Randevuna 5 dakika var. Arabayla 5 dakikada, yürüyerek 20 dakikada gidebilirsin. Araba anahtarını bulamıyorsun. Kaç dakikadır arıyorsundur bilmiyorsun ama anahtarı bulup arabaya binmek için hala vaktin var mı?',
    'options': [
      'Evet, 5 dakika daha arayabilirsin',
      'Hayır, hemen yürümeye başlamalısın',
      '0 dakika, her saniye seni daha da geciktiriyor',
      'Yürümek zaten seni geç bırakacağı için anahtarı aramaya devam etmelisin',
      'Araba hızına bağlı',
      'Bilinemez',
    ],
    'correctIndex': 2,
    'insight':
        'Fırsat Maliyeti! Şu an randevuna tam 5 dakika varsa ve araba yolculuğu da 5 dakika sürüyorsa, anahtarı aramak için harcayacağın her 1 saniye seni geç bırakacaktır. Seçenekler arasında kaybolmadan önce "tam o an"da olduğunu fark et.',
  },
  {
    'id': 'BURN_027',
    'category': 'Psikolojik Rastgelelik',
    'scenario':
        "1'den 10'a kadar rastgele bir sayı seçmen istenseydi, istatistiksel olarak insanların en çok hangi sayıyı seçeceğini tahmin edersin?",
    'options': ['1', '5', '7', '10', '3', '8'],
    'correctIndex': 2,
    'insight':
        'Mavi-Yedi Fenomeni! İnsanlar "rastgele" bir sayı seçerken genellikle 7\'yi seçerler. 5 çok "orta", 1 ve 10 çok "uç", çift sayılar ise çok "düzenli" gelir. İnsan zihni, 7 sayısını diğerlerinden daha "başıboş ve gizemli" algılar. Gerçek rastgelelik insan için zordur.',
  },
  {
    'id': 'LATERAL_001',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Kuzey Kutbu\'ndan 5 metre güneye, sonra 5 metre doğuya, sonra 5 metre kuzeye yürüyorsun. Başladığın noktaya geri döndüğünü fark ediyorsun. Orada karşına bir ayı çıkıyor. Ayının rengi nedir?',
    'options': [
      'Kahverengi (Boz ayı)',
      'Siyah (Kara ayı)',
      'Beyaz (Kutup ayısı)',
      'Boz (Grizzly)',
      'Ayı aslında orada değildir',
      'Hesaplanamaz',
    ],
    'correctIndex': 2,
    'insight':
        'Dünya bir küre olduğu için Kuzey Kutbu\'nda "üçgen" çizip geri dönebilirsin. Kuzey Kutbu\'nda yaşayan tek ayı türü ise Kutup Ayısıdır, yani rengi beyazdır! Elon Musk bu soruyu SpaceX mülakatlarında adayların coğrafi ve mantıksal sentez yeteneğini ölçmek için soruyor.',
  },
  {
    'id': 'LATERAL_002',
    'category': 'Sayısal Mantık',
    'scenario':
        'Bir odada 1000 kapalı dolap var. 1000 kişi sırayla geçiyor. 1. kişi her dolabı açıyor. 2. kişi her 2. dolabı (2,4,6...) değiştiriyor. 3. kişi her 3. dolabı değiştiriyor. 1000. kişiden sonra kaç dolap AÇIK kalır?',
    'options': [
      '500 dolap',
      '31 dolap',
      '1 dolap',
      '0 dolap',
      '100 dolap',
      '250 dolap',
    ],
    'correctIndex': 1,
    'insight':
        'Bölen Sayısı Kuralı! Bir dolap, sadece tek sayıda böleni olan hamlelerde (aç-kapat) açık kalır. Sadece "Tam Kare" sayıların (1, 4, 9, 16...) tek sayıda böleni vardır. 1000\'e kadar olan en büyük tam kare 31²=961 olduğu için tam 31 dolap açık kalır. Google\'ın en meşhur "analitik düşünce" mülakat sorusudur.',
  },
  {
    'id': 'LATERAL_004',
    'category': 'Algoritmik Verimlilik',
    'scenario':
        '8 bilyeden biri diğerlerinden hafifçe daha AĞIR. Bir teraziyle en AZ kaç tartıda ağır bilyeyi kesin olarak bulabilirsin?',
    'options': [
      '4 tartı',
      '3 tartı',
      '2 tartı',
      '1 tartı',
      '7 tartı',
      '5 tartı',
    ],
    'correctIndex': 2,
    'insight':
        'Üçe Bölme Stratejisi! İnsanlar genelde "ikiye bölmeyi" (Binary Search) düşünür. Ama terazinin 3 sonucu vardır: Sol, Sağ, Eşit. 3-3 tartıp 2\'yi dışarıda bırakırsın. Eşitse ağır olan dışarıdaki 2\'dedir (1 tartı daha). Değilse ağır taraftaki 3\'ü 1-1 tartarsın. Toplamda sadece 2 tartıda sonuç kesindir!',
  },
  {
    'id': 'LATERAL_007',
    'category': 'Oyun Teorisi',
    'scenario':
        '5 rasyonel korsan 100 altını bölüşecektir. En kıdemli teklif yapar. %50 ve üzeri OY alamazsa denize atılır. Herkes hayatta kalmak ve en çok altını almak isterse, lider kaç altın alabilir?',
    'options': [
      '20 altın',
      '98 altın',
      '50 altın',
      '25 altın',
      '1 altın',
      '0 altın',
    ],
    'correctIndex': 1,
    'insight':
        'Backward Induction (Geriye Doğru Çıkarım)! Sondan başlarsan; son iki kişi kalsa lider 100\'ünü de alır (kendi oyu %50 eder). Bu yüzden kıdemli lider, 3. ve 5. korsanlara (onlar elenirse 0 alacaklarını bildikleri için) sadece 1\'er altın vererek oylarını satın alır ve 98 altını cebine koyar.',
  },
  {
    'id': 'LATERAL_008',
    'category': 'Olasılık Yanılgısı',
    'scenario':
        'Bir madeni parayı 5 kez attın ve hepsi TURA geldi. 6. atışın YAZI gelme olasılığı nedir?',
    'options': [
      '%50',
      '%80 (Yazı gelme zamanı geldi)',
      '%20 (Tura serisi devam eder)',
      '%100 (Mutlaka yazı gelir)',
      '%1',
      'Piyango çıkma ihtimaliyle aynı',
    ],
    'correctIndex': 0,
    'insight':
        'Kumarbaz Yanılgısı (Gambler\'s Fallacy)! Para "hafızasızdır". Geçmişteki atışlar, bir sonraki bağımsız atışın olasılığını etkilemez. Beynimiz "denge" aradığı için yazının "vaktinin geldiğini" sanır ama matematik hala 1/2 der.',
  },
  {
    'id': 'LATERAL_015',
    'category': 'Geometrik Çözüm',
    'scenario':
        'Şekli düzensiz olan bir bardağın TAM YARIYA kadar dolu olup olmadığını, hiçbir ölçüm aleti kullanmadan nasıl kesin olarak anlarsın?',
    'options': [
      'Göz kararı tahmin ederek',
      'Bardağı 45 derece eğip su dudağa değdiğinde dibi kontrol ederek',
      'Suyu başka bir bardağa boşaltarak',
      'Bardağın ağırlığını tartarak',
      'Bardağın etrafına ip sararak',
      'Işığın kırılmasını izleyerek',
    ],
    'correctIndex': 1,
    'insight':
        'Simetri Yasası! Bardağı yavaşça eğdiğinde su tam bardağın ağzına (dudağına) değdiği an, bardağın "tabanının en üst noktası" da görünüyorsa bardak tam yarıdadır. Su ve hava hacmi o an bardağı tam iki eşit parçaya (diyagonal olarak) böler.',
  },
  {
    'id': 'LATERAL_017',
    'category': 'Bilişsel Yanılgılar',
    'scenario':
        'Bir pilot uçağı İstanbul\'dan Ankara\'ya uçuruyor. Uçak Bolu\'nun tam üstünde düşse, hayatta kalanları nereye gömerler?',
    'options': [
      'Bolu\'ya',
      'İstanbul\'a',
      'Ankara\'ya',
      'Vatandaşlıklarına göre',
      'Hayatta kalanlari gömemezsin',
      'En yakın şehre',
    ],
    'correctIndex': 4,
    'insight':
        'Dikkat Filtresi: "Düşmek, gömülmek, nereye" kelimeleri beyni felaket moduna sokuyor ve "HAYATTA KALANLAR" ifadesini atlatıyor. Hayatta kalan birini gömemezsin – çünkü hayatta! Duygusal kelimeler mantıksal düşünceyi bypas eder.',
  },
  {
    'id': 'LATERAL_018',
    'category': 'Oyun Teorisi',
    'scenario':
        'Bir tavuk yumurtanın üstüne oturmuyor ama yumurta yine de çatlıyor. Neden? İpucu: Tavuk canlı ve sağlıklı.',
    'options': [
      'Yumurta çürümüş',
      'Güneş ısıtıyor',
      'Yumurta yılan yumurtası',
      'Tavuk yumurtanın altinda duruyor',
      'Vakum oluşuyor',
      'Rüzgar devirmiş',
    ],
    'correctIndex': 3,
    'insight':
        'Mekan Varsayımı: "Tavuk yumurtanın üstüne OTURMUYOR" – çünkü tavuk yumurtanın ALTINDA! Yumurta bir rafa konmuş, tavuk altından ısıtıyor. Beyin "tavuk + yumurta" duyunca otomatik olarak "oturma" pozisyonu hayal ediyor. Sabit imgeler düşünceyi kilitler.',
  },
  {
    'id': 'LATERAL_019',
    'category': 'Bayesyen Mantık',
    'scenario':
        'Bir adam karısına "Dışarıda kar yağıyor!" diye bağırdı. Karısı pencereden baktı ve "Hayır, yağmur yağıyor" dedi. İkisi de doğru söylüyordu. Nasıl?',
    'options': [
      'Farklı odalardalar, farklı pencereler',
      'Biri içeride biri dışarıda',
      'Birinin gözlüğü buğulanmış',
      'Karla karışık yağmur yağıyordu',
      'Farklı katlardalar, farklı hava',
      'Adam tv\'deki hava durumuna bakıyor',
    ],
    'correctIndex': 0,
    'insight':
        'Pencere Paradoksu: Ev farklı yönlere bakan pencerelere sahip! Bir tarafta kar, diğer tarafta yağmur yağabiliyor – özellikle dağ evlerinde bu çok yaygın. Beyin "aynı ev = aynı hava" varsayımı yapıyor ama mikro-iklimler gerçektir.',
  },
  {
    'id': 'LATERAL_020',
    'category': 'Davranışsal Ekonomi',
    'scenario':
        'Bir adam her gün 500 basamak çıkıyor ama hiç yorulmuyor, ter bile atmıyor. Nasıl?',
    'options': [
      'Çok fit, süper atlet',
      'Yürüyen merdiven kullanıyor',
      'Basamakları İniyor, çıkmıyor',
      'Basamaklar çok küçük',
      'Piyano basamakları',
      'Rüya görüyor',
    ],
    'correctIndex': 2,
    'insight':
        'Yön Varsayımı: "500 basamak çıkıyor" okuyunca beyin YUKARI çıkmayı hayal ediyor. Ama Türkçede "basamak çıkmak" ifadesi kullanılsa da, adam aşağı İNİYOR! İniş neredeyse hiç enerji harcamaz. Fiil seçimi algıyı yönlendiriyor.',
  },
  {
    'id': 'LATERAL_021',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir masa üzerinde 3 fincan var. Birinin altında bilye, ikisinin altı boş. Gözlerin kapalı. Dokunmadan, kaldırmadan, hareket ettirmeden bilye hangi fincanın altında bulabilir misin?',
    'options': [
      'İmkansız, dokunmak lazım',
      'Fincanları üfle, bilyelide ses farklı olur',
      'Masayı yavaşça eğ, bilye hareket sesi verir',
      'Rastgele tahmin et, %33 şans',
      'Mıknatıs kullan',
      'Fincanın ağırlığına bak gözle',
    ],
    'correctIndex': 2,
    'insight':
        'Dolaylı Etki: Fincanlara DOKUNMA dedi ama MASAYA dokunabilirsin! Masayı hafifçe eğince bilye yuvarlanır ve ses çıkarır. "Dokunmadan" kısıtlaması sadece fincanlar için geçerli. Kısıtlamaların sınırlarını test etmek – kuralı ihlal etmeden sistemi hacklemek.',
  },
  {
    'id': 'LATERAL_022',
    'category': 'Bilişsel Yanılgılar',
    'scenario':
        'İki oğlan aynı anda doğdu, aynı anneden ve aynı babadan. Ama ikiz değiller. Bu nasıl mümkün?',
    'options': [
      'Üvey kardeşler',
      'Farklı yıllarda doğdular',
      'Üçüz veya daha fazla kardeştirler',
      'Yapay döllenme ile farklı zamanda',
      'Biri evlat edinilmiş',
      'İmkansız, ikiz olmalılar',
    ],
    'correctIndex': 2,
    'insight':
        'Sayı Kör Noktası: İkiz = 2 kardeş. Ama ÜÇÜZ olabilirler! 3 kardeşten 2\'si hakkında konuşulunca beyin "iki = ikiz" eşitlemesi yapıyor. Üçlünün herhangi iki üyesi "aynı anda doğmuş ama ikiz değil" tanımına uyuyor.',
  },
  {
    'id': 'LATERAL_024',
    'category': 'Bayesyen Mantık',
    'scenario':
        'Bir akvaryumda 10 balık var. 3 tanesi boğuldu, 2 tanesi kaçtı, 1 tanesi öldü. Akvaryumda kaç balık kaldı?',
    'options': [
      '4 balık',
      '10 balık',
      '7 balık',
      '9 balık',
      '8 balık',
      '6 balık',
    ],
    'correctIndex': 1,
    'insight':
        'Çoklu Tuzak: 1) Balıklar BOĞULAMAZ çünkü zaten suda yaşıyorlar! 2) Akvaryumdan "kaçmak" fiziksel olarak zor – cam kutular. 3) Ölen balık da akvaryumda kalır. Beyin her "eksilme" ifadesini otomatik çıkarma işlemine çeviriyor ama fiziksel gerçekliği sorgulamıyor.',
  },
  {
    'id': 'LATERAL_025',
    'category': 'Davranışsal Ekonomi',
    'scenario':
        'Bir adamın 3 portakalı var. 2 kişiye eşit olarak nasıl paylaştırır? Portakallar kesilmemeli!',
    'options': [
      'İmkansız, 3 sayısı 2ye bölünmez',
      'Birini portakal suyu yap, sıvıyı böl',
      'Birine 2 diğerine 1 ver – eşitsiz ama makul',
      'Bir portakalı sakla, ikişer ver – ama o zaman 2',
      'Üçünü de sık, suyu eşit böl',
      'Birine 1.5, diğerine 1.5 – ama kesmek yasak',
    ],
    'correctIndex': 1,
    'insight':
        'Form Değiştirme: "Portakallar kesilmemeli" ama SIKILARAK suyu çıkarılabilir! 3 portakalın suyunu sık, sıvıyı 2 bardağa eşit dök. Formu değiştirmek problemi çözer. Kural "kesmemeyi" yasaklıyor ama "sıkmayı" DEĞİL. Kuralların sınırlarını test et.',
  },
  {
    'id': 'LATERAL_026',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir köyün tam merkezinde bir kuyu var. Kuyunun derinliği 10 metre. Bir kurbağa her gün 3 metre tırmanıyor ama gece 2 metre kayıyor. Kurbağa kaç günde kuyudan çıkar?',
    'options': ['10 gün', '8 gün', '5 gün', '9 gün', '7 gün', 'Asla çıkamaz'],
    'correctIndex': 1,
    'insight':
        'Son Adım İstisnası: Her gün net 1m (3-2) ilerleme. AMA 8. gün başında 7m\'deyken, 3m tırmanınca 10m = DIŞARI çıkıyor! Artık gece kayması olmaz çünkü kuyudan çıkmış. İnsanlar 10÷1=10 diye hesaplıyor ama son adımdaki istisnayı kaçırıyorlar.',
  },
  {
    'id': 'LATERAL_028',
    'category': 'Oyun Teorisi',
    'scenario':
        'İki kutunun birinde 1.000.000₺, diğerinde 1₺ var. Rastgele birini seçtin. Açmadan önce sana şans tanınıyor: "İster seçtiğini aç, ister seçmediğini." Ama ek bilgi verilmiyor. Değiştirmeli misin?',
    'options': [
      'Evet, Monty Hall gibi değiştir',
      'Hayır, ilk seçimde kal',
      'Farketmez, olasılık %50-%50 kalır',
      'Evet, çünkü diğer kutu daha ağır hissettirir',
      'Kutulara vur, ses farkını dinle',
      'Hayır, sezgine güven',
    ],
    'correctIndex': 2,
    'insight':
        'Anti-Monty Hall: Bu Monty Hall DEĞİL! Monty Hall\'da sunucu bilgi veriyor (boş kapıyı açıyor). Burada EK BİLGİ YOK, kimse bir şey açmadı. İki kutu hâlâ %50-%50. Değiştirmek veya kalmak eşit. İnsanlar Monty Hall\'u öğrenince HER YERE uyguluyor – bu da bir yanılgı! Bilgiyi körü körüne transfer etme.',
  },
  {
    'id': 'LATERAL_029',
    'category': 'Bayesyen Mantık',
    'scenario':
        'Bir saat günde TAM 2 dakika geri kalıyor. 720 saat sonra (30 gün) saat kaç dakika geri kalmış olur? Ve doğru saati gösterebilir mi?',
    'options': [
      '1440 dakikageri = tekrar doğru!',
      '60 dakika geri',
      '720 dakika geri',
      'Asla doğru gösteremez',
      '1440 dakika ama yine yanlış',
      '2880 dakika geri',
    ],
    'correctIndex': 0,
    'insight':
        'Modüler Aritmetik Sürprizi: 2 dk/gün × 30 gün = 60 dakika... Dur! 2×720 saat = 1440 dakika = TAM 24 saat = saat kadranında bir tam tur! Analog saat tam 24 saat (1440 dk) geri kalınca TEKRAR DOĞRU SAATİ gösterir! Bozuk bir saat bile günde 2 kez doğru saati gösterir – bu da 30 günde bir baştan doğru olur.',
  },
  {
    'id': 'LATERAL_030',
    'category': 'Davranışsal Ekonomi',
    'scenario':
        'Bir adam elinde tuttuğu bardaktaki suyu dökmeden 180 derece ters çevirdi. Su dökülmedi. Bardak sağlam, kapak yok, hile yok. Nasıl?',
    'options': [
      'Bardak boştu, su yoktu',
      'Su donmuştu',
      'Çok yavaş çevirdi, yüzey gerilimi tuttu',
      'Bardağın altı açık, üstü kapalıydı',
      'Su yerine jel vardı',
      'Uzayda, yerçekimsiz ortam',
    ],
    'correctIndex': 1,
    'insight':
        'Faz Değişimi Tuzağı: Su DONMUŞTU! Buz hâlâ SU\'dur (H₂O), sadece katı faz. Soru "bardaktaki suyu" diyor – buz teknik olarak su. Beyin "su = sıvı" otomatik eşitlemesi yapıyor. Ama su üç fazda vardır: katı, sıvı, gaz. Tanımları sorgula.',
  },
  {
    'id': 'LATERAL_041',
    'category': 'Durumsal Mantık',
    'scenario':
        'Bir alışveriş merkezinde aniden elektrikler kesiliyor. O sırada yürüyen merdivende olan 20 kişi mahsur kalıyor. İtfaiye ekiplerinin bu kişileri merdivenlerden kurtarması yaklaşık kaç dakika sürer?',
    'options': [
      'Yaklaşık 10 dakika',
      'Elektrik gelene kadar beklerler',
      '0 dakika (Kurtarmaya gerek yoktur)',
      'Merdivenlerin uzunluğuna bağlıdır',
    ],
    'correctIndex': 2,
    'insight':
        'Tanım Tuzağı: Yürüyen merdiven durduğunda sadece "merdiven" olur. İnsanlar mahsur kalmaz, sadece yürüyerek inip çıkmaya devam edebilirler. Beyin "mahsur kalma" kelimesini otomatik olarak asansörle eşleştirir.',
  },
  {
    'id': 'LATERAL_042',
    'category': 'Dijital Algı',
    'scenario':
        'Telefonun çalıyor, ekranda "ANNEM" yazıyor. Aramayı cevaplıyorsun ama karşıdaki ses "Ben senin annen değilim" diyor ve yalan söylemiyor. Bu nasıl mümkün olabilir?',
    'options': [
      'Telefonu bir yabancı çalmıştır',
      'Arayan kişi babandır',
      'Telefon operatörü hata yapmıştır',
      'Gizli numaradan aranıyorsundur',
    ],
    'correctIndex': 1,
    'insight':
        'Etiket Yanılgısı: Rehberdeki isim "kişiye" değil, "cihaza" aittir. Baban, annenin telefonundan seni aramış olabilir. Zihin, ekranda gördüğü ismi (etiketi) mutlak kişiyle özdeşleştirir.',
  },
  {
    'id': 'LATERAL_043',
    'category': 'Mekansal Zeka',
    'scenario':
        'Bir kafesin içinde bir muz ve bir anahtar var. Kafesteki maymun anahtarı alıyor, kilidi açıyor ve muzu yiyor. Sen anahtarı alıyorsun ama ne kadar uğraşırsan uğraş kilidi açıp muzu alamıyorsun. Neden?',
    'options': [
      'Maymun kilidi bozmuştur',
      'Anahtar senin eline uymuyordur',
      'Sen kafesin dışındasın',
      'Kilit sadece maymunun parmak iziyle açılır',
    ],
    'correctIndex': 2,
    'insight':
        'Konum Paradoksu: Soru "kafesin içinde bir muz ve anahtar var" diyor ama senin nerede olduğun söylenmiyor. Maymun içeride olduğu için kilidi açıp muza ulaşabilir; ama sen dışarıdaysan, kilitli olan kapı seninle muzun arasındadır.',
  },
  {
    'id': 'LATERAL_044',
    'category': 'Gözlem Yeteneği',
    'scenario':
        'Dev bir stadyumda binlerce insan var. Herkesin ağzı açık, yüzlerinde bir zorlanma ifadesi var ve hepsi aynı yöne bakıyor. Ancak stadyumda çıt çıkmıyor, tam bir sessizlik hakim. Bu insanlar ne yapıyor olabilir?',
    'options': [
      'Sessiz sinema oynuyorlar',
      'Hepsi birer heykel',
      'Bulaşıcı bir şekilde esniyorlar',
      'İşitme engelliler maçı izliyorlar',
    ],
    'correctIndex': 2,
    'insight':
        'Fizyolojik Tepki: Esnemek bulaşıcıdır ve esnerken ağız kocaman açılır ama bir "bağırma" sesi çıkmaz. Binlerce insanın aynı anda esnemesi sessiz ama görsel olarak "bağırıyormuş" gibi bir manzara yaratır.',
  },
  {
    'id': 'LATERAL_051',
    'category': 'Mekansal Paradoks',
    'scenario':
        'Sipariş verdiğin kuryeyi haritadan canlı takip ediyorsun. Kuryenin simgesi tam senin durduğun noktanın üzerine geldi. Kafanı kaldırıp sokağa bakıyorsun ama sokak bomboş, kimse yok. GPS hatası yok, kurye orada. Nerede?',
    'options': [
      'Sokağın diğer tarafındadır',
      'Apartmanın içindedir (Asansörde/Merdivende)',
      'Telefonun ekranı donmuştur',
      'Kurye aslında sensin',
    ],
    'correctIndex': 1,
    'insight':
        'Düzlem Yanılgısı: Haritalar dünyayı 2 boyutlu gösterir. Kurye seninle aynı koordinattadır ama farklı bir "kat"tadır. Beyin haritaya bakarken dünyayı bir kâğıt gibi düz algılar, yüksekliği (z-eksenini) unutur.',
  },
  {
    'id': 'LATERAL_031',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir odada 6 elma var. 6 kız odaya girdi ve her biri 1 elma aldı. Ama odada hâlâ 1 elma kaldı. Nasıl?',
    'options': [
      'Bir kız almadı',
      'Biri 2 tane aldı, biri almadı',
      'Son kız elmayı sepetiyle birlikte aldı',
      'Bir elma sahte',
      'Biri geri koydu',
      '7 elma vardı aslında',
    ],
    'correctIndex': 2,
    'insight':
        'Kapsam Tuzağı: 6. kız elmayı aldı ama sepetinde taşıyarak aldı. Elma hâlâ "odada" çünkü kız da odada! Ama 6 kız 1 elma aldı diye 6 elma gitmeli... HAYIR: Son kız elmayı sepetinin İÇİNDE, sepetiyle beraber aldı. Elma odada kaldı çünkü kız elmayı dışarı çıkarmadı, elmayla birlikte odada duruyor.',
  },
  {
    'id': 'LATERAL_033',
    'category': 'Oyun Teorisi',
    'scenario':
        'Bir kutu kibrit 40 adet çöp içeriyor. Tek başına oynadığın bir oyun: Her seferinde 1, 2 veya 3 çöp alabilirsin. SON çöpü alan KAYBEDİYOR. Kaç çöp alarak başlamalısın ki her zaman kazanasın?',
    'options': [
      '1 çöp al',
      '2 çöp al',
      '3 çöp al',
      'Fark etmez, strateji yok',
      '4 çöp al',
      'Hiç alma, rakip başlasın',
    ],
    'correctIndex': 2,
    'insight':
        'Nim Oyunu: Son çöpü alan kaybeder. 40 çöp var. Anahtar: Rakibinle birlikte her turda toplam 4 çöp almalısın (sen 1 → o 3, sen 2 → o 2, sen 3 → o 1). 40 - 3 = 37. 37 = 4×9 + 1. Yani hep 37, 33, 29... 5, 1 pozisyonuna düşür. Rakip son çöpü almak zorunda kalır! İlk hamle: 3 al.',
  },
  {
    'id': 'LATERAL_035',
    'category': 'Davranışsal Ekonomi',
    'scenario':
        'Bir adam 3 katlı bir binadan atladı ama hiç yaralanmadı. Süper güçleri yok, yastık yok, ağ yok. Nasıl?',
    'options': [
      'Birinci kattan atladı',
      'Binanın İÇİne atladı',
      'Havuza atladı',
      'Paraşütle atladı',
      'Rüya görüyordu',
      'İtfaiye yastığına atladı',
    ],
    'correctIndex': 0,
    'insight':
        'Kat Varsayımı: "3 katlı binadan atladı" → beyin "en üst kattan" anlıyor. Ama 1. kat zaten yer seviyesi! Birinci kattan atlayan birinin düşme mesafesi 0-1 metre. "3 katlı bina" bilgisi yanıltıcı – asıl soru KAÇINCI kattan atladığı.',
  },
  {
    'id': 'LATERAL_037',
    'category': 'Bilişsel Yanılgılar',
    'scenario':
        'Bir çobanın 15 ineği var. Hepsi beyaz. 8 tanesi kuzeye bakıyor, 5 tanesi güneye bakıyor. Kaç tanesi batıya bakıyor?',
    'options': [
      '2 inek',
      '0 inek',
      '7 inek',
      '10 inek',
      '15 inek',
      'Bilinemez',
    ],
    'correctIndex': 0,
    'insight':
        'Basit Çıkarma Tuzağı: 15 - 8 - 5 = 2 inek batıya bakıyor. Bu soru kolay GÖRÜNÜYOR ama insanların %30\'u yanlış cevap veriyor! Neden? "Beyaz" bilgisi tamamen GEREKSIZ ve dikkat dağıtıyor. Beyin gereksiz bilgiyi işlemeye çalışırken asıl hesabı şaşırıyor. Bilgi bolluğu ≠ karar kalitesi.',
  },
  {
    'id': 'LATERAL_039',
    'category': 'Bayesyen Mantık',
    'scenario':
        'Tam olarak 12 yıl önce Ahmet, Mehmet\'ten 3 yaş büyüktü. skate aralarındaki yaş farkı kaç?',
    'options': ['15 yaş', '9 yaş', '3 yaş', '6 yaş', '12 yaş', 'Bilinemez'],
    'correctIndex': 2,
    'insight':
        'Zaman Sabiti Yanılgısı: Yaş farkı ASLA değişmez! 12 yıl önce 3 yaş fark varsa, bugün de 3 yaş fark var, 100 yıl sonra da 3 yaş fark olacak. İnsanlar "12 yıl" bilgisini kullanmak zorunda hissediyor ve topluyor veya çıkarıyor. Gereksiz bilgi tuzağının en klasik hali.',
  },
  {
    'id': 'NOVA_003',
    'category': 'Oyun Teorisi',
    'scenario':
        'Mükemmel mantıktaki 100 esir sıraya dizilir. Her birinin başına SİYAH veya BEYAZ şapka takılır. Her esir SADECE ÖNÜNDEKİLERİN şapkasını görebilir. En arkadan başlanarak sırayla "Şapkan ne renk?" diye sorulur. Önceden sadece 1 cümle konuşma hakkı olan esirler nasıl bir strateji kurarsa KESİN olarak MİNİMUM 99 kişi kurtulur?',
    'options': [
      'En arkadaki önündekinin rengini bağırır',
      'En arkadaki kişi, önündeki siyah şapkaların sayısı tek ise "Siyah", Çİft ise "Beyaz" der',
      'Herkes sadece kendi gördüğü ağırlıklı rengi söyler',
      'Birinci esir feda olur ve tersten okur',
      'İki öksürük beyaz, bir öksürük siyah demektir',
      'Çift numaradakiler tek numaradakini söyler',
    ],
    'correctIndex': 1,
    'insight':
        'Eşlik (Parity) İletişimi: En arkadaki esir (önündeki 99 şapkayı gören kişi), önündeki SİYAH şapkaların sayısı TEK ise "Siyah" der. Kendisi %50 şansla ölür. Ama öndeki 99 kişi bu matematiksel "tek-çift" bilgisi sayesinde geriye doğru kendi şapkalarını kusursuzca hesaplar ve KESİN KURTULUR.',
  },
  {
    'id': 'NOVA_004',
    'category': 'Stratejik Düşünce',
    'scenario':
        'I. Dünya Savaşı\'nda ordu, askerlerin kumaş kasklarını ÇELİK MİĞFERLERLE değiştirdi. Ancak, hastanelere "Başından ağır yaralanarak" getirilen asker sayısı ANİDEN DEHŞET VERİCİ BİR ŞEKİLDE ARTTI. Karargah miğferlerin zarar verdiğini düşündü. Oysa çelik miğferler mükemmeldi. Yaralı sayısı neden arttı?',
    'options': [
      'Miğferler çok ağırdı ve boyun kırıyordu',
      'Miğfer parladığı için keskin nişancı çekiyordu',
      'Kumaş şapkalılar başından vurulunca Ölüyordu. Çelik miğfer takıldığında ölmeyip "Yaralı" olarak hastaneye geldiler',
      'Askerler cesaretlenip siperden daha çok kafalarını çıkardı',
      'Miğferin içindeki metaller şarapnel etkisi yapıyordu',
      'İstatistik tamamen hatalı tutulmuştu',
    ],
    'correctIndex': 2,
    'insight':
        'Hayatta Kalma Yanılgısı (Survivorship Bias): Eğer bir asker kafasından vurulduğunda kumaş şapkalı ise "ÖLÜYORDU" ve morg/mezara gidiyordu. Metal miğfer takıldığında ölecek olanlar artık ölmüyor, hayatta kalarak hastaneye "yaralı" olarak işlem görüyordu! Hastanedeki yaralı artışı, miğferin muazzam başarısıdır.',
  },

  //BURDA KALDIM ALTI TAMAMDIR!
  {
    'id': 'INT_015_008',
    'category': 'Mantık Bulmacası',
    'scenario':
        'Bir adam bir fotoğrafa bakıp şöyle diyor:\n“Bu adamın babası, benim babamın tek oğlunun babasıdır.”\nFotoğraftaki adam kimdir?',
    'options': [
      'Adamın kendisi',
      'Adamın oğlu',
      'Adamın babası',
      'Adamın kardeşi',
      'Adamın amcası',
      'Fotoğrafta kimse yok',
    ],
    'correctIndex': 0,
    'insight':
        '"Benim babamın tek oğlu" = konuşan kişi (kendisi).\nOnun babası = konuşanın babası.\nDolayısıyla "bu adamın babası = konuşanın babası" → fotoğraftaki adam konuşanın kendisidir. (Kardeş olamaz çünkü "tek oğul" deniyor.)',
  },
  {
    'id': 'DAHI_015',
    'category': 'Dilin Prangaları',
    'scenario':
        "Klasik antik masalda şeytan bilge adama sorar: 'Bana doğru olan herhangi bir gerçeği söyle, seni ve aileni derhal serbest bırakayım. Yanlış bir şey söylersen hepinizi yakarım!' Bilge adam tek bir kısa ve basit cümle kurar ve şeytan beyni alev alarak patlar, onları mecbur bırakır. Bilge adam şeytana mantıksal çıkmaz olarak NE DEMİŞTİR?",
    'options': [
      'Sen sonsuz kudret sahibi olduğun için asla bize dokunup zarar veremeyeceksin yalan mıyım',
      'Benim ve ailemin asla ateşle cayır cayır yakılmayacağımız gerçek bir doğrudan yalandır demesi',
      'Sen birazdan ne yaparsan yap beni ve çevremi sonsuza kadar bu cehennemde ateşle yakacaksın',
      'Kaderimde yazılan doğrunun senin düşünce evreninle asla çakışmayacağı tam tersi olmasıdır',
      'Ölümcül alevi içindeki kötülüğün getirdiği kibrin seni duman edip tamamen kül haline getirmesi',
      'Birazdan bizi kurtaracak olan sihrin senin kendi yok oluşundan doğan zıtlığa tekabül edişi',
    ],
    'correctIndex': 2,
    'insight':
        "Bilge adam: 'Sen birazdan BİZİ YAKACAKSIN!' der. Eğer şeytan bu cümleyi YANLIŞ sayıp adamları KURAL GEREĞİ yakarsa, o zaman adamın söylediği 'Bizi yakacaksın' cümlesi DOĞRU ÇIKMIŞ OLUR! Doğru çıkmış bir cümle söylediği için şeytan kuralları gereği onu Serbest bırakmak ZORUNDA KALIR. Serbest bırakırsa da cümle YANLIŞ çıkmış olur. İnanılmaz bir paradokstur.",
  },
  {
    'id': 'DAHI_021',
    'category': 'Evrimsel Zeka',
    'scenario':
        "Karıncalar bireysel olarak çok basit canlılardır — beyinleri sadece 250.000 nöron içerir. Ancak bir karınca kolonisi, BİR BİREYİN yapamayacağı inanılmaz karmaşık davranışlar sergiler: tarım yapar, savaş stratejisi uygular, köprü inşa eder.\n\nBu kolektif zekaya en yakın modern teknoloji analojisi nedir?",
    'options': [
      'Süper bilgisayar — çok sayıda işlemci güçlü hesaplama yapar',
      'İnternet — milyarlarca cihaz birbirine bağlıdır',
      'Yapay sinir ağı — basit nöronlar birlikte karmaşık örüntüler öğrenir',
      'Blockchain — merkezi olmayan dağıtık bir karar sistemidir',
      'Kuantum bilgisayar — aynı anda birden fazla durumda bulunur',
      'GPS uydu ağı — her bileşen basit ama sistem karmaşıktır',
    ],
    'correctIndex': 2,
    'insight':
        "YAPAY SİNİR AĞI! Her karınca, bir yapay sinir ağındaki tek bir nöron gibidir: basit kurallarla çalışır (kimyasal sinyal al → tepki ver). Ancak binlerce karınca bir arada çalıştığında, hiçbir bireyin 'anlamadığı' karmaşık davranışlar ORTAYA ÇIKAR (emergent behavior). Tıpkı ChatGPT'deki milyarlarca basit nöronun birlikte insansı dil üretmesi gibi. Buna 'Emerge Eden Zeka' (Emergent Intelligence) denir.",
  },
  {
    'id': 'DAHI_022',
    'category': 'Paradoksal Ekonomi',
    'scenario':
        "Bir kasabada herkes birbirine borçludur:\n\nAli Ayşe'ye 100 TL borçlu.\nAyşe Mehmet'e 100 TL borçlu.\nMehmet Fatma'ya 100 TL borçlu.\nFatma Ali'ye 100 TL borçlu.\n\nBir turist kasabaya gelir ve otel odasını görmek için 100 TL depozito bırakır. Otelci bu 100 TL ile Ali'ye olan borcunu öder. Ali, Ayşe'ye öder. Ayşe, Mehmet'e öder. Mehmet, Fatma'ya öder. Fatma, otelciye öder. Turist odayı beğenmez, 100 TL'sini geri alır ve gider.\n\nHiç para HARCANMADI ama tüm borçlar SİLİNDİ. Bu nasıl mümkün?",
    'options': [
      'Borçlar aslında silinmedi, sadece yer değiştirdi',
      'Para sihirli bir şekilde çoğaldı — bu paradoks çözümsüzdür',
      'Para bir katalizör görevi gördü — borçlar zaten NET SIFIR idi',
      'Otelci zarara girdi ama bunu fark etmedi',
      'Turist farkında olmadan 100 TL bağışladı',
      'Bu senaryo matematiksel olarak imkansızdır',
    ],
    'correctIndex': 2,
    'insight':
        "Borçlar zaten NET SIFIR idi! Dairesel borç zincirinde herkes hem 100 TL BORÇLU hem 100 TL ALACAKLI. Toplam net borç = 0 TL. Para sadece bir KATALİZÖR görevi gördü — kimyada bir reaksiyonu başlatan ama reaksiyona girmeyen madde gibi. 100 TL hiç harcanmadı, sadece borçların karşılıklı iptal edilmesi için gerekli GÜVEN MEKANİZMASINI sağladı. Bu, merkez bankalarının para politikasının temel prensibidir.",
  },
  {
    'id': 'DAHI_023',
    'category': 'Kozmik Perspektif',
    'scenario':
        "Güneş aniden YOK OLSA, Dünya'nın Güneş'in yörüngesinden çıkması ile Dünya'da ışığın kaybolması arasında hangisi ÖNCE gerçekleşir?",
    'options': [
      'Karanlık önce olur — ışık anında kaybolur',
      'Yörüngeden çıkma önce olur — yerçekimi ışıktan hızlıdır',
      'İkisi de AYNI ANDA gerçekleşir',
      'Karanlık 8 dakika sonra, yörünge değişikliği anında olur',
      'Yörünge 8 dakika sonra, karanlık anında olur',
      'Karanlık anında olur ama yörünge hiç değişmez',
    ],
    'correctIndex': 2,
    'insight':
        "AYNI ANDA! Einstein'ın Genel Görelilik Teorisi'ne göre yerçekimi de ışık hızıyla yayılır! Yerçekimsel etkiyi taşıyan 'graviton' veya uzay-zaman dalgalanması ışık hızında hareket eder (c = 299.792 km/s). Hem karanlık hem yörünge değişikliği tam 8 dakika 20 saniye sonra hissedilir. Newton yerçekiminin anında yayıldığını düşünüyordu, Einstein bunu düzeltti. Yerçekimi dalgaları 2015'te LIGO tarafından doğrudan tespit edilmiştir.",
  },
  {
    'id': 'FUN_001',
    'category': 'Şaşırtmaca',
    'scenario':
        'Saatte 150 km hızla dümdüz ilerleyen ileri teknoloji bir elektrikli trenin dumanı, rüzgar tam tersi yönden ve saatte 50 km hızla esiyorsa mantıken hangi yöne savrulur?',
    'options': [
      'Batıya doğru savrulur hızla gider',
      'Doğuya doğru yayılır ve ilerler',
      'Tren hızından dolayı geriye iner',
      'Rüzgar hızını bastırıp dikleşir',
      'Duman çıkmaz tren elektriklidir',
      'Fizik kurallarına göre bilinemez',
    ],
    'correctIndex': 4,
    'insight':
        'Elektrikli trenlerin dumanı yoktur! Beyin otomatik olarak hız ve rüzgar verilerine odaklanıp matematiksel vektör hesabı yapmaya başlar ve asıl nesnenin doğasını (elektrikli olduğu gerçeğini) tamamen gözden kaçırır.',
  },
  {
    'id': 'FUN_002',
    'category': 'Mantık Tuzağı',
    'scenario':
        'Zifiri karanlık bir zindandan çıkmanız gerekiyor. Karşınızda 3 kapı var. Birinin ardında 10.000 derecelik lav çukuru, diğerinin ardında zehirli gaz odası, ötekinin ardında ise tam 6 aydır tek lokma yememiş vahşi Afrika aslanları var. Hangisinden sağ çıkarsınız?',
    'options': [
      'Zehirli gaz odasından hızlıca geçerek',
      'Lav çukurunun üzerinden atlayarak',
      'Havalandırma boşluğunu tespit ederek',
      'Altı aydır aç olan aslanların kapısından',
      'Geri dönüp zindanın dışına çıkarak',
      'Zemini kazıp yeraltı tüneli deşerek',
    ],
    'correctIndex': 3,
    'insight':
        '6 aydır hiçbir şey yememiş aslanlar ÇOKTAN ÖLMÜŞTÜR! Korkutucu sıfatlar ("gözü dönmüş, vahşi, Afrika") dikkatinizi dağıtıp temel biyolojik gerçeği görmenizi engeller. 6 ay aç kalan bir canlı hayatta kalamaz.',
  },
  {
    'id': 'FUN_004',
    'category': 'Kelime Oyunu',
    'scenario':
        'Türkiye ile Yunanistan sınırını belirleyen bir dağın tam tepe noktasına tırmanan vahşi bir dağ horozu, rüzgarlı bir havada bir yumurta bırakırsa yumurta hangi ülkenin topraklarına yuvarlanır?',
    'options': [
      'Türkiye tarafına doğru eğimli olduğundan',
      'Yunanistan tarafına rüzgarın itmesi ile',
      'Tam sınır çizgisinde sabit kalıp donar',
      'Kayalıklara çarpıp ortada parçalanır',
      'Horozlar vahşi doğada yumurtlamazlar',
      'Hava sürtünmesi nedeniyle yuvarlanmaz',
    ],
    'correctIndex': 4,
    'insight':
        'Horozlar erkek tavuklardır, YUMURTLAMAZLAR! Konunun iki ülke sınırı, rüzgar yönü veya dağın eğimiyle hiçbir alakası yoktur. Beyin gereksiz çevresel detaylar arasında boğulurken temel biyolojiyi unutur.',
  },
  {
    'id': 'FUN_005',
    'category': 'Matematiksel Tuzak',
    'scenario':
        'Bir doktor size acil kullanmanız için 3 adet hap verdi ve "Tüm hapları yarımşar saat arayla içmen zorunludur" dedi. Hapların hepsinin bitmesi tam olarak ne kadar zamanınızı alır?',
    'options': [
      'Bir buçuk saat sürer matematiksel hesaba göre',
      'Altmış dakika sürer çünkü birinciyi şimdi içersin',
      'İki saat içinde kan değerlerine karışmış olur',
      'Doksan dakika sürer üç uzun vaktin sonunda',
      'Hapların miligramına bağlı erime süresinde biter',
      'Yedi dakikada biter ancak etkisini saatler alır',
    ],
    'correctIndex': 1,
    'insight':
        '60 dakika (Yani 1 saat) sürer. Birinci hapı 0. dakikada (şimdi) içersin. İkinci hapı 30. dakikada içersin. Üçüncü hapı 60. dakikada içersin. İnsan beyni otomatik olarak 3 x 30 = 90 işlemine kaçar.',
  },
  {
    'id': 'FUN_006',
    'category': 'Problem Çözme',
    'scenario':
        'Masanın üzerindeki sepette tam 5 adet parlak kırmızı elma var. Odada siz dahil 5 kişi bulunuyor. Herkese tam olarak birer tam elma vereceksiniz ama dağıtım bittiğinde sepetin içinde de 1 elma kalması ZORUNLU. Kesmek bölmek yok. Nasıl mümkün?',
    'options': [
      'Bir kişiye sahte plastik elma vererek oyalarak',
      'Kişilerden alerjisi olan elmayı iptal ettirerek',
      'Hakkınız olan elmayı kendiniz yemeyip tutarak',
      'Son kişiye elmasını sepetin içinde tam vererek',
      'Sepetin gizli bölmesindeki zula elmayı bularak',
      'Çekirdek ektirip ağaç yetiştirmeyi bekleyerek',
    ],
    'correctIndex': 3,
    'insight':
        'Beşinci ve son kişiye elmasını sepetin İÇİNDE teslim edersiniz! Böylece herkes 1 elma almış olur ve sepetin içinde de teknik olarak 1 elma kalmış olur. Eğlenceli bir lateral zeka oyunudur.',
  },
  {
    'id': 'FUN_007',
    'category': 'Gizli Algoritma',
    'scenario':
        'Kurban ölmeden hemen önce takvimdeki kanıyla şu aylar üzerine çarpı koymuştur: "Haziran, Ağustos, Kasım, Aralık, Nisan". Şüpheliler ise şu 6 kişidir: Selim, Hakan, Ozan, Kerem, Murat, Yavuz. Katil kimdir?',
    'options': [
      'Yavuz, yaz aylarını belirgin kodlayarak bunu yapmıştır',
      'Murat, rastgele aylar seçerek alfabeden ilerlemiştir',
      'Hakan, ayların sadece ilk harflerini sırayla kodlamıştır',
      'Ozan, ikinci harflerin anagramını dizayn edip bozmuştur',
      'Selim, toplam gün sayısıyla şifre dizesi tasarlamıştır',
      'Kerem, kesinti tarihlerinin algoritmatik yansımasıdır',
    ],
    'correctIndex': 2,
    'insight':
        'Ayların Baş Harflerini sırayla okuyun: (H)aziran, (A)ğustos, (K)asım, (A)ralık, (N)isan = H A K A N. Klasik ve çok tatmin edici bir gizli şifreleme yöntemidir, aniden farkına varılır.',
  },
  {
    'id': 'FUN_008',
    'category': 'Bilişsel Esneklik',
    'scenario':
        'Uçsuz bucaksız çimlik bir alanda bir at bulunuyor. Atın boynuna bağlı bir halatın uzunluğu sadece 5 metredir. Ata tam 25 metre uzaklıkta enfes bir yulaf balyası var. At hiçbir ipi koparmadan balyaya ulaşıp afiyetle yiyor. Nasıl?',
    'options': [
      'Boynunu yirmi metre uzatarak esneyebilme yeteneğiyle',
      'İpin uzayabilen kauçuk ve elastik yapıda olmasıyla',
      'Rüzgarın devasa yulaf balyasını ata doğru taşımasıyla',
      'İpin öteki ucunun hiçbir yere sabit bağlı olmamasıyla',
      'Atın zürafa boyutlarına mutasyona uğramış olmasıyla',
      'Halatın kopmadan çok yavaş bir şekilde sürtünmesiyle',
    ],
    'correctIndex': 3,
    'insight':
        'İpin öteki ucu aslında hiçbir kazığa veya ağaca BAĞLI DEĞİLDİR! Yerde yılan gibi sürünüyordur. İnsanlar bir ip bağlandığında genellikle diğer ucunun da bir yere sabitlendiği varsayımına yapışırlar.',
  },
  {
    'id': 'FUN_013',
    'category': 'Fiziksel İllüzyon',
    'scenario':
        'Okyanusta demirlemiş bir araştırma gemisinin dış kısmından deniz seviyesine kadar sallanan bir ip merdiven vardır. Merdiven basamakları arası 20 cm uzunluğundadır ve gelgit başlamıştır. Su seviyesi okyanusta saatte 40 cm yükselmektedir. İki saat sonra su gemi merdiveninin neresine gelir?',
    'options': [
      'Okyanus yükselince merdivenin tam ortasındaki kalın şeride erişir',
      'Su seviyesi çılgın basınçla gemi altı motor boşluklarını kilitler',
      'Geminin tam kendisi de su yüzeyinde doğal olarak esneyip yükselecektir',
      'Dalga ve gelgit geminin tüm o merdiven kısımlarını aniden koparır',
      'Halatlar çelik olduğu için merdiven kesinlikle su dibinde yutulur',
      'Kaptan gemiyi ileri ittiğinden su o koldan sadece iki santim kabarır',
    ],
    'correctIndex': 2,
    'insight':
        'Okyanusta su seviyesi ne kadar yükselirse yükselsin GEMİ DE AYNI ORANDA havaya yükselecektir! Dolayısıyla merdivenin alt basamağı suyla hep aynı değişmez mesafede kalır. Matematiksel sayılar oyalamaca için tasarlanmış harika bir dikkati dağıtma metodudur.',
  },
  {
    'id': 'FUN_014',
    'category': 'Bağlamsal Zeka',
    'scenario':
        'Bir kadın iki çocuğuyla yürüyüş yapmaktadır. Bir yabancı "Çocuklar ikiz mi?" diye sorar. Kadın "İkisi de aynı yıl, ayı, aynı gün ve aynı saatte aynı hastanede aynı rahmimden doğdular ama İkiz falan değiller" der. Bu saçma beyan nasıl mümkün olabilir?',
    'options': [
      'Çocukların babası başka birinden türemesi gibi sıradan şey',
      'Çocuklardan biri kocasının klon sürecinden laboratuvarda',
      'Çocukların tüp bebek yöntemiyle tam sentetik oluşturulması',
      'Çocuklar aslında ikiz değil farklı zaman makinesi paradoksu',
      'Kadın o gün Üçüz doğurmuştur ve ikisini yanına alıp çıkmıştır',
      'Kendisinin o doğumunda beşiz androidleri gizlice üretmeleri',
    ],
    'correctIndex': 4,
    'insight':
        'O gün doğan çocuklar İkiz değildir, çünkü ÜÇÜZ veya DÖRDÜZlerdir! Kadın yanına çocukların sadece iki tanesini alıp sokağa yürüyüşe çıkmıştır. Toplum her zaman yan yana görünen iki aynı yaş çocuğu ikiz kategorisine hapsetmeye programlıdır.',
  },
  {
    'id': 'FUN_015',
    'category': 'Probleme Ters Yaklaşım',
    'scenario':
        'Devasa bir hafriyat kamyonu, tarihi taş köprünün altından geçerken 3 santimetrelik yüksekliği yüzünden köprüye sıkışır kalır. Mühendisler köprüyü kırmayı ya da kamyonu kesmeyi tartışırken 10 yaşındaki bir çocuk saniyeler içinde masrafsız ve son derece basit muhteşem çözümü bulur. Sizce nedir?',
    'options': [
      'Sokaktaki tüm halkı kasa üzerine çıkartıp araca ağırlık bindirmesi',
      'Kamyonun altına ıslak sabunlu bir devasa kaygan halı serilmesi',
      'Kamyonun devasa ve şişkin olan dev lastiklerinin havasını indirmesi',
      'Egzoz dumanını patlatarak küçük bir tepkime şoku yaratması',
      'Köprünün yanından tünel kazarak gizli bir geçit deşmesi',
      'Motorun ağırlık merkezini arkaya fırlatıp sarsıntı oluşturması',
    ],
    'correctIndex': 2,
    'insight':
        'Kamyonun lastiklerinin havasını biraz daha fazla indirmek! Böylece kamyon saniyeler içinde 5-6 santim alçalır ve tarihi köprünün altından hiçbir şey kesilmeden geçer. Yetişkinler daima sorun olan nesneyi (köprü veya kasa) yok etmeye odaklanırken çocuklar yanal çözüm üretir.',
  },
  {
    'id': 'FUN_016',
    'category': 'Zeka ve Kurnazlık',
    'scenario':
        'Zalim bir kralın esirinin kutudaki iki kağıttan birini seçmesi istenir. Kral iki kağıda da sırf "ÖLÜM" yazmıştır. Esir iki kağıtta da ölüm yazdığını çok iyi bildiği halde öyle bir hamle yapar ki kralın kurallarına göre mecburiyetten KESİN HAYAT KAZANIR. Ne yapmıştır?',
    'options': [
      'Kağıtlardan birini seçer kralla konuşurken hızlıca ağzına atıp midesine yutar ve yok eder',
      'Kağıtları ikiye katlayıp şekillerini tamamen simetrik bir yapıya sokar',
      'Hemen kralın elindeki sopayı alıp kağıtları havada kül ederek savurur',
      'Kağıdı güneşe tutup arkasındaki dev yazının boyutunu netçe ifşa eder',
      'Üzerine su dökerek mürekkeplerin birbirine karışmasını hemen sağlar',
      'Kağıtlardan birini kendi cebindeki boş başka bir parşömenle değitirir',
    ],
    'correctIndex': 0,
    'insight':
        'Kağıtlardan birini seçer ve kral görmeden hızla ağzına atıp YUTAR. Sonra krala der ki: "Sayın Kralım, ben kağıdımı seçip yuttum. Lütfen kutuda KALAN diğer kağıdı okuyun. O kağıtta yazanın TERSİ, benim yuttuğum kağıtın sonucudur!" Kalan kağıtta ÖLÜM yazdığı için kral yutulanın "HAYAT" olduğunu ilan etmeye zorunlu kalır.',
  },
  {
    'id': 'FUN_020',
    'category': 'Zihinsel Körlük',
    'scenario':
        'Dış cephesi tamamen kalın parlayan cam ile kaplı modern yapılı devasa gökdelenin o dış temizlik asansöründe çalışan bir işçi vardır. Ne yazık ki asansör halatı tamamen kopar ve platform korkunç bir serbest düşüşe geçer. Yere çakılır.. Ama adama çizik bile olmaz, yürüyerek çıkar gider. Mucize nerede?',
    'options': [
      'Asansör içine özel bir süper şişme manyetik balon yastık entegreliydi',
      'Dış temizlik asansörü henüz havalanmamıştı ve halen tam zemin kattaydı',
      'Gökdelen aslında kocaman dev yatay mimariyle inşa edilmişti komple',
      'Aşağıya son saniyede bir kurtarma dev file ağ ekibi çoktan kurulmuştu',
      'Adamın sırtında gizli yüksek donanımlı küçük bir uçuş kanadı mevcuttu',
      'Platform binanın dış camında aşağı giden özel bir kaydırak düzlemi',
    ],
    'correctIndex': 1,
    'insight':
        'Temizlik asansörü zaten henüz gökdelenin ZEMİN KATINDAYDI ve işçi daha yeni içine binmişti. Halat koptuğunda asansör sadece birkaç santim düşüp tık diye yerine oturdu! Soru gökdelen ve düşüş ifadeleriyle sizi zihninizin en tepesine 100. kata çıkartıp fırlatırken gerçek yeryüzündeydi.',
  },
  {
    'id': 'FUN_022',
    'category': 'Yanal Rota',
    'scenario':
        'Sisli bir okyanus gecesinde devasa Savaş Gemisi\'nin amirali, tam önündeki parlak ışığa telsizle: "Çarpışmayı önlemek için rotanızı güneye çevirin!" der. Karşıdan: "Asıl SİZ rotanızı kuzeye çevirin" yanıtı gelir. Amiral burnundan soluyarak: "Ben koskoca savaş filosuyum, sen çevir!" der ve saniye sonra dehşetle rotasını değiştirip kaçar. Ne duydu?',
    'options': [
      'Orası Bermuda şeytan üçgeninin gizemli çekim kuvvetine çoktan düşmüştü',
      'Duyduğu ses devrimci uzaylılara ait bir dünya dışı son derece büyük toptu',
      'Karşıdan gelen buz dağına yapışıp sürüklenen ölümcül gizli mayın ordusuydu',
      'Şu cevap geldi: "Burası sıradan bir deniz fenerİ kaptan, tercih tamamen sizin!"',
      'Amiral telsiz hattında konuşanın o devleti yöneten başkan olduğunu fark etti',
      'Küçük ışık devasa bir nükleer test denemesinin patlamadan önceki son lazeriydi',
    ],
    'correctIndex': 3,
    'insight':
        '"Burası bir Deniz Feneri, tercih sizin!" Bu aslında ünlü bir Donanma efsanesidir. Ne kadar büyük, heybetli, silahlı veya haklı bir gemi olursanız olun, statünüze güvenerek "sabit bir adaya/karaya" rotasını değiştirmesi için emrivaki yapamazsınız. Zeka egosunu denize gömen klasik olaydır.',
  },
  {
    'id': 'FUN_025',
    'category': 'Kusursuz Zehir',
    'scenario':
        'Kusursuz bir cinayet hazırlayan adam, rakibiyle aynı cam sürahiden doldurulan buzlu suyunu masada içer. Rakip tam acelesi olduğu için koca bardağı tek dikişte kana kana boşaltıp kalkar gider ve zehirlenmeden kurtulur. Cinayeti hazırlayan adam kendi buzlu suyunu arkadan rahatça uzun uzun yudumlarken kendi bardağında zehirlenerek oracıkta boğulup ölür. Plan nasıl patladı?',
    'options': [
      'Rakibin çoktan önlem alıp sürahiyken panzehir zerkini tam kendi midesine indirmesi',
      'Erkek cinayet tasarlayan kişinin panikle doğru bardağı kendine refleksifle almış olması',
      'Zehirin suya değil doğrudan bardağa atilan buz küplerinin merkezine donmuş olması',
      'Suyun miktar olarak zehirli ama sadece tek dikişte mideden fırlayan gazdan oluşması',
      'Adamın rahatlarken zafer sarhoşluğuyla pipetini zehirli kap içine unutturmuş olması',
      'İkisinin içtiği suların ortam sıcaklığındaki buharleşme basıncıyla yeri değiştirip sekiyor olması',
    ],
    'correctIndex': 2,
    'insight':
        'Zehir bardağın suyuna DEĞİL, içine atılan BUZ KÜPLERİNİN tam kalbine şırıngalanıp dondurulmuştur! Hedef kişi aşırı susadığı için buzlar henüz ERİMEYE GRAM FIRSAT BULAMADAN bütün suyu yutup kalkmış ve zehir açığa çıkmamıştır. Bekleyip suyunu "buzları eritecek kadar yavaş" yudumlayan katil bardağa yayılan zehirle kendi kazdığı kuyuya düşmüştür!',
  },
  {
    'id': 'TRICKY_002',
    'category': 'Mekansal Paradoks',
    'scenario':
        "Ahmet odasının tam ortasında duruyor. Odanın her yeri, tüm pencereleri ve kapısı güneye bakıyor. Birden pencereden dev bir ayı içeri bakıyor. Bu ayının rengi nedir?",
    'options': ['Siyah', 'Kahverengi', 'Boz', 'Beyaz', 'Gri', 'Şeffaf'],
    'correctIndex': 3,
    'insight':
        "Odanın her yerinin güneye bakabilmesi için, Ahmet'in Dünya'nın tam merkezinin üstünde yani Kuzey Kutbu'nun tam tepesinde olması gerekir. Kuzey Kutbu'nda sadece Kutup Ayıları (beyaz) yaşar!",
  },
  {
    'id': 'TRICKY_003',
    'category': 'Mantıksal Dikkat',
    'scenario':
        "Çok zorlu bir maraton koşusuna katıldığını düşün. Son metrelerde büyük bir atak yapıyorsun ve saniyeler kala 2. sıradaki koşucuyu geçiyorsun. Şu an kaçıncı sıradasın?",
    'options': [
      '1. sıradasın',
      '2. sıradasın',
      '3. sıradasın',
      'Yarışma iptal olur',
      'Sonuncusun',
      'Aynı sıradasın',
    ],
    'correctIndex': 1,
    'insight':
        "İkinciyi geçersen birinci olmazsın, sadece onun yerini alırsın ve ARTIK yeni 2. sen olursun! Orijinal birinci hala senin önünde koşmaya devam etmektedir.",
  },
  {
    'id': 'TRICKY_004',
    'category': 'Kelime Mantığı',
    'scenario':
        "Kullanılmadan önce satın aldığında siyah olan, onu kullanırken ateş gibi kırmızıya dönüşen, kullanıp bitirdiğinde ve attığında ise grimsi beyaz olan şey nedir?",
    'options': [
      'Demir',
      'Kömür',
      'Fener Cami',
      'Kibrit Çöpü',
      'Balata',
      'Toprak Tencere',
    ],
    'correctIndex': 1,
    'insight':
        "Kömür. Kömür ham haldeyken siyahtır, yandığında etrafına kor halinde kırmızı bir ışık saçar, tamamen yanıp bitip çöpe atıldığında ise gri veya beyazımsı bir küle dönüşür.",
  },
  {
    'id': 'TRICKY_005',
    'category': 'Fiziksel Sınır',
    'scenario':
        "Onu bir şeyin içine hapsedemezsiniz, elinizde tutamazsınız, kimse onu göremez. Ama ona sahip olduğunuzu herkes çok iyi bilir, eğer o sizden kaçıp giderse bir daha asla geri yakalayamazsınız. Bu nedir?",
    'options': [
      'Rüya ve hayal dünyası',
      'Zeki bir fikir',
      'Aldığımız nefes',
      'Tik tak eden saat',
      'Yere düşen gölge',
      'Tatlı esen rüzgar',
    ],
    'correctIndex': 2,
    'insight':
        "Nefes. Nefesimizi elle tutamayız, rüzgar gibi hapsedemeyiz, gözle göremeyiz ama canlıysak nefes aldığımızı herkes anlar. Son nefes verildiğinde (kaçtığında) bir daha geri gelmez.",
  },
  {
    'id': 'TRICKY_013',
    'category': 'Takvim Hilesi',
    'scenario':
        "Bazı aylar 30, bazı aylar ise 31 çeker. Peki yılın tam olarak kaç ayında 28 gün vardır?",
    'options': [
      'Sadece 1 Ay (Şubat)',
      'Ağustos hariç tüm aylar',
      'Her 4 yılda bir 1 Ay',
      '12 Ayın Hepsinde',
      'Sadece kış aylarında',
      'Hiçbirinde yoktur (29 vardır)',
    ],
    'correctIndex': 3,
    'insight':
        "12 ayın HEPSİNDE 28 gün vardır! Ocakta da 28. gün vardır, Martta da. Soru 'sadece 28 gün çeken ay hangisidir' demez, kaç ayda 28 gün olduğunu sorar.",
  },
  {
    'id': 'TRICKY_015',
    'category': 'Fiziksel İmkansızlık',
    'scenario':
        "Şu an oturduğun yerde sağ elinle rahatça ve sımsıkı tutabildiğin ama asla ve asla 'Sol Elinle' tutamayacağın o fiziksel şey nedir?",
    'options': [
      'Kendi ense kökün',
      'Sandalyenin sol kol dayaması',
      'Sol Dirseğin',
      'Sağ gözün',
      'Kendi gölgen',
      'Cüzdanın',
    ],
    'correctIndex': 2,
    'insight':
        "Sol Dirseğin! İnsan kendi sol dirseğini sağ eliyle rahatça kavrayabilir ama kendi sol dirseğini kendi sol eliyle (anatomik olarak o eklem bükülmediği için) asla tutamaz.",
  },

  // ═══════════════════════════════════════════════════════════
  // 15 YENİ ZEKİCE VE ŞAŞIRTICI SORU
  // ═══════════════════════════════════════════════════════════
  {
    'id': 'GENIUS_001',
    'category': 'Olasılık Yanılsaması',
    'timeLimitSeconds': 50,
    'scenario':
        "Bir televizyon yarışmasında önünüzde 3 kapı var. Birinin ardında lüks bir araba, diğer ikisinin ardında keçi var. Siz 1 numaralı kapıyı seçtiniz. Sunucu (arkasında ne olduğunu bilen) 3 numaralı kapıyı açtı ve keçiyi gösterdi. Sonra size soruyor: 'Kararınızı değiştirip 2 numaralı kapıya geçmek ister misiniz?' Matematiksel olarak ne yapmalısınız?",
    'options': [
      'Fark etmez, olasılık her iki kapı için de %50 olmuştur',
      'Kesinlikle 1 numarada kalmalısınız, ilk seziş en doğrusudur',
      'Kesinlikle 2 numaraya geçmelisiniz, kazanma şansınız 2 katına çıkar',
      'Sunucunun davranışına göre karar verilmeli, yüz okuması yapılmalı',
      'Üçüncü kapı açıldığına göre araba zaten orada değildi, rastgele seçin',
      'Bu tamamen şans meselesidir, matematik işe yaramaz',
    ],
    'correctIndex': 2,
    'insight':
        "Bu ünlü MONTY HALL PROBLEMİDİR! İlk seçiminizde araba olma olasılığı %33, olmama olasılığı %66. Sunucu keçili kapıyı açtığında sizin %33 olasılığınız DEĞİŞMEZ ama diğer kapıya %66 yüklenir! Kapı değiştirmek kazanma şansınızı %33ten %66ya ÇIKARIR. Monte Carlo simülasyonları her seferinde bunu kanıtlamıştır.",
  },
  {
    'id': 'GENIUS_002',
    'category': 'Dilsel Tuzak',
    'timeLimitSeconds': 30,
    'scenario':
        "Bir çiftçinin 17 koyunu vardı. Fırtınada 9 tanesi hariç hepsi öldü. Geriye kaç koyun kaldı?",
    'options': [
      '8 koyun — 17 eksi 9 eşittir 8',
      '9 koyun — çünkü 9 tanesi hariç hepsi öldü',
      '17 koyun — ölü koyunlar da hala koyundur',
      '0 koyun — fırtına hepsini aldı',
      'Bilinemez — fırtınanın şiddeti belirtilmemiş',
      '1 koyun — çiftçinin kendisi hayatta kaldı',
    ],
    'correctIndex': 1,
    'insight':
        "TAM 9 KOYUN! 9 tanesi HARİÇ hepsi öldü demek 9 tanesi HAYATTA KALDI demektir. Beyin otomatik olarak 17 - 9 = 8 çıkarma işlemine atlar ama cümle aslında 9 tanesi dışında kalanların tamamı öldü demektedir.",
  },
  {
    'id': 'GENIUS_003',
    'category': 'Matematiksel İllüzyon',
    'timeLimitSeconds': 40,
    'scenario':
        "Bir baba ve oğlu toplam 110 yaşındadır. Baba, oğlundan tam 100 yaş büyüktür. Oğul kaç yaşındadır?",
    'options': [
      '10 yaşında',
      '5 yaşında',
      '0 yaşında yani yeni doğmuş',
      '100 yaşında',
      '55 yaşında',
      'Bu matematiksel olarak imkansızdır',
    ],
    'correctIndex': 1,
    'insight':
        "OĞUL 5 YAŞINDADIR! Çoğu kişi refleks olarak 10 yaş der. Ama kontrol edelim: Oğul 10 ise baba 110 olur (100 büyük), toplam 120 eder YANLIŞ! Doğrusu: Oğul = x, Baba = x + 100, toplam = 2x + 100 = 110, yani x = 5. Oğul 5, baba 105, toplam 110.",
  },
  {
    'id': 'GENIUS_004',
    'category': 'Zaman Paradoksu',
    'timeLimitSeconds': 35,
    'scenario':
        "Dünkü yarın, yarınki düne eşitse bugün hangi gündür? (İpucu: Kişi Dünkü yarın Çarşambadır ve Yarınki dün de Çarşambadır diyor.)",
    'options': [
      'Pazartesi',
      'Salı',
      'Çarşamba',
      'Perşembe',
      'Cuma',
      'Bu çözümsüz bir paradokstur',
    ],
    'correctIndex': 2,
    'insight':
        "BUGÜN ÇARŞAMBA! Dünkü yarın = Dünden bakınca yarın = BUGÜN. Yarınki dün = Yarından bakınca dün = yine BUGÜN. Her iki ifade de BUGÜNÜ işaret eder. İkisi de Çarşambaya eşitse bugün Çarşambadır.",
  },
  {
    'id': 'GENIUS_005',
    'category': 'Hayatta Kalma Zekası',
    'timeLimitSeconds': 45,
    'scenario':
        "Bir adam uçsuz bucaksız bir çölde tek başına yürüyor. Yanında sadece bir kibrit kutusu var. Birden karşısına 3 nesne çıkıyor: bir yağ lambası, bir mum ve bir odun sobası. Hava dondurucu soğuk ve ölmek üzere. İlk önce hangisini yakmalı?",
    'options': [
      'Yağ lambasını — en çok ışık verir',
      'Mumu — en kolay tutuşur',
      'Odun sobasını — en çok ısı verir',
      'Kibrit çöpünü — hiçbirini yakmadan önce kibriti yakmalı',
      'Üçünü de aynı anda yakmalı — maksimum ısı için',
      'Hiçbirini yakmamalı — çölde yangın tehlikelidir',
    ],
    'correctIndex': 3,
    'insight':
        "KİBRİT ÇÖPÜnü yakmalı! Lambayı, mumu veya sobayı yakmadan ÖNCE elinizdeki kibriti yakmanız gerekir. Bu olmadan hiçbir şeyi ateşleyemezsiniz. Beyin hemen hangisi daha faydalı diye stratejik analize geçer ama en temel adımı tamamen atlar.",
  },
  {
    'id': 'GENIUS_007',
    'category': 'Ağırlık Algısı',
    'timeLimitSeconds': 30,
    'scenario':
        "Bir kilogram demir mi daha ağırdır, yoksa bir kilogram pamuk mu?",
    'options': [
      'Demir — demir doğası gereği daha ağırdır',
      'Pamuk — hacmi büyük olduğu için daha ağır hissedilir',
      'İkisi de eşit ağırlıktadır — ikisi de 1 kilogram',
      'Demir — yoğunluğu pamuğun 500 katıdır',
      'Bilinemez — ortam koşullarına bağlıdır',
      'Pamuk — havadaki nemi emerek ağırlaşır',
    ],
    'correctIndex': 2,
    'insight':
        "İKİSİ DE 1 KİLOGRAMDIR! 1 kg = 1 kg, malzeme ne olursa olsun. Beyin demir kelimesini duyduğunda otomatik olarak AĞIR, pamuku duyduğunda HAFİF kodlar. Aslında soru ağırlığı zaten EŞİTLEMİŞTİR ama malzeme önyargısı mantığı devre dışı bırakır.",
  },
  {
    'id': 'GENIUS_009',
    'category': 'Görsel Matematik',
    'timeLimitSeconds': 35,
    'scenario':
        "Bir odada 6 mum yanıyor. Rüzgar esip 2 tanesini söndürüyor. Bir süre sonra bir tanesi daha sönüyor. Kaç mum kalır?",
    'options': [
      '3 mum — 6 eksi 3 eşittir 3',
      '6 mum — sönen mumlar yok olmaz',
      '3 mum — sönen mumlar dahil olmaz',
      '0 mum — hepsi zamanla söner',
      '2 mum — sadece rüzgarla sönenler kalır hesapta',
      '3 mum kalır — geri kalanlar da yanarak biter',
    ],
    'correctIndex': 0,
    'insight':
        "3 MUM KALIR ama düşündüğünüz nedenle değil! Sönen 3 mum OLDUĞU GİBİ kalır çünkü sönmüştür ve erimez. Yanan 3 mum ise zamanla tamamen ERİYİP yok olur. Geriye fiziksel olarak kalan mumlar paradoksal şekilde SÖNEN mumlardır!",
  },
  {
    'id': 'GENIUS_011',
    'category': 'İstatistiksel Sürpriz',
    'timeLimitSeconds': 50,
    'scenario':
        "Bir odaya tamamen rastgele 23 kişi koyuyorsunuz. Bu 23 kişi arasında EN AZ 2 kişinin doğum gününün (gün ve ay olarak) aynı olma olasılığı nedir?",
    'options': [
      'Yaklaşık %6 — 365 günde 23 kişi çok az',
      'Yaklaşık %16 — düşük ama mümkün',
      'Yaklaşık %50 — yarı yarıya şans',
      'Yaklaşık %75 — oldukça yüksek',
      'Yaklaşık %99 — neredeyse kesin',
      '%100 — güvercin yuvası ilkesiyle garanti',
    ],
    'correctIndex': 2,
    'insight':
        "TAM %50.7! Bu ünlü DOĞUM GÜNÜ PARADOKSUDUR. 23 kişi arasında eşleşme olasılığı %50yi geçer! 70 kişide %99.9a ulaşır. Sezgimiz 365/23 = çok düşük der ama hesap KOMBİNASYON sayısını kullanır: 23 kişi arasında 253 farklı ikili karşılaştırma vardır!",
  },
  {
    'id': 'GENIUS_012',
    'category': 'Ekonomik Paradoks',
    'timeLimitSeconds': 45,
    'scenario':
        "Bir restoranda yemek yiyen 3 arkadaş hesabı istediğinde garson 30 TL getirir. Her biri 10ar TL verir. Garson kasaya giderken patron Bugün indirim var hesap 25 TL der. Garson 5 TLyi geri götürürken 2 TLyi cebine atar her müşteriye 1er TL geri verir. Böylece herkes 9 TL ödemiş olur. 3 x 9 = 27 TL + garsonun 2 TLsi = 29 TL. Kayıp 1 TL nerededir?",
    'options': [
      'Patron 1 TLyi kasadan çalmıştır',
      'Garson aslında 3 TL almıştır cebine',
      'Hesaplama yöntemi kasıtlı olarak YANLIŞTIR kayıp para yoktur',
      'Vergi olarak 1 TL kesilmiştir',
      'Müşterilerden biri 1 TL eksik ödemiştir',
      'Para birimi yuvarlamasından kaynaklanan kuruş farkıdır',
    ],
    'correctIndex': 2,
    'insight':
        "KAYIP PARA YOKTUR! Bu ünlü bir matematik aldatmacasıdır. Hile 27 + 2 = 29 işlemindedir — bu toplanmaması gereken iki sayıyı toplar! Doğru hesap: 25 TL (patron) + 2 TL (garson) + 3 TL (iade) = 30 TL. Garsonun 2 TLsi zaten 27nin İÇİNDEDİR ÜSTÜNE eklenmemeli.",
  },
  {
    'id': 'GENIUS_013',
    'category': 'Bilişsel Yanıltma',
    'timeLimitSeconds': 30,
    'scenario':
        "Bir otobüsü SİZ kullanıyorsunuz. İlk durakta 5 kişi bindi. İkinci durakta 3 kişi indi 8 kişi bindi. Üçüncü durakta 7 kişi indi 4 kişi bindi. Dördüncü durakta 2 kişi indi 1 kişi bindi. Otobüs şoförünün GÖZ RENGİ nedir?",
    'options': [
      'Kahverengi — en yaygın göz rengi',
      'Mavi — şoförler genelde mavi gözlüdür',
      'Yeşil — Türkiyede en çok yeşil göz bulunur',
      'Kendi göz renginiz — şoför SİZSİNİZ',
      'Siyah — Türkiyede siyah en baskındır',
      'Bilinemez — yeterli veri yok',
    ],
    'correctIndex': 3,
    'insight':
        "Şoför SİZSİNİZ! Sorunun ilk cümlesi Bir otobüsü SİZ kullanıyorsunuz der. Ama beyin hemen yolcu SAYILARIYLA meşgul olmaya başlar ve bu kritik detayı tamamen unutur. Cevap KENDİ göz renginizdir!",
  },
  {
    'id': 'GENIUS_015',
    'category': 'Felsefi Paradoks',
    'timeLimitSeconds': 50,
    'scenario':
        "Theseusun efsanevi gemisinin çürüyen tahtaları tek tek yenileriyle değiştiriliyor. Yıllar sonra gemide orijinal tek bir tahta kalmamış oluyor. Bu hala Theseusun gemisi midir? BONUS: Çıkarılan eski tahtalarla birebir AYNI gemi yeniden inşa edilirse hangisi GERÇEK Theseusun gemisi olur?",
    'options': [
      'Yenilenen gemi — süreklilik ve kullanım onu gerçek yapar',
      'Eski tahtalardan yapılan gemi — orijinal malzeme gerçeği belirler',
      'İkisi de gerçektir — kimlik çoğaltılabilir',
      'İkisi de gerçek değildir — orijinal gemi artık yoktur',
      'Bu cevaplanılamaz — kimlik tanımına bağlıdır',
      'Devlet hangisini tescil ederse O gerçektir',
    ],
    'correctIndex': 4,
    'insight':
        "Bu felsefenin en ünlü 2500 yıllık paradoksudur: THESEUS GEMİSİ! Kesin bir cevabı YOKTUR çünkü kimlik kavramının kendisi belirsizdir. Bu paradoks bugün dijital çağda daha da yakıcıdır: Teleportasyon mümkün olsa atomlarınız söküm noktasında yok edilip hedefte birebir kopyalansa siz ölür müydünüz yoksa ışınlanmış mı olurdunuz?",
  },
  {
    'id': 'GENIUS_016',
    'category': 'Pratik Zeka',
    'timeLimitSeconds': 30,
    'scenario':
        "Gece saat 8'de yatıyorum ve kurmalı saatimi sabah 9'a kuruyorum. Kaç saat uyumuş olurum?",
    'options': ['13 saat', '1 saat', '12 saat', '9 saat', '8 saat', 'Hiçbiri'],
    'correctIndex': 1,
    'insight':
        "Kurmalı (mekanik) saatlerde AM/PM ayrımı yoktur. Akşam 8'de kurulan saat, yelkovan ilk 9'a geldiğinde yani tam 1 saat sonra çalar. Beyin hemen 20:00 ile 09:00 arasını hesaplar ve tuzağa düşer.",
  },

  {
    'id': 'GENIUS_018',
    'category': 'Zaman Mantığı',
    'timeLimitSeconds': 25,
    'scenario':
        "Doktorunuz size 3 hap verdi ve 'Bunları yarımşar saat arayla al' dedi. İlaçların tamamını bitirmeniz ne kadar sürer?",
    'options': [
      '1 saat',
      '1.5 saat',
      '2 saat',
      '45 dakika',
      '30 dakika',
      '90 dakika',
    ],
    'correctIndex': 0,
    'insight':
        "İlk hapı hemen yutarsın (0. dakika). İkinci hapı 30 dakika sonra yutarsın. Üçüncü hapı 60 dakika (1 saat) sonra yutarsın. Beyin 3x30=90 dakika (1.5 saat) basit hesabına düşer ama ilk hap her zaman sıfırıncı dakikadadır.",
  },
  {
    'id': 'GENIUS_019',
    'category': 'Odak Kayması',
    'timeLimitSeconds': 20,
    'scenario':
        "Büyük tufan yaklaşırken, Musa gemisine her hayvandan kaçar tane aldı?",
    'options': ['2', '1', '0', '7', 'Çifter çifter', 'Bilinemez'],
    'correctIndex': 2,
    'insight':
        "0! Gemisi olan kişi Musa değil Nuh'tu. Hikayenin meşhurluğu yüzünden beyin hemen sayısal cevaba (2) kilitlenir ancak kahramanın Nuh değil Musa olduğu detayını gözden kaçırır. Buna psikolojide 'Musa İllüzyonu' denir.",
  },
  {
    'id': 'GENIUS_020',
    'category': 'Sıralama Mantığı',
    'timeLimitSeconds': 15,
    'scenario':
        "Uzun soluklu bir koşu yarışındasın. Büyük bir depar atarak ikinci sıradaki yarışçıyı geçmeyi başardın. Şu anda kaçıncı sıradasın?",
    'options': [
      'Birinci',
      'İkinci',
      'Üçüncü',
      'Sonuncu',
      'İki buçukuncu',
      'Yarış dışı',
    ],
    'correctIndex': 1,
    'insight':
        "İkinci olursun! İkinciyi geçtiğinde onun yerini alırsın, yani ikinci sen olursun. Birinci kişi hala önündedir. Beynimiz hırsla 'ikinciyi geçtim, demek ki en öne geçtim' yanılgısına çok kolay düşer.",
  },
  {
    'id': 'GENIUS_023',
    'category': 'Algı Yönlendirmesi',
    'timeLimitSeconds': 20,
    'scenario':
        "Kırmızı bir ev kırmızı tuğlalardan, mavi bir ev mavi tuğlalardan, sarı ev sarı tuğlalardan yapılmış. Peki botanik sera neyden yapılır?",
    'options': [
      'Yeşil tuğlalardan',
      'Beyaz tuğlalardan',
      'Camdan',
      'Topraktan',
      'Ahşaptan',
      'Şeffaf tuğlalardan',
    ],
    'correctIndex': 2,
    'insight':
        "Seralar tuğladan değil, camdan yapılır! Sorunun başındaki renk ve tuğla kavramlarının sürekli tekrarı NLP (Neuro Linguistic Programming) gibi zihnini tuğla seçeneğine kitler, ancak mantığını devre dışı bırakır.",
  },
  {
    'id': 'GENIUS_024',
    'category': 'Mantıksal Zaman',
    'timeLimitSeconds': 25,
    'scenario':
        "Büyük bir bahçe duvarını örmek 8 tecrübeli ustanın tam 10 saatini aldı. Aynı duvarı bugün 4 usta örmeye kalksa ne kadar sürer?",
    'options': [
      '20 saat',
      '5 saat',
      '0 saat (hiç süre almaz)',
      '40 saat',
      '15 saat',
      '10 saat',
    ],
    'correctIndex': 2,
    'insight':
        "0 saat (Hiç süre almaz). Çünkü aynı duvar zaten 8 usta tarafından çoktan örülmüştü! Örülmüş olan bir duvarı tekrar örmeye gerek yoktur. Algımız matematiksel bir ters orantı sorusu çözdüğümüzü sanır.",
  },
  {
    'id': 'NEW_001',
    'category': 'Klasik Bilmeceler',
    'timeLimitSeconds': 20,
    'scenario':
        "Dört köşeli bir odada her köşede bir kedi var. Her kedinin önünde üç kedi var. Toplam kaç kedi var?",
    'options': ['4', '12', '16', '8', '6', 'Bilinemez'],
    'correctIndex': 0,
    'insight':
        "Oda dört köşeli ve her köşede bir kedi var. Ortada başka kedi olmadığından her kedi diğer 3 köşedeki kedileri görür. Toplam 4 kedi vardır.",
  },
  {
    'id': 'NEW_002',
    'category': 'Klasik Bilmeceler',
    'timeLimitSeconds': 30,
    'scenario':
        "Bir tavuğun ve yarım tavuğun bir buçuk günde yumurtladığı kadar yumurta, altı tavuk kaç günde yumurtlar?",
    'options': [
      '1 günde',
      '1.5 günde',
      '2 günde',
      '3 günde',
      '6 günde',
      '9 günde',
    ],
    'correctIndex': 0,
    'insight':
        "Kelime oyunu ve mantık şaşırtmacası içeren klasik bir bilmecedir.",
  },
  {
    'id': 'NEW_003',
    'category': 'Klasik Bilmeceler',
    'timeLimitSeconds': 15,
    'scenario': "Göl kenarında 6 kuş var, biri vurulursa kaç kuş kalır?",
    'options': ['Hiçbiri', '5', '6', '1', 'Bilinemez', '4'],
    'correctIndex': 0,
    'insight':
        "Silah sesiyle diğer kuşlar korkup uçar, vurulan da düştüğü için göl kenarında hiç kuş kalmaz.",
  },
  {
    'id': 'NEW_004',
    'category': 'Klasik Bilmeceler',
    'timeLimitSeconds': 20,
    'scenario':
        "İki baba ve iki oğul balığa çıktı, sadece üç balık tuttular ama her biri bir balık aldı. Nasıl olur?",
    'options': [
      'Dede, baba ve oğul',
      'Biri balığını böldü',
      'Evden getirdiler',
      'Kaptan da vardı',
      'İkisi aynı kişi',
      'Balıklar çok büyüktü',
    ],
    'correctIndex': 0,
    'insight':
        "Balığa çıkanlar Dede, Baba ve Oğuldur. Dede bir baba, Baba hem baba hem oğul, Oğul ise bir oğuldur. Toplam 3 kişidirler (2 baba, 2 oğul).",
  },
  {
    'id': 'NEW_005',
    'category': 'Klasik Bilmeceler',
    'timeLimitSeconds': 20,
    'scenario': "Ters çevrildiğinde hiçbir şey olmayan sayı hangisidir?",
    'options': ['8', '0', '6', '9', '1', '10'],
    'correctIndex': 0,
    'insight':
        "Mecazi ve görsel zekaya dayanan bir kelime oyunu bilmecesidir. Sayının görsel yansımasından hareketle cevap 8 olarak kabul edilir.",
  },
  {
    'id': 'NEW_006',
    'category': 'Klasik Bilmeceler',
    'timeLimitSeconds': 15,
    'scenario': "Hangi kelime her sözlükte yanlış yazılmıştır?",
    'options': ['Yanlış', 'Doğru', 'Kelimeler', 'Sözlük', 'Hiçbiri', 'Hepsi'],
    'correctIndex': 0,
    'insight':
        "Sözlükte kelimeler kendileri olarak yer alır. 'Yanlış' kelimesi de sözlükteki maddesi gereği olarak 'yanlış' şeklinde yazılmıştır.",
  },
  {
    'id': 'NEW_007',
    'category': 'Klasik Bilmeceler',
    'timeLimitSeconds': 20,
    'scenario': "Günde bir kez, yılda iki kez, dakikada hiç olmayan şey nedir?",
    'options': ['Harf Y', 'Güneş', 'Ay', 'Zaman', 'Rakamlar', 'Sayı'],
    'correctIndex': 0,
    'insight':
        "Kelime içi harf sayma veya tercüme yoluyla evrilmiş klasik bir harf oyunudur. Cevap 'Y' harfidir.",
  },
  {
    'id': 'NEW_008',
    'category': 'Klasik Bilmeceler',
    'timeLimitSeconds': 15,
    'scenario': "Kardeşinin kardeşi ama senin kardeşin değil. Kimdir bu?",
    'options': ['Kendin', 'Kuzenin', 'Amcan', 'Arkadaşın', 'Baban', 'Annen'],
    'correctIndex': 0,
    'insight':
        "Senin kardeşinin kardeşi, yine senin bulunduğun kardeş grubundadır. Eğer o kişi senin kardeşin değilse, o kişi sen olmalısın.",
  },
  {
    'id': 'NEW_009',
    'category': 'Klasik Bilmeceler',
    'timeLimitSeconds': 20,
    'scenario':
        "Aylin'in Babasının 5 kızı var:\n1. çaça\n2. çeçe\n3. çiçi\n4. çoço\n5. kızın adı nedir?",
    'options': ['Aylin', 'çuçu', 'çiçe', 'çaço', 'Bilinemez', 'Ayşe'],
    'correctIndex': 0,
    'insight':
        "Soruda en başta 'Aylin\\'in Babasının' dendiği için babanın çocuklarından biri zaten Aylin'dir. 'çuçu' cevabı ilk akla gelen şaşırtmacadır.",
  },
  {
    'id': 'UNIQUE_001',
    'category': 'Coğrafi Keşif Mantığı',
    'timeLimitSeconds': 30,
    'scenario':
        "Dünyanın en yüksek dağı olan Everest Dağı keşfedilmeden önce, dünyadaki en yüksek dağ hangisiyidi?",
    'options': [
      'K2 Dağı',
      'Everest Dağı',
      'Lhotse Dağı',
      'Ağrı Dağı',
      'Mont Blanc',
      'Keşfedilmediği için hiçbiri',
    ],
    'correctIndex': 1,
    'insight':
        "Keşfedilmemiş olması, Everest'in orada olduğu ve en yüksek olduğu gerçeğini değiştirmez. Zihin 'en yüksek' unvanının keşifle birlikte verildiğini varsayar ancak fiziksel gerçeklik sabittir.",
  },
  {
    'id': 'UNIQUE_002',
    'category': 'Zaman ve Aralık Hesabı',
    'timeLimitSeconds': 40,
    'scenario':
        "Antika bir duvar saati, saat tam 6'yı vurduğunda (6 kez çaldığında) toplam 30 saniye geçiyor. Bu saat, saat tam 12'yi vurduğunda (12 kez çaldığında) kaç saniye geçer?",
    'options': [
      '60 saniye',
      '66 saniye',
      '72 saniye',
      '55 saniye',
      '30 saniye',
      '120 saniye',
    ],
    'correctIndex': 1,
    'insight':
        "Tuzak: 6 vuruş arasında 5 boşluk (ara) vardır. 30/5 = her boşluk 6 saniyedir. 12 vuruş arasında ise 11 boşluk vardır. 11 x 6 = 66 saniye. Zihin doğrudan 2 katı olan 60'a yönelir.",
  },
  {
    'id': 'UNIQUE_003',
    'category': 'Eliminasyon Matematiği',
    'timeLimitSeconds': 45,
    'scenario':
        "128 tenisçinin katıldığı, kaybedenin elendiği (tek elemeli) bir turnuvada, şampiyonu belirlemek için toplam kaç maç yapılması gerekir?",
    'options': ['64', '127', '128', '256', '63', '32'],
    'correctIndex': 1,
    'insight':
        "Tek elemeli turnuvalarda 1 şampiyon çıkması için geri kalan herkesin (127 kişi) tam olarak bir kez yenilmesi gerekir. Her maçta bir kişi elendiğine göre maç sayısı 127'dir. Karmaşık hesaplara gerek yoktur.",
  },
  {
    'id': 'UNIQUE_004',
    'category': 'Bağlamsal Yanıltma',
    'timeLimitSeconds': 25,
    'scenario':
        "Bir kamyon şoförü, ters yöne girmenin yasak olduğu tek yönlü bir sokağa tam tersinden giriyor. Trafik polisi onu görüyor ama durdurmuyor, hatta selam veriyor. Neden?",
    'options': [
      'Şoför polisin akrabasıdır',
      'Polis o sırada meşguldür',
      'Şoför yürüyordur',
      'Kamyonun plakası yoktur',
      'Yol çalışması vardır',
      'Şoför geri geri gidiyordur',
    ],
    'correctIndex': 2,
    'insight':
        "Soruda şoförün 'kamyonla' sokağa girdiği söylenmiyor. O sadece bir kamyon şoförü (meslek olarak) ama o an yaya olarak sokağı ters yönde arşınlıyor olabilir. Meslek etiketi, aracın varlığını zihnimize dayatır.",
  },
  {
    'id': 'UNIQUE_005',
    'category': 'Duyu Paradoksu',
    'timeLimitSeconds': 30,
    'scenario':
        "Bir adam zifiri karanlık bir odada kitap okuyor. Odada lamba, mum, telefon, ay ışığı veya başka hiçbir ışık kaynağı yok. Adam kelimeleri nasıl net bir şekilde görebiliyor?",
    'options': [
      'Gece görüş gözlüğü takıyordur',
      'Kelimeleri ezberlemiştir',
      'Kitap Braille (kabartma) alfabesiyle yazılmıştır',
      'Adam bir kedi gözüne sahiptir',
      'Kitap ışıklı bir tablettir',
      'Aslında okumuyordur, hayal kuruyordur',
    ],
    'correctIndex': 2,
    'insight':
        "Zihin 'okumak' eylemini doğrudan 'görmek' ile eşleştirir. Ancak Braille alfabesi dokunma duyusuyla okunur; bu yüzden adamın ışığa (görmeye) ihtiyacı yoktur. 'Net bir şekilde görme' ifadesi buradaki asıl şaşırtmacadır.",
  },
  {
    'id': 'EPIC_001',
    'category': 'Stratejik Perspektif',
    'timeLimitSeconds': 45,
    'scenario':
        "Bir kral, iki oğlu arasından en sabırlı olanı seçmek için bir yarış düzenler: 'Kimin atı bitiş çizgisine DAHA GEÇ varırsa, krallık onun olacak.' Çocuklar günlerce at üstünde bekler, bir santim bile ilerlemezler. Sonunda bir bilge gelip kulaklarına bir şey fısıldar. Çocuklar anında atlara atlayıp bitiş çizgisine doğru çılgınlar gibi koşmaya başlarlar. Bilge ne demiştir?",
    'options': [
      'Hızlı giden kazanır, kural değişti!',
      'Atları değiştirin!',
      'Bitiş çizgisi aslında başlangıçtır.',
      'Krallık zaten paylaşıldı.',
      'Atların yemi bitti, acele edin.',
      'Babanız yarıştan vazgeçti.',
    ],
    'correctIndex': 1,
    'insight':
        "Perspektif Kayması! Atları değiştirdiklerinde, artık bindikleri at KARDEŞİNİN atıdır. Kendi atının 'en geç' varmasını isteyen kişi, şu an altında duran (kardeşine ait) atı bir an önce bitişe ulaştırmalıdır. Harika bir mantık taklası!",
  },
  {
    'id': 'MAGIC_SQUARE_001',
    'category': 'Matematiksel Paradoks',
    'timeLimitSeconds': 60,
    'scenario':
        "1'den 9'a kadar olan rakamları, her rakam yalnızca bir kez kullanılacak şekilde 3x3 bir matrise yerleştir. Kural: Her satırın, her sütunun ve her iki çaprazın toplamı tam olarak 15 olmalı. Merkezdeki sayı kaç olmalıdır?",
    'options': ['5', '4', '6', '3', '7', '9'],
    'correctIndex': 0,
    'insight':
        "Merkez sayı stratejisi:\n1'den 9'a kadar olan sayıların toplamı 45'tir. 3 satır olduğuna göre her satır toplamı 45 / 3 = 15 olmalıdır. Merkezdeki sayı, 4 farklı doğru (yatay, dikey, iki çapraz) üzerinde bulunur. 1'den 9'a kadar olan sayıların medyanı 5'tir ve merkezi dengeler.\n\nSonuç Tablosu:\n| 8 | 1 | 6 |\n| 3 | 5 | 7 |\n| 4 | 9 | 2 |\nBu dizilişte her yönden toplam 15 eder.",
  },
  {
    'id': 'MATCHSTICK_001',
    'category': 'Görsel Zeka & İllüzyon',
    'timeLimitSeconds': 45,
    'scenario':
        "Kibrit Çöpü Matematiği: Masanın üzerinde kibrit çöpleriyle yazılmış hatalı bir denklem duruyor:\n\n[ 6 + 4 = 4 ]\n\nGörev: Sadece BİR kibrit çöpünün yerini değiştirerek denklemi doğru hale getirmek.\n\nÇoğu kişi 6'yı 0 yapmayı (0+4=4) veya 6'dan alıp sonuca eklemeyi (5+4=9) akıl edebilir. Ancak, zihnin 'işaretleri sabit görme' yanılgısını yıkan o en şaşırtıcı 'Vay be!' hamlesi hangisidir?",
    'options': [
      '(+) işaretindeki dikey çöpü alıp 6 rakamına eklemek (8 - 4 = 4)',
      '(=) işaretinden bir çöp alıp artı yapmak (6 + 4 + 4)',
      '6 rakamının alt çöpünü eksiye eklemek (5 = 4 = 4)',
      'Rakamın değil masanın yerini değiştirmek',
      '4 rakamından bir çöp alıp altıya eklemek',
      'Tüm kibritleri yeniden dizmek',
    ],
    'correctIndex': 0,
    'insight':
        "Vay Be Etkisi: Kullanıcılar genelde sadece 'sayılarla' oynamaya çalışır ve aradaki işlem (+) veya (=) işaretini değiştirilemez bir sabit olarak algılar. (+) işaretini (-) eksiye çevirip, elimizde kalan dikey kibrit çöpünü 6'yı 8 yapmak için kullandığımızda denklem '8 - 4 = 4' olur. Sabit sandığın nesneleri oyuna dahil etmek, yanal düşüncenin (lateral thinking) zirvesidir!",
  },
  {
    'id': 'IQ_Logic_001',
    'category': 'Fiziksel Yanal Düşünce',
    'timeLimitSeconds': 60,
    'scenario':
        "Görsel dışarıda 3 anahtar (A, B, C) ve içeride (göremediğin) tek bir ampul var.\n\nSenaryo: Odaya sadece bir kez girme hakkın var.\n\nGörev: Hangi anahtarın lambayı yaktığını kesin olarak bulmak. Bunu nasıl yaparsın?",
    'options': [
      '"A"yı açıp 5 dk beklerim, kapatıp "B"yi açarım ve içeri girerim.',
      'Sırayla deneyip kapı aralığından dışarı sızan ışığa bakarım.',
      'Üçünü de aynı anda açıp içeri girerim, biri kesin yakıyordur.',
      'Önce C\'yi açıp 10 dakika bekler, sonra A\'ya geçerim.',
      'Mantıken bulmanın imkanı yoktur, şansımı denerim.',
      'Anahtarların kablolarını söküp takip ederim.',
    ],
    'correctIndex': 0,
    'insight':
        "Mantık:\n\"A\" anahtarını aç ve 5 dakika bekle, sonra kapat.\n\"B\" anahtarını aç ve içeri gir.\n- Lamba yanıyorsa cevap B'dir.\n- Lamba sönük ama SICAKSA cevap A'dır (Çünkü 5 dk açık kaldı).\n- Lamba sönük ve SOĞUKSA cevap C'dir.\n\nFiziksel bir boyutu (ısıyı) mantıksal bir probleme dahil etmek zihni her zaman şaşırtır. Zekice ve efsane bir yanal düşünce örneğidir!",
  },
  {
    'id': 'IQ_Logic_002',
    'category': 'Yanal Düşünce',
    'timeLimitSeconds': 45,
    'scenario':
        "Adamın biri bara girer ve barmenden bir bardak su ister. Barmen suyu vermek yerine aniden tezgâhın altından bir silah çıkarıp adama doğrultur. Adam 'Teşekkür ederim' der ve hiçbir şey içmeden bardan çıkar. Neden?",
    'options': [
      'Barmen adamın düşmanıydı, adam pes etti',
      'Adamın hıçkırığı vardı',
      'Adam bir soyguncuydu, silahı görünce kaçtı',
      'Su ile silah birlikte geliyordu',
      'Bu ikili arasında gizli bir şifreydi',
      'Adamın canı aslında su istemiyordu',
    ],
    'correctIndex': 1,
    'insight':
        "Adamın hıçkırığı vardı. Suyu hıçkırığını geçirmek için istemişti. Barmen durumu fark etti ve silah çekerek onu korkuttu. Korkmak hıçkırığı ani bir şokla geçirdiği için, adam amacına ulaşmış oldu ve teşekkür edip gitti.",
  },
  {
    'id': 'IQ_Logic_003',
    'category': 'Mantıksal Paradoks',
    'timeLimitSeconds': 45,
    'scenario':
        "Aynı anne babadan, aynı yıl, aynı ay, aynı gün ve aynı saatte doğmuş olan iki çocuk var. Ancak bu iki çocuk ikiz değildir. Bu durum biyolojik ve mantıksal olarak nasıl mümkün olabilir?",
    'options': [
      'Biri evlatlıktır',
      'Farklı yıllarda doğmuşlardır ama takvim yanlıştır',
      'Onlar üçüz (veya dördüz) bebeklerdir',
      'Laboratuvar ortamında üretilmişlerdir',
      'Aralarında dakika farkı vardır',
      'Biri diğerinin klonudur',
    ],
    'correctIndex': 2,
    'insight':
        "Zihin iki kişi denince hemen 'ikiz' kalıbına takılır. Oysa onlar üçüz, dördüz veya beşiz bebeklerin sadece 'iki tanesidir'. İkiz olmak zorunda değillerdir!",
  },
  {
    'id': 'IQ_Logic_004',
    'category': 'Hayatta Kalma Mantığı',
    'timeLimitSeconds': 40,
    'scenario':
        "Bir adam kilitli bir odada mahsur kalmıştır. Dışarı çıkmak için seçebileceği 3 kapı vardır. 1. kapının ardında alev alev yanan devasa bir yangın, 2. kapının ardında eli silahlı acımasız suikastçiler, 3. kapının ardında ise tam 3 yıldır hiçbir şey yememiş aslanlar vardır. Hangi kapıdan geçmelidir?",
    'options': [
      '1. Kapı (Ateş)',
      '2. Kapı (Suikastçiler)',
      '3. Kapı (Aslanlar)',
      'Kapıların kilidini kırmaya çalışmalıdır',
      'Olduğu yerde beklemelidir',
      'Polisi aramalıdır',
    ],
    'correctIndex': 2,
    'insight':
        "3 yıldır hiçbir şey yememiş aslanlar çoktan ölmüştür! Bu yüzden 3. kapının ardında herhangi bir tehlike yoktur ve oradan güvenle çıkabilir.",
  },
  {
    'id': 'IQ_Logic_005',
    'category': 'Dil ve Varsayım',
    'timeLimitSeconds': 45,
    'scenario':
        "Okyanusun ortasındaki ıssız bir adaya büyük bir yolcu uçağı düştü. Kurtulan her bir kişi adanın farklı bir köşesine savruldu. Kurtulanların hiçbiri aynı dili konuşmuyor ve yanlarında bir çevirmen veya cihaz yok. Yine de aynı gün içinde hepsi bir araya geldiğinde sorunsuz bir şekilde anlaştılar. Nasıl?",
    'options': [
      'Hepsi o an aynı dili yeni öğrendi',
      'İşaret diliyle iletişim kurdular',
      'Sadece tek bir kişi kurtuldu',
      'Telepati yetenekleri açığa çıktı',
      'Ortak bir şifreleme buldular',
      'Pilot onlara liderlik etti',
    ],
    'correctIndex': 2,
    'insight':
        "Uçak kazasından sadece BİR KİŞİ kurtulmuştur! Ortada anlaşması gereken başka biri olmadığı için bir iletişim sorunu da yaşanmamıştır. Zihin 'kurtulanların' kelimesindeki çoğul eke ve 'hepsi bir araya geldiğinde' ifadesine aldanıp kalabalık bir grup hayal eder.",
  },
  {
    'id': 'IQ_Logic_006',
    'category': 'Fiziksel Yanal Düşünce',
    'timeLimitSeconds': 50,
    'scenario':
        "Bir adam her sabah işe gitmek için 20. kattaki dairesinden asansöre binip zemin kata iniyor. İşten dönerken ise asansöre biniyor, 5. kata kadar çıkıyor ve kalan 15 katı her gün yürüyor. Ancak yağmurlu günlerde doğrudan 20. kata asansörle çıkıyor. Adam spor yapmayı sevmiyor ve asansör bozuk değil. Neden?",
    'options': [
      'Adamın bir fobisi vardır',
      'Asansör 5. kattan sonrasını çekmiyordur',
      'Adam bir cücedir',
      'Yağmuru sevdiği için terasına çıkıyordur',
      '5. katta arkadaşına uğruyordur',
      'Binanın elektriği tasarruf modundadır',
    ],
    'correctIndex': 2,
    'insight':
        "Adam bir cücedir (boyu çok kısadır). Zemin kata inmek için en alttaki düğmeye basabiliyor ama çıkarken sadece 5. katın düğmesine boyu yetişebiliyor. Ancak yağmurlu günlerde elinde şemsiyesi olduğu için şemsiyenin ucuyla 20. katın düğmesine basabiliyor.",
  },
  {
    'id': 'IQ_Logic_007',
    'category': 'Olasılık ve Mantık',
    'timeLimitSeconds': 40,
    'scenario':
        "Tamamen karanlık bir odadasın. Masanın üzerinde bir kutu var ve içinde 10 tane siyah, 10 tane beyaz çorap olduğunu biliyorsun. Renkleri görmen imkansız. Kesinlikle aynı renkten bir çift (ya iki siyah ya iki beyaz) elde etmek için kutudan en az kaç çorap almalısın?",
    'options': [
      '2 çorap',
      '3 çorap',
      '10 çorap',
      '11 çorap',
      '20 çorap',
      '12 çorap',
    ],
    'correctIndex': 1,
    'insight':
        "Sadece 3 çorap almak yeterlidir! Eğer çektiğin ilk iki çorap farklı renkse (1 siyah, 1 beyaz), çekeceğin 3. çorap mecburen ya siyah ya da beyaz olacaktır. Bu sayede elinde kesinlikle bir renk çifti bulunacaktır.",
  },
  {
    'id': 'IQ_Logic_008',
    'category': 'Görsel Algı',
    'timeLimitSeconds': 35,
    'scenario':
        "Bir pencere temizleyicisi 100 katlı bir gökdelenin camlarını siliyordu. Aniden ayağı kaydı ve aşağı düştü. Üzerinde hiçbir güvenlik halatı ya da altında koruyucu bir file yoktu. Hiçbir yere de tutunamadı. Ancak adam hiçbir yara almadan, burnu bile kanamadan ayağa kalktı. Nasıl?",
    'options': [
      'Adam bir süper kahramandı',
      'Aşağıdan geçen yumuşak bir kamyona düştü',
      'Gökdelenin zemin katındaydı',
      'Kuvvetli bir rüzgar onu havalandırdı',
      'Aslında bir rüya görüyordu',
      'Bina henüz inşa halindeydi',
    ],
    'correctIndex': 2,
    'insight':
        "Adam gökdelenin iç kısmından veya doğrudan 'zemin katından' camı temizlerken düşmüştür! Zihin, '100 katlı gökdelen' detayını duyduğu an kişinin otomatik olarak en üst katta olduğunu varsayar. Bu klasik bir dikkat tuzağıdır.",
  },
  {
    'id': 'IQ_Logic_009',
    'category': 'Soyut Düşünce',
    'timeLimitSeconds': 50,
    'scenario':
        "Şu kelimelere dikkatle bak: Sessiz, Sessizlik, Sağır, Kör, Dilsiz. Bu kelimelerin hepsini büyük harflerle bir kağıda yazdın ve eline alıp sokakta avazın çıktığı kadar bağırarak insanlara okudun. Bu eylemi yaptığın an, içlerinden hangi kelimenin temel anlamı anında yalan olmuş olur?",
    'options': ['Sağır', 'Kör', 'Dilsiz', 'Hiçbiri', 'Sessiz', 'Hepsi'],
    'correctIndex': 4,
    'insight':
        "Bağırarak okuduğunuz kelime 'Sessiz' veya 'Sessizlik'tir. Siz bunu avazınız çıktığı kadar bağırarak söylediğiniz an, o kelimenin taşıdığı kavramı (sessiz olma halini) fiziksel olarak yıkmış ve yalan kılmış olursunuz.",
  },
  {
    'id': 'IQ_Logic_010',
    'category': 'Görsel Şifre',
    'timeLimitSeconds': 60,
    'scenario':
        "Bir otoparkta arabalar yan yana dizilmiş park yerlerine park etmişlerdir. Yerde yazan park yeri numaraları soldan sağa doğru şu şekildedir: 16, 06, 68, 88, (Araba), 98. Araba hangi numaralı park yerinin üzerine park etmiştir?",
    'options': ['78', '87', '89', '108', '99', '76'],
    'correctIndex': 1,
    'insight':
        "Numaralara tersten (baş aşağı) bakmalısınız! Otoparka arabanın girdiği yönden baktığınızda sayılar sırasıyla: 86, (Araba=87), 88, 89, 90, 91 şeklindedir. Bize düzden 16 gibi görünen sayı, şoför koltuğundan bakıldığında aslında 91'dir.",
  },
  {
    'id': 'IQ_Logic_011',
    'category': 'Analitik Dikkat',
    'timeLimitSeconds': 45,
    'scenario':
        "İki eski arkadaş sıcak bir yaz günü restorana gider ve aynı içecekten (buzlu çay) sipariş ederler. Biri o kadar susamıştır ki, art arda 5 bardağı hızla diker. Diğeri ise tek bir bardağı yavaş yavaş, yudumlayarak, sohbet ederek bitirir. Garip olan şudur: İkisinin de bardağında güçlü bir zehir vardır. Ancak yavaş içen adam ölür, hızlı içen adam ise hayatta kalır. Nasıl?",
    'options': [
      'Hızlı içen kişi önceden panzehir almıştı',
      'Zehir bardağın en altındaydı, hızlı içen dibini görmedi',
      'Zehir içecekte değil buzların içindeydi',
      'Yavaş içen adam alerjik kriz geçirdi',
      'Zehir havayla temas ettikçe güçlendi',
      'Garson yanlışlıkla sadece birine zehir koydu',
    ],
    'correctIndex': 2,
    'insight':
        "Zehir, çayın kendisine değil 'buzların' içine enjekte edilmişti. Hızlı içen adam, buzlar henüz erimeye vakit bulamadan içecekleri bitirdiği için zehir çaya karışmadı. Ancak yavaş içen adam uzun süre beklediği için buzlar eridi ve ölümcül zehir içeceğine karıştı.",
  },
];
