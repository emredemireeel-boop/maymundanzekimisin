/// Net koşulları ve tek bir doğrulanabilir cevabı olan yeni zihin tuzakları.
final List<Map<String, dynamic>> advancedQuestionsData = [
  {
    'id': 'TRAP_001',
    'category': 'Stratejik Düşünce',
    'timeLimitSeconds': 50,
    'scenario':
        'Dört hücreli bir çarkta değerler sırayla 1, 2, 4, 8. Ok her adımda bir sonraki hücreye geçiyor; 8\'den sonra yeniden 1\'e dönüyor. İlk üç adımın çıktısı 1→2, 2→4, 3→8. Dördüncü adımın çıktısı nedir?',
    'options': ['16', '1', '8', '0', '4', 'Belirlenemez'],
    'correctIndex': 1,
    'insight':
        'Bu bir sonsuz katlama dizisi değil, dört hücreli döngü. Son hücreden sonra ok ilk hücreye döner; cevap 1. Döngü koşulu verilmeseydi 16 da 1 de mümkün olurdu.',
  },
  {
    'id': 'TRAP_002',
    'category': 'Bayesyen Mantık',
    'timeLimitSeconds': 70,
    'scenario':
        'Taksilerin %90\'ı mavi, %10\'u kırmızı. Bir tanık renkleri %80 doğrulukla ayırt ediyor ve “kırmızı” diyor. Taksi gerçekten kırmızı olma olasılığına en yakın değer nedir?',
    'options': ['%80', '%50', '%31', '%10', '%8', '%90'],
    'correctIndex': 2,
    'insight':
        '1000 taksinin 100\'ü kırmızı, 900\'ü mavidir. Tanık yaklaşık 80 kırmızıyı doğru, 180 maviyi yanlışlıkla kırmızı görür. Kırmızı raporlarının 80/260\'ı gerçektir: yaklaşık %31.',
  },
  {
    'id': 'TRAP_003',
    'category': 'Stratejik Düşünce',
    'timeLimitSeconds': 60,
    'scenario':
        'Üç kapıdan birinde ödül var. Bir kapı seçiyorsun. Ödülün yerini bilen sunucu, seçmediğin boş kapılardan birini açıyor ve değiştirme şansı veriyor. Ne yaparsan kazanma olasılığın en yüksek olur?',
    'options': [
      'İlk seçimde kal: 2/3',
      'Değiştir: 2/3',
      'İkisi de 1/2',
      'İkisi de 1/3',
      'Açılan kapıyı seç',
      'Sunucunun hareketinden sonuç çıkmaz',
    ],
    'correctIndex': 1,
    'insight':
        'İlk seçim doğru olma olasılığı 1/3, yanlış olma olasılığı 2/3. Sunucu boş kapıyı bilerek açtığı için ilk seçimin yanlış olduğu 2/3 durumda değiştirmek kazandırır.',
  },
  {
    'id': 'TRAP_004',
    'category': 'Bayesyen Mantık',
    'timeLimitSeconds': 75,
    'scenario':
        'Bir durum toplumun %1\'inde var. Test hastaların %99\'unda pozitif, sağlıklı kişilerin %5\'inde yanlış pozitif veriyor. Pozitif sonuç alan birinin gerçekten hasta olma olasılığına en yakın değer nedir?',
    'options': ['%99', '%95', '%50', '%17', '%5', '%1'],
    'correctIndex': 3,
    'insight':
        '10.000 kişide yaklaşık 100 hasta vardır; 99\'u pozitif çıkar. 9.900 sağlıklının 495\'i yanlış pozitif çıkar. Pozitiflerin 99/594\'ü, yaklaşık %16,7\'si hastadır.',
  },
  {
    'id': 'TRAP_005',
    'category': 'Bayesyen Mantık',
    'timeLimitSeconds': 65,
    'scenario':
        'Bir adil para ile iki yüzü de yazı olan bir paradan birini rastgele seçip atıyorsun. Üstte yazı göründü. Seçtiğin paranın iki yüzü de yazı olma olasılığı kaçtır?',
    'options': ['1/4', '1/3', '1/2', '2/3', '3/4', '1'],
    'correctIndex': 3,
    'insight':
        'Adil paradan yazı gelme ağırlığı 1/2 × 1/2 = 1/4; çift yazılı paradan 1/2 × 1 = 1/2. Gözlenen yazıların 1/2 ÷ (1/4 + 1/2) = 2/3\'ü çift yazılı paradan gelir.',
  },
  {
    'id': 'TRAP_006',
    'category': 'Stratejik Düşünce',
    'timeLimitSeconds': 55,
    'scenario':
        'Kural: “Kartın bir yüzünde sesli harf varsa öbür yüzünde çift sayı vardır.” Masada E, K, 4, 7 görünen dört kart var. Kuralı yanlışlayabilecek kartları bulmak için hangilerini çevirmelisin?',
    'options': [
      'E ve 4',
      'E ve 7',
      'K ve 4',
      'Yalnız E',
      'Dördünü de',
      'K ve 7',
    ],
    'correctIndex': 1,
    'insight':
        'E\'nin arkasında tek sayı çıkarsa kural bozulur. 7\'nin arkasında sesli harf çıkarsa da bozulur. Çift sayı görmek, arkasında sesli harf bulunmasını zorunlu kılmaz.',
  },
  {
    'id': 'TRAP_007',
    'category': 'Bilişsel Yanılgılar',
    'timeLimitSeconds': 45,
    'scenario':
        'Bir kalem ve silgi birlikte 1,10 TL. Kalem, silgiden tam 1 TL daha pahalı. Silginin fiyatı kaç TL?',
    'options': ['0,10', '0,05', '0,01', '0,50', '1,00', 'Belirlenemez'],
    'correctIndex': 1,
    'insight':
        'Silgi x TL ise kalem x+1 TL. 2x+1 = 1,10 olduğundan x = 0,05 TL. 0,10 cevabı toplamı 1,20 TL yapar.',
  },
  {
    'id': 'TRAP_008',
    'category': 'Stratejik Düşünce',
    'timeLimitSeconds': 45,
    'scenario':
        'Bir göldeki bitki her gün iki katına çıkıyor ve 48. gün gölü tamamen kaplıyor. Göl hangi gün yarı kaplıydı?',
    'options': [
      '24. gün',
      '46. gün',
      '47. gün',
      '48. gün',
      '12. gün',
      'Bilgi yetersiz',
    ],
    'correctIndex': 2,
    'insight':
        'Her gün ikiye katlandığı için tam dolu günün bir önceki günü yarı doludur: 47. gün. Süreyi ikiye bölmek, miktarın ikiye katlanmasıyla aynı şey değildir.',
  },
  {
    'id': 'TRAP_009',
    'category': 'Bayesyen Mantık',
    'timeLimitSeconds': 65,
    'scenario':
        'İki adil para atılıyor. En az birinin yazı geldiğini öğrendin; hangi para olduğu söylenmiyor. İkisinin de yazı gelmiş olma olasılığı kaçtır?',
    'options': ['1/4', '1/3', '1/2', '2/3', '3/4', '1'],
    'correctIndex': 1,
    'insight':
        'En az bir yazı koşulunu sağlayan eş olasılıklı sonuçlar YY, YT ve TY\'dir. Bunların yalnız biri iki yazıdır: 1/3.',
  },
  {
    'id': 'TRAP_010',
    'category': 'Stratejik Düşünce',
    'timeLimitSeconds': 50,
    'scenario':
        'Bir kutuda 3 kırmızı, 2 mavi top var. Geri koymadan art arda iki top çekiliyor. İlk topun kırmızı olduğu biliniyor. İkinci topun da kırmızı olma olasılığı nedir?',
    'options': ['3/5', '2/5', '1/2', '2/3', '1/4', '3/4'],
    'correctIndex': 2,
    'insight':
        'İlk kırmızı çıktıktan sonra kutuda 2 kırmızı ve 2 mavi kalır. İkinci topun kırmızı gelme olasılığı 2/4 = 1/2.',
  },
  {
    'id': 'TRAP_011',
    'category': 'Bilişsel Yanılgılar',
    'timeLimitSeconds': 50,
    'scenario':
        'Bir adil para art arda beş kez tura geldi. Altıncı atışta yazı gelme olasılığı nedir?',
    'options': [
      '1/6',
      '1/4',
      '1/2',
      '5/6',
      'Kesin yazı',
      'Para artık adil değildir',
    ],
    'correctIndex': 2,
    'insight':
        'Bağımsız atışlarda geçmiş sonuçlar sonraki atışın olasılığını değiştirmez. Para adil olduğu sürece yazı olasılığı yine 1/2\'dir.',
  },
  {
    'id': 'TRAP_012',
    'category': 'Stratejik Düşünce',
    'timeLimitSeconds': 55,
    'scenario':
        '“Bütün A\'lar B\'dir. Bazı B\'ler C\'dir.” Bu iki önermeden A ve C hakkında kesin olarak ne çıkar?',
    'options': [
      'Bütün A\'lar C\'dir',
      'Bazı A\'lar C\'dir',
      'Hiçbir A, C değildir',
      'A ile C ilişkisi belirlenemez',
      'Bütün C\'ler A\'dır',
      'A kümesi boştur',
    ],
    'correctIndex': 3,
    'insight':
        'C olan B\'ler A kümesinin içinde de dışında da bulunabilir. Verilen iki önerme kesişimin olup olmadığını söylemez.',
  },
  {
    'id': 'TRAP_013',
    'category': 'Stratejik Düşünce',
    'timeLimitSeconds': 55,
    'scenario':
        'A ve B ya hep doğru söyler ya hep yalan. A, “İkimiz de yalancıyız” diyor. A ve B gerçekte nedir?',
    'options': [
      'İkisi de doğru söyler',
      'İkisi de yalancı',
      'A doğru, B yalancı',
      'A yalancı, B doğru',
      'Çözümsüz',
      'Belirlenemez',
    ],
    'correctIndex': 3,
    'insight':
        'A doğru söylüyor olsaydı kendi yalancı olduğunu da doğru söylemiş olurdu; çelişki. A yalancıdır. “İkimiz de yalancıyız” ifadesinin yanlış olması için B doğru söylemelidir.',
  },
  {
    'id': 'TRAP_014',
    'category': 'Stratejik Düşünce',
    'timeLimitSeconds': 60,
    'scenario':
        'Dokuz özdeş görünümlü madeni paranın biri diğerlerinden hafif. İki kefeli terazide en az kaç tartıyla hafif parayı kesin bulabilirsin?',
    'options': ['1', '2', '3', '4', '5', '8'],
    'correctIndex': 1,
    'insight':
        'Paraları 3-3-3 ayır. İlk tartıda iki üçlü grubu karşılaştır; hafif grup ya da denge halinde tartılmayan grup seçilir. İkinci tartıda bu üçlüden iki parayı karşılaştır.',
  },
  {
    'id': 'TRAP_015',
    'category': 'Stratejik Düşünce',
    'timeLimitSeconds': 70,
    'scenario':
        '1\'den 100\'e numaralı 100 kapı kapalı. 1. kişi her kapıyı, 2. kişi her ikinci kapıyı, ... 100. kişi yalnız 100. kapıyı açıp kapıyor. Sonunda kaç kapı açık kalır?',
    'options': ['5', '10', '25', '50', '99', '100'],
    'correctIndex': 1,
    'insight':
        'n numaralı kapı, n\'nin her böleninde bir kez değişir. Bölenler normalde çiftler halinde gelir; yalnız tam karelerde tek sayıda bölen vardır. 1² ile 10² arasındaki 10 kapı açık kalır.',
  },
  {
    'id': 'TRAP_016',
    'category': 'Davranışsal Ekonomi',
    'timeLimitSeconds': 50,
    'scenario':
        'Bir filme iadesiz 200 TL ödedin. Başlamadan önce ücretsiz ve daha çok istediğin başka bir etkinlik çıktı. Bilet satılamıyor. Hangisi gelecekteki yararını artırır?',
    'options': [
      'Parayı kurtarmak için filme gitmek',
      'Daha çok istediğin etkinliğe gitmek',
      'İkisine de gitmemek',
      'Bileti ikiye katlamak',
      'Rastgele seçmek',
      '200 TL daha harcamak',
    ],
    'correctIndex': 1,
    'insight':
        '200 TL her iki durumda da geri gelmez; batık maliyettir. Kararı bundan sonra yaşayacağın deneyimlerin değerine göre vermelisin.',
  },
  {
    'id': 'TRAP_017',
    'category': 'Oyun Teorisi',
    'timeLimitSeconds': 65,
    'scenario':
        'A ve B aynı anda İşbirliği veya İhanet seçiyor. İkisi işbirliği yaparsa her biri 3 puan, ikisi ihanet ederse 1 puan alır. Biri ihanet edip öteki işbirliği yaparsa ihanet eden 5, diğeri 0 puan alır. Tek turda yalnız kendi puanını artırmak isteyen A için hangi seçim baskındır?',
    'options': [
      'İşbirliği',
      'İhanet',
      'Rakibin seçimine bağlı',
      'Rastgele seçim',
      'Oynamamak',
      'Beraberlik istemek',
    ],
    'correctIndex': 1,
    'insight':
        'B işbirliği yaparsa ihanet A\'ya 5 yerine 3 değil, 5 puan getirir. B ihanet ederse A\'nın ihaneti 1, işbirliği 0 puan getirir. Her iki durumda ihanet daha yüksek puanlıdır.',
  },
  {
    'id': 'TRAP_018',
    'category': 'Bayesyen Mantık',
    'timeLimitSeconds': 75,
    'scenario':
        'Üç kapılı oyunda sunucu ödülün yerini BİLMİYOR. İlk kapını seçtikten sonra kalan iki kapıdan rastgele birini açıyor; şans eseri boş çıkıyor. Şimdi kapı değiştirmek ile kalmak için kazanma olasılıkları nedir?',
    'options': [
      'Değiştir 2/3, kal 1/3',
      'İkisi de 1/2',
      'Kal 2/3, değiştir 1/3',
      'İkisi de 1/3',
      'Değiştir kesin kazanır',
      'Bilgi yetersiz',
    ],
    'correctIndex': 1,
    'insight':
        'İlk seçim doğruysa (1/3), bilgisiz sunucu kesin boş kapı açar. İlk seçim yanlışsa (2/3), boş kapı açma şansı 1/2\'dir. Boş açıldığını gördüğünde bu iki durumun ağırlığı eşitlenir; kalmak ve değiştirmek 1/2 olur.',
  },
  {
    'id': 'TRAP_019',
    'category': 'Bayesyen Mantık',
    'timeLimitSeconds': 60,
    'scenario':
        'İki adil zar atıldı. En az bir zarın 6 olduğu biliniyor. İki zarın da 6 olma olasılığı nedir?',
    'options': ['1/36', '1/12', '1/11', '1/6', '1/2', '1/3'],
    'correctIndex': 2,
    'insight':
        'En az bir 6 içeren 11 sıralı sonuç vardır: birinci zarda 6 olan 6 sonuç, ikinci zarda 6 olan 6 sonuç; (6,6) iki kez sayıldığı için 6+6−1=11. Bunların biri (6,6)\'dır.',
  },
  {
    'id': 'TRAP_020',
    'category': 'Stratejik Düşünce',
    'timeLimitSeconds': 60,
    'scenario':
        'İki ip de tek uçtan yakılınca tam 60 dakikada bitiyor; fakat yanma hızları düzensiz. Bir çakmakla tam 45 dakikayı nasıl ölçersin?',
    'options': [
      'İlk ipi ortadan kes',
      'Bir ipi iki uçtan, diğerini tek uçtan yak; ilk bitince ikincinin diğer ucunu da yak',
      'İpleri sırayla tek uçtan yak',
      'İki ipi de tek uçtan yak',
      'İki ipi de iki uçtan yak',
      'Düzensiz hız nedeniyle imkânsız',
    ],
    'correctIndex': 1,
    'insight':
        'İki uçtan yanan ilk ip 30 dakikada biter. O sırada tek uçtan yanan ikinci ipin 30 dakikalık yanma süresi kalmıştır. Öteki ucunu da yakarsan kalan kısım 15 dakikada biter; toplam 45.',
  },
  {
    'id': 'TRAP_021',
    'category': 'Bilişsel Yanılgılar',
    'timeLimitSeconds': 50,
    'scenario':
        'Bir şehirde yüksek dondurma satışlı günlerde yüzme kazaları da artıyor. Yalnız bu korelasyona dayanarak hangisi kesin söylenebilir?',
    'options': [
      'Dondurma kazalara neden olur',
      'Kazalar dondurma satışını artırır',
      'İkisinin ortak nedeni sıcak hava olabilir',
      'Dondurma yasaklanmalıdır',
      'İlişki tesadüf olamaz',
      'Yüzme her zaman güvenlidir',
    ],
    'correctIndex': 2,
    'insight':
        'Korelasyon yönünü veya nedeni tek başına göstermez. Sıcak hava hem dondurma satışlarını hem yüzmeye giden insan sayısını artırabilir; bu, verilerle uyumlu bir açıklamadır.',
  },
  {
    'id': 'TRAP_022',
    'category': 'Stratejik Düşünce',
    'timeLimitSeconds': 55,
    'scenario':
        'Altı kişilik bir grupta her iki kişi ya birbirini tanıyor ya da tanımıyor. Her durumda kesin bulunacak şey nedir?',
    'options': [
      'Herkesin tanıdığı bir kişi',
      'Birbirini tanıyan üç kişi veya birbirini tanımayan üç kişi',
      'Herkesin yabancı olduğu bir kişi',
      'Birbirini tanıyan dört kişi',
      'Tam üç arkadaş çifti',
      'Hiçbir ortak özellik gerekmez',
    ],
    'correctIndex': 1,
    'insight':
        'Bir kişiyi seç. Kalan beş kişinin en az üçüyle aynı ilişkiye sahiptir: tanıyor ya da tanımıyor. Bu üçün kendi arasında o ilişkiyi paylaşan bir çift varsa ilk kişiyle üçlü kurulur; yoksa üçünün her çifti ters ilişkiyi paylaşır.',
  },
  {
    'id': 'TRAP_023',
    'category': 'Stratejik Düşünce',
    'timeLimitSeconds': 60,
    'scenario':
        '8×8 satranç tahtasının karşılıklı iki köşe karesi çıkarılıyor. Kalan 62 kare, her biri kenardan bitişik iki kareyi örten 31 domino ile boşluksuz kaplanabilir mi?',
    'options': [
      'Evet, 62 çift sayıdır',
      'Evet, çapraz yerleşimle',
      'Hayır, çıkarılan köşeler aynı renktir',
      'Hayır, 31 tek sayıdır',
      'Yalnız tahtayı döndürürsen',
      'Bilgi yetersiz',
    ],
    'correctIndex': 2,
    'insight':
        'Karşılıklı köşeler aynı renktedir. Onlar çıkarılınca bir renkten 30, diğerinden 32 kare kalır. Her domino bir siyah ve bir beyaz kare örter; 31 domino iki renkten de 31\'er kare ister. Bu yüzden kaplama imkânsızdır.',
  },
  {
    'id': 'TRAP_024',
    'category': 'Davranışsal Ekonomi',
    'timeLimitSeconds': 60,
    'scenario':
        'İki bağımsız seçenek var. A kesin 40 TL kazandırıyor. B %50 olasılıkla 100 TL kazandırıyor, aksi halde 0 TL. Yalnız beklenen parasal değeri en yüksek olanı seçiyorsan hangisini seçersin?',
    'options': [
      'A, çünkü kesin',
      'B, çünkü beklenen değeri 50 TL',
      'İkisi eşit',
      'B, çünkü kesin 100 TL',
      'A, çünkü beklenen değeri 80 TL',
      'Veri yetersiz',
    ],
    'correctIndex': 1,
    'insight':
        'A\'nın beklenen değeri 40 TL. B\'nin beklenen değeri 0,5×100 + 0,5×0 = 50 TL. Soru risk tercihlerini değil yalnız beklenen parayı soruyor.',
  },
  {
    'id': 'TRAP_025',
    'category': 'Stratejik Düşünce',
    'timeLimitSeconds': 65,
    'scenario':
        'Bir kartta “Yağmur yağıyorsa yer ıslaktır” yazıyor. Yerin ıslak olduğunu gördün. Bu bilgi tek başına neyi kanıtlar?',
    'options': [
      'Kesin yağmur yağmıştır',
      'Kesin yağmur yağmamıştır',
      'Yağmur olasılığı sıfırdır',
      'Yağmur yağıp yağmadığı çıkarılamaz',
      'Karttaki kural yanlıştır',
      'Yer ıslak değildir',
    ],
    'correctIndex': 3,
    'insight':
        'Yağmur, ıslak zemin için yeterli bir neden olarak verilmiştir; tek neden olduğu söylenmemiştir. Zemin sulama gibi başka bir nedenle de ıslanmış olabilir.',
  },
];
