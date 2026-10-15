/// 2026 matematik yarışmalarındaki sayma, olasılık ve değişmezlik temalarından
/// esinlenen özgün, kısa ve tek cevaplı sorular.
final List<Map<String, dynamic>> competitionQuestions2026 = [
  {
    'id': 'COMP26_001',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir küpün bütün yüzleri boyanıp 3×3×3 eş küçük küpe ayrılıyor. Tam iki yüzü boyalı kaç küçük küp vardır?',
    'options': ['8', '12', '6', '18', '24', '0'],
    'correctIndex': 1,
    'insight':
        'Tam iki boyalı yüzü olanlar 12 ayrıtın köşe olmayan orta küpleridir. Her ayrıt bir tane verir: 12.',
  },
  {
    'id': 'COMP26_002',
    'category': 'Bayesyen Mantık',
    'scenario':
        'Adil bir zar iki kez atılıyor. Toplamın 7 olduğu biliniyor. İlk zarın 3 olma olasılığı nedir?',
    'options': ['1/36', '1/12', '1/6', '1/3', '1/2', '1'],
    'correctIndex': 2,
    'insight':
        'Toplamı 7 yapan sıralı altı çift vardır: (1,6) ile (6,1). Yalnız (3,4) ilk zarı 3 yapar; olasılık 1/6.',
  },
  {
    'id': 'COMP26_003',
    'category': 'Stratejik Düşünce',
    'scenario':
        '1, 2, 3, 4, 5 rakamları her biri bir kez kullanılarak beş basamaklı sayılar yazılıyor. Kaçı 5 ile tam bölünür?',
    'options': ['12', '24', '60', '120', '5', '96'],
    'correctIndex': 1,
    'insight':
        '5 ile bölünmesi için son rakam 5 olmalı. Kalan dört rakam 4! = 24 farklı sıraya dizilir.',
  },
  {
    'id': 'COMP26_004',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Beş farklı kitap rafa dizilecek. A ve B kitapları yan yana olacaksa kaç farklı diziliş vardır?',
    'options': ['24', '48', '60', '72', '96', '120'],
    'correctIndex': 1,
    'insight':
        'A ve B\'yi bir blok sayınca dört nesne 4! biçimde dizilir. Blok içi AB veya BA olabilir: 2×24 = 48.',
  },
  {
    'id': 'COMP26_005',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir kareli kâğıtta (0,0) noktasından (3,2) noktasına yalnız sağa ve yukarı birer birim giderek kaç en kısa yol vardır?',
    'options': ['5', '6', '8', '10', '12', '20'],
    'correctIndex': 3,
    'insight':
        'Her en kısa yol üç sağ ve iki yukarı adımdan oluşur. Beş adım içinden yukarı olan ikisinin yerini seçeriz: C(5,2)=10.',
  },
  {
    'id': 'COMP26_006',
    'category': 'Bayesyen Mantık',
    'scenario':
        'Bir torbada 2 kırmızı ve 3 mavi top var. Geri koymadan iki top çekiliyor. İkisinin farklı renk olma olasılığı nedir?',
    'options': ['1/5', '2/5', '1/2', '3/5', '4/5', '1'],
    'correctIndex': 3,
    'insight':
        'Farklı renkli çift sayısı 2×3=6; toplam çift sayısı C(5,2)=10. Olasılık 6/10=3/5.',
  },
  {
    'id': 'COMP26_007',
    'category': 'Stratejik Düşünce',
    'scenario':
        '1\'den 20\'ye kadar sayılardan iki farklı sayı seçiliyor. Toplamlarının tek olması için kaç seçim vardır?',
    'options': ['20', '45', '90', '100', '190', '200'],
    'correctIndex': 3,
    'insight':
        'Toplam ancak biri tek, biri çift olursa tektir. 10 tek ve 10 çift sayı vardır; 10×10=100 çift seçilir.',
  },
  {
    'id': 'COMP26_008',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir 5×5 kareli tabloda kaç tane 2×2 küçük kare vardır? Kareler ızgara çizgilerine paraleldir.',
    'options': ['9', '16', '20', '25', '32', '36'],
    'correctIndex': 1,
    'insight':
        '2×2 karenin sol üst köşesi ilk dört satır ve ilk dört sütundan seçilir: 4×4=16.',
  },
  {
    'id': 'COMP26_009',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir sayı 6 ile bölümünden 5, 4 ile bölümünden 3 kalanını veriyor. Aşağıdakilerden hangisi bu koşulları sağlar?',
    'options': ['15', '17', '19', '21', '23', '25'],
    'correctIndex': 4,
    'insight':
        '23 = 6×3+5 ve 23 = 4×5+3. Diğer seçenekler iki kalan koşulunu birlikte sağlamaz.',
  },
  {
    'id': 'COMP26_010',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Sadece 2 ve 3 rakamlarıyla oluşturulan üç basamaklı sayıların kaçında iki tane 2 vardır?',
    'options': ['1', '2', '3', '4', '6', '8'],
    'correctIndex': 2,
    'insight':
        'Tek 3 rakamının konumu üç farklı yerde olabilir: 322, 232, 223.',
  },
  {
    'id': 'COMP26_011',
    'category': 'Bayesyen Mantık',
    'scenario':
        'Üç adil para atılıyor. Tam iki yazı geldiği biliniyor. İlk paranın yazı olma olasılığı kaçtır?',
    'options': ['1/3', '1/2', '2/3', '3/4', '1/4', '1'],
    'correctIndex': 2,
    'insight':
        'Tam iki yazılı eş olasılıklı üç sonuç YYT, YTY, TYY\'dir. İlk para ilk iki sonuçta yazıdır: 2/3.',
  },
  {
    'id': 'COMP26_012',
    'category': 'Stratejik Düşünce',
    'scenario':
        '7 kişi tokalaşıyor; herkes diğer herkesle tam bir kez tokalaşıyor. Toplam kaç tokalaşma olur?',
    'options': ['14', '21', '28', '42', '49', '7'],
    'correctIndex': 1,
    'insight': 'Her tokalaşma bir kişi çiftidir. C(7,2) = 7×6/2 = 21.',
  },
  {
    'id': 'COMP26_013',
    'category': 'Stratejik Düşünce',
    'scenario':
        '1\'den 100\'e kadar kaç tam sayı hem 2\'ye hem 3\'e bölünür fakat 5\'e bölünmez?',
    'options': ['10', '13', '14', '16', '17', '20'],
    'correctIndex': 1,
    'insight':
        '2 ve 3\'e bölünenler 6\'nın katlarıdır: 16 tane. Bunların 5\'e de bölünenleri 30\'un katıdır: 3 tane. 16−3=13.',
  },
  {
    'id': 'COMP26_014',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir üçgende iç açılardan biri 30°, ikincisi üçüncünün iki katı. En büyük açı kaç derecedir?',
    'options': ['60°', '70°', '80°', '90°', '100°', '120°'],
    'correctIndex': 4,
    'insight':
        'Kalan iki açının toplamı 150° ve oranı 1:2. Açıları 50° ve 100° olur; en büyük açı 100°\'dir.',
  },
  {
    'id': 'COMP26_015',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir saat tam 03.30\'u gösteriyor. Akrep ve yelkovan arasındaki küçük açı kaç derecedir?',
    'options': ['45°', '60°', '75°', '90°', '105°', '180°'],
    'correctIndex': 2,
    'insight':
        'Yelkovan 180° konumundadır. Akrep 3,5 saat ×30° = 105° konumuna ilerlemiştir. Fark 75°\'dir.',
  },
  {
    'id': 'COMP26_016',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Kenarları 6 ve 8 birim olan bir dikdörtgenin çevresine eş çevreli bir kare çiziliyor. Karenin alanı kaç birimkaredir?',
    'options': ['36', '42', '49', '56', '64', '100'],
    'correctIndex': 2,
    'insight':
        'Dikdörtgenin çevresi 2×(6+8)=28. Aynı çevreli karenin kenarı 28/4=7, alanı 49\'dur.',
  },
  {
    'id': 'COMP26_017',
    'category': 'Stratejik Düşünce',
    'scenario': 'Bir sayı 20 arttığında değeri %25 artıyor. İlk sayı kaçtır?',
    'options': ['40', '60', '80', '100', '120', '160'],
    'correctIndex': 2,
    'insight': 'İlk sayı x ise 20 = x\'in %25\'i. x=20/0,25=80.',
  },
  {
    'id': 'COMP26_018',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir ürün önce %20 zamlanıp sonra yeni fiyatından %20 indirilirse ilk fiyata göre sonuç nedir?',
    'options': [
      'Değişmez',
      '%4 artar',
      '%4 azalır',
      '%20 azalır',
      '%40 azalır',
      '%2 azalır',
    ],
    'correctIndex': 2,
    'insight':
        'İlk fiyatı 100 al. Zam sonrası 120, indirim sonrası 120×0,8=96 olur. Net %4 azalma vardır.',
  },
  {
    'id': 'COMP26_019',
    'category': 'Stratejik Düşünce',
    'scenario':
        '2, 6, 12, 20 sayıları bir dizinin ilk dört terimi olarak veriliyor; başka hiçbir kural söylenmiyor. Beşinci terim için hangisi kesin doğrudur?',
    'options': [
      'Kesin 30',
      'Kesin 28',
      'Kesin 32',
      '30 da olabilir 31 de',
      'Kesin 40',
      'Kesin 24',
    ],
    'correctIndex': 3,
    'insight':
        'İlk dört terime uyan sonsuz kural vardır. n(n+1) seçilirse beşinci terim 30; yalnız beşinci terimde +1 eklenen bir kural seçilirse 31 olur. Kural olmadan tek cevap zorunlu değildir.',
  },
  {
    'id': 'COMP26_020',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir kutuda 10 kırmızı, 10 mavi, 10 yeşil bilye var. Görmeden çekince aynı renkten 4 bilyeyi kesin elde etmek için en az kaç bilye gerekir?',
    'options': ['4', '7', '9', '10', '11', '12'],
    'correctIndex': 3,
    'insight':
        'En kötü durumda her renkten üçer tane, toplam 9 bilye çekilmiş olabilir. Onuncu bilye bir rengin dördüncüsü olur.',
  },
  {
    'id': 'COMP26_021',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir turnuvada 16 oyuncu eleme usulü yarışıyor; her maçta tam biri eleniyor, beraberlik yok. Şampiyonu belirlemek için kaç maç gerekir?',
    'options': ['4', '8', '15', '16', '30', '32'],
    'correctIndex': 2,
    'insight':
        'Şampiyon dışındaki 15 oyuncunun her biri tam bir kez elenmelidir. Her maç bir oyuncu eler; 15 maç gerekir.',
  },
  {
    'id': 'COMP26_022',
    'category': 'Stratejik Düşünce',
    'scenario':
        '1\'den 9\'a kadar rakamlar birer kez yazılmış. Bir rakam silinince kalan sekiz rakamın toplamı, silinen rakamın 4 katı oluyor. Silinen rakam hangisi?',
    'options': ['5', '6', '7', '8', '9', 'Belirlenemez'],
    'correctIndex': 4,
    'insight':
        'Tüm rakamların toplamı 45. Silinen rakam x ise kalan 45−x=4x olur; 5x=45 ve x=9.',
  },
  {
    'id': 'COMP26_023',
    'category': 'Bayesyen Mantık',
    'scenario': 'Dört adil para atılıyor. Hiç yazı gelmeme olasılığı kaçtır?',
    'options': ['1/2', '1/4', '1/8', '1/16', '1/32', '0'],
    'correctIndex': 3,
    'insight':
        'Hiç yazı gelmemesi dört atışın da tura olmasıdır. Bağımsız olasılıklar çarpılır: (1/2)^4=1/16.',
  },
  {
    'id': 'COMP26_024',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir tam sayı 3 ile bölününce 2 kalanını veriyor. Bu sayının 3 katı 3 ile bölününce kalan kaçtır?',
    'options': ['0', '1', '2', '3', '6', 'Belirlenemez'],
    'correctIndex': 0,
    'insight':
        'Her tam sayının 3 katı 3\'e tam bölünür. Kalan 0\'dır; ilk sayının kalanı sonucu değiştirmez.',
  },
  {
    'id': 'COMP26_025',
    'category': 'Stratejik Düşünce',
    'scenario':
        'Bir kare 4 eş küçük kareye ayrılıyor. Küçük karelerin her birinin çevresi 12 cm. Büyük karenin çevresi kaç cm?',
    'options': ['12', '18', '24', '36', '48', '6'],
    'correctIndex': 2,
    'insight':
        'Küçük karenin bir kenarı 12/4=3 cm. Büyük karenin kenarı 2×3=6 cm, çevresi 4×6=24 cm.',
  },
];
