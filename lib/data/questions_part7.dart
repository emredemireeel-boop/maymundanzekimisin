// Maymundan Zeki Misin? – Part 7: Yanal Düşünme ve Beklenmedik Mantık
// Daha zor, tam "VAY BEEEE NASIL DÜŞÜNEMEDİM?!" seviyesi
// Hepsi orijinal, ince twist’li, yüksek kaliteli

final List<Map<String, dynamic>> questionsPart7 = [
  {
    'id': 'LATERAL_061',
    'category': 'Matematiksel Paradoks',
    'scenario': "Bir adam ölmeden önce 17 devesini 3 oğluna miras bırakıyor: 'Büyük oğul yarısını, orta oğul üçte birini, küçük oğul dokuzda birini alsın' diyor. Ama develer tam sayı çıkmıyor, bölünemiyor. Bir bilge geliyor ve sorunu anında, hiç deve kesmeden çözüyor. Bu nasıl mümkün?",
    'options': [
      'Bilge, en küçük oğula aslında hiç miras düşmediğini kanıtlıyor',
      'Develerden birinin hamile olduğunu iddia edip onu iki sayıyor',
      'Bilge kendi devesini veriyor, bölüştürüyor, sonra kendi devesini geri alıyor',
      'Büyük oğul kendi payından feragat edip oranları tam sayıya çeviriyor',
      'Mirasın aslında develerin kilosu üzerinden hesaplanması gerektiğini söylüyor',
      'Kalan 1 deveyi satıp parasını üçe bölüyorlar'
    ],
    'correctIndex': 2,
    'insight': "Bu ünlü bir Arap bilmecesidir. Bilge kendi devesini onlara verir, toplam 18 deve olur. \n18'in yarısı = 9 (Büyük oğul)\n18'in 1/3'ü = 6 (Orta oğul)\n18'in 1/9'u = 2 (Küçük oğul)\nToplam: 9 + 6 + 2 = 17. 18. deve artar ve bilge kendi devesini alıp gider!",
  },
  {
    'id': 'LATERAL_062',
    'category': 'Aile Bağları',
    'scenario': "Bir ailede toplam 5 çocuk var. Her çocuğun '1 erkek kardeşi ve 3 kız kardeşi' var. Bu ailede tam olarak kaç kız, kaç erkek çocuk vardır?",
    'options': [
      '2 erkek, 3 kız',
      '1 erkek, 4 kız',
      'Hiç erkek yok, hepsi kız ama üvey',
      '3 erkek, 2 kız',
      '4 erkek, 1 kız',
      '2 erkek, 4 kız'
    ],
    'correctIndex': 1,
    'insight': "4 kız, 1 erkek vardır. \nErkek çocuğun açısından: kendisi 1 erkek, geriye 4 kızı kardeşi kalır. \nKız çocuklarından birinin açısından: 1 erkek kardeşi vardır ve (kendi dışındaki) 3 kız kardeşi vardır. İfade mükemmel bir şekilde uyar.",
  },
  {
    'id': 'LATERAL_063',
    'category': 'Klasik Mitoloji',
    'scenario': "Bir varlık düşünün: Sabahları 4 ayakla, öğlenleri 2 ayakla, akşamları ise 3 ayakla yürür. Bu nedir?",
    'options': [
      'Bir maymun',
      'Bir mitolojik canavar',
      'Güneşin gölgesi',
      'Zamanın kendisi',
      'İnsan',
      'Bir karınca'
    ],
    'correctIndex': 4,
    'insight': "İnsan. Antik Sfenksin ünlü bilmecesidir. \n'Sabah' hayatın başlangıcıdır (bebeklikte emekler, 4 ayak). \n'Öğle' hayatın ortasıdır (yetişkinlik, 2 ayak). \n'Akşam' hayatın sonudur (yaşlılıkta baston kullanır, 3 ayak olur).",
  },
  {
    'id': 'LATERAL_064',
    'category': 'Soyut Algı',
    'scenario': "Gözünüzle çok net görürsünüz, ondan kaçamazsınız, ona tam olarak dokunmak veya elinizle yakalamak isterseniz asla tutamazsınız. Bu nedir?",
    'options': [
      'Rüzgar',
      'Su',
      'Ateş',
      'Ruh',
      'Gölge',
      'Gökkuşağı'
    ],
    'correctIndex': 4,
    'insight': "Cevap Gölge. Görürsünüz, size bağlıdır, hareket eder ama asla fiziksel olarak kavrayıp elinizde tutamazsınız.",
  },
  {
    'id': 'LATERAL_065',
    'category': 'Fiziksel Yanal Düşünme',
    'scenario': "Mimari bir şaheser olarak bir ev tamamen ve sadece %100 her tarafı şeffaf camdan inşa edilmiştir. İçi eşya doludur. Ancak dışarıdan hiç kimse evin İÇİNİ asla göremiyor. Bu ev nasıl bir yerdedir veya durumdadır?",
    'options': [
      'Ev dünyanın ulaşılmaz bir zirvesindedir, dışarıda insan yoktur',
      'Camlar tek yönlü aynalı camdır',
      'Ev okyanusun dibindedir',
      'Evin içi tamamen zifiri karanlıktır',
      'Evin dışına kalın bir boya sürülmüştür',
      'Evin içi yoğun bir buharla kaplıdır'
    ],
    'correctIndex': 3,
    'insight': "Evin içerisinde Mutaassıp bir karanlık vardır (hiç ışık yoktur). Gece vakti veya kapalı bir ortamdaysa ve içeride hiçbir ışık kaynağı yanmıyorsa, cam tamamen şeffaf olsa bile dışarıdaki biri içeriye baktığında sadece kendi yansımasını veya karanlığı görür.",
  },
  {
    'id': 'LATERAL_066',
    'category': 'Kelime Oyunları',
    'scenario': "Fiziksel olarak ağırlığı olmayan ama nesneleri etkileyen bir şey var: Ne kadar çok KAZARSAN o kadar da hafifler. Nedir bu?",
    'options': [
      'Madenci küreği',
      'Gizli bir sır',
      'Mezar',
      'Umut',
      'Kömür',
      'Delik'
    ],
    'correctIndex': 5,
    'insight': "Bir Delik. Toprağı (veya mermeri, nesneyi) kazdıkça daha büyük bir delik oluşturursunuz ve kazılan nesnenin toplam ağırlığı, deliğin hacmi arttıkça daha da hafifler.",
  },
  {
    'id': 'LATERAL_067',
    'category': 'Soyut Anlam',
    'scenario': "Fiziksel bir madde değildir ama yine de kırılabilir. Hatta ona asla dokunmadan, onu yerinden bile kıpırdatmadan da rahatça kırabilirsiniz. Bu nedir?",
    'options': [
      'Kalp',
      'Cam bardak rüzgarla düşer kalır',
      'Işık huzmesi',
      'Ayna yansıması',
      'Bir Sessizlik veya Bir Söz',
      'Kendi Gölgeniz'
    ],
    'correctIndex': 4,
    'insight': "Söz (Sözünü kırmak / Yeminini bozmak) ya da Sessizlik. Sessizliği sadece konuşarak (dokunmadan) kırarsınız. Birine verdiğiniz sözü de sadece bir eylemle (dokunmadan) kırabilirsiniz.",
  },
  {
    'id': 'LATERAL_068',
    'category': 'Tuzağa Düşüren Bilgi',
    'scenario': "Modern Miladi takvimine göre dünyada her yıl düzenli olarak hesaplanıyor, hangi ayda tam 28 gün vardır?",
    'options': [
      'Sadece Şubat ayında',
      'Artık yıllarda Hiçbir ayda',
      'Dört yılda bir Şubat ayında',
      'Tüm aylarda',
      'Sadece Eski Roma Takviminde',
      'Ocak ve Şubat aylarında'
    ],
    'correctIndex': 3,
    'insight': "Hepsinde! (Tüm aylarda). Her ayın içinde mutlaka en az 28 gün vardır (Ocak, Mart, Nisan vs. 30-31 gün çeker o yüzden onların içinde de '28' günü garanti vardır).",
  },
  {
    'id': 'LATERAL_069',
    'category': 'Cinsiyet Varsayımı',
    'scenario': "Bir adam arkadaşına bir grup fotoğrafı gösteriyor. 'Bak bunlar benim kardeşlerim!' diyor sevgiyle. Sonra birazüzülerek ekliyor: 'Ama gel gör ki benim hiç erkek kardeşim yok.' Fotoğraftaki grup kimlerden oluşuyor ve bu nasıl mümkün oluyor?",
    'options': [
      'Adam kendi yalan söylüyor, hepsi erkek',
      'Adam bir köpekti aslen, kendi yavruları oradakiler',
      'Adam aslında kadındı',
      'Adamın gösterdiği fotoğraftakiler üvey anne/baba idi',
      'Fotoğraftakiler onun eşinin kardeşleriydi',
      'Fotoğraftakiler adamın kiz kardeşleridir'
    ],
    'correctIndex': 5,
    'insight': "Fotoğraftaki kişiler adamın KIZ kardeşleridir. Türkçede 'kardeş' kelimesi cinsiyetsiz kullanılır, beyin hemen bir grupta erkekler de arar ama hepsi adamın kız kardeşleridir, bu yüzden adamın erkek kardeşi yoktur.",
  },
  {
    'id': 'LATERAL_070',
    'category': 'Biyolojik Bağlar',
    'scenario': "Kendisini aynada izleyen bir adam şöyle sesli düşünüyor: 'Annemin tek bir oğlu var, ama O benim kardeşim falan değil!'... Adam burada kimden bahsediyor?",
    'options': [
      'Yeğeninden',
      'Babasından',
      'Kendisinden',
      'Dayısından',
      'Amcasından',
      'Ölmüş ikizinden'
    ],
    'correctIndex': 2,
    'insight': "Kendisinden bahsediyor. 'Annemin tek oğlu var' diyorsa o da adamın ta kendisidir. Kendi kardeşi olamayacağına göre bahsettiği 'tek oğul' aslında kendisidir.",
  }
];
