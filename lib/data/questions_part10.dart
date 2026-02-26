// Maymundan Zeki Misin? – Part 10: BURN_001 – BURN_015
// Beyin Yakıcı: Dikkat tuzakları, bilişsel yanılgılar ve sistem 1-2 çatışması

final List<Map<String, dynamic>> questionsPart10 = [
  {
    'id': 'BURN_002',
    'category': 'Stratejik Dikkat',
    'timeLimitSeconds': 20,
    'scenario': 'Karanlık bir odaya giriyorsun. Elinde tek bir kibrit var. Odada bir mum, bir gaz lambası ve bir de odun sobası var. Önce hangisini yakarsın?',
    'options': [
      'Mumu yakarım',
      'Gaz lambasını yakarım',
      'Odun sobasını yakarım',
      'Kibriti yakarım',
      'En yakın olanı yakarım',
      'Hepsini aynı anda yakarım'
    ],
    'correctIndex': 3,
    'insight': 'Fonksiyonel Sabitlik! Diğer nesneleri yakabilmek için önce elindeki aracı, yani KİBRİTİ yakman gerekir. Beyin seçenekler arasında seçim yapmaya (karar yorgunluğu) o kadar odaklanır ki, eylemin başlangıç noktasını unutur.',
  },
  {
    'id': 'BURN_006',
    'category': 'Varlık Mantığı',
    'timeLimitSeconds': 20,
    'scenario': 'Bir havuzda 3 balık var. Biri öldü, biri canlı, biri ise can çekişiyor. Havuzda toplam kaç balık kaldı?',
    'options': [
      '2 balık',
      '3 balık',
      '1 balık',
      '0 balık',
      '2.5 balık',
      'Sadece canlı olanlar kalır'
    ],
    'correctIndex': 1,
    'insight': 'Ölmek, yok olmak değildir! Ölü balık fiziksel olarak hala havuzun içindedir. Beyin "öldü" kelimesini duyduğunda otomatik olarak "çıkarma" işlemi yapar ancak soru "canlı kalanları" değil, fiziksel mevcudiyeti soruyor.',
  },
  {
    'id': 'BURN_007',
    'category': 'Duyusal Filtreleme',
    'timeLimitSeconds': 30,
    'scenario': 'Bir uçak Türkiye ile Yunanistan sınırının tam ortasına düşüyor. Hayatta kalanları nereye gömerler?',
    'options': [
      'Türkiye tarafına',
      'Yunanistan tarafına',
      'Uluslararası tarafsız bölgeye',
      'Vatandaşlıklarına göre ayrılır',
      'Hayatta kalanlar gömülmez',
      'Vefat ettikleri noktaya'
    ],
    'correctIndex': 4,
    'insight': 'Dikkat Bombası! Soru kasıtlı olarak "sınır, uçak kazası, gömmek" gibi dramatik kelimelerle beyni "felaket" moduna sokar. Ancak hayatta kalan insanlar (tabii ki) gömülmez. Kelimeleri sadece okuma, onları anla!',
  },
  {
    'id': 'BURN_008',
    'category': 'Referans Hatası',
    'timeLimitSeconds': 25,
    'scenario': 'Bir babanın 4 kızı var. Her kızın 1 erkek kardeşi var. Bu babanın toplam kaç çocuğu var?',
    'options': [
      '8 çocuk',
      '5 çocuk',
      '9 çocuk',
      '4 çocuk',
      '12 çocuk',
      '6 çocuk'
    ],
    'correctIndex': 1,
    'insight': 'Aynı kişi, farklı referanslar! 4 kızın her birinin erkek kardeşi olan o "1 kişi", aslında hepsinin ortak kardeşidir. 4 kız + 1 erkek = 5 çocuk. Beyin "her" kelimesini duyunca otomatik olarak çarpma işlemi (4x1) yapma eğilimi gösterir.',
  },
  {
    'id': 'BURN_010',
    'category': 'Kalıp Tanıma',
    'timeLimitSeconds': 20,
    'scenario': 'Emily\'nin annesinin 4 çocuğu var: Nisan, Mayıs, Haziran ve... Dördüncü çocuğun adı nedir?',
    'options': [
      'Temmuz',
      'Mart',
      'Emily',
      'Ağustos',
      'Aralık',
      'Bilinemez'
    ],
    'correctIndex': 2,
    'insight': 'Pattern Recognition (Kalıp Tanıma)! Beyin Nisan-Mayıs-Haziran dizilimini görünce hemen "Temmuz" cevabına kilitlenir. Oysa sorunun ilk kelimesi cevabı zaten veriyor: Emily! Bu, hızlı düşünmenin (System 1) yavaş düşünmeyi (System 2) nasıl devre dışı bıraktığının örneğidir.',
  },
  {
    'id': 'BURN_017',
    'category': 'Mantıksal Silojizm',
    'timeLimitSeconds': 20,
    'scenario': 'Hiçbir kedinin 8 bacağı yoktur. Her kedinin 4 bacağı vardır. O halde hiçbir kedinin 4 bacağı yoktur. Bu çıkarım doğru mu?',
    'options': [
      'Evet, mantıken doğrudur',
      'Hayır, mantıken yanlıştır',
      'Kısmen doğru olabilir',
      'Veriler çelişkili, hesaplanamaz',
      'Sadece sokak kedileri için geçerli',
      'Hiçbiri'
    ],
    'correctIndex': 1,
    'insight': 'Yanlış Tümdengelim! İkinci öncül zaten her kedinin 4 bacağı olduğunu açıkça söylüyor. Beyin "Hiçbir... Her..." kalıplarını duyduğunda sofistike bir sonuç bekler ve bariz olan çelişkiyi görmezden gelerek kurguya kapılır.',
  },
  {
    'id': 'BURN_024',
    'category': 'Karar Verme Mekanizması',
    'timeLimitSeconds': 25,
    'scenario': 'Randevuna 5 dakika var. Arabayla 5 dakikada, yürüyerek 20 dakikada gidebilirsin. Araba anahtarını bulamıyorsun. Kaç dakikadır arıyorsundur bilmiyorsun ama anahtarı bulup arabaya binmek için hala vaktin var mı?',
    'options': [
      'Evet, 5 dakika daha arayabilirsin',
      'Hayır, hemen yürümeye başlamalısın',
      '0 dakika, her saniye seni daha da geciktiriyor',
      'Yürümek zaten seni geç bırakacağı için anahtarı aramaya devam etmelisin',
      'Araba hızına bağlı',
      'Bilinemez'
    ],
    'correctIndex': 2,
    'insight': 'Fırsat Maliyeti! Şu an randevuna tam 5 dakika varsa ve araba yolculuğu da 5 dakika sürüyorsa, anahtarı aramak için harcayacağın her 1 saniye seni geç bırakacaktır. Seçenekler arasında kaybolmadan önce "tam o an"da olduğunu fark et.',
  },
  {
    'id': 'BURN_026',
    'category': 'Mühendislik Mantığı',
    'timeLimitSeconds': 25,
    'scenario': 'Buz kalıbının içinde donmuş bir anahtar var. Etrafta bir kibrit, bir kova sıcak su ve bir çekiç var. Anahtarı en HIZLI nasıl çıkarırsın?',
    'options': [
      'Buzu kibritle eritirim',
      'Sıcak suyu üzerine dökerim',
      'Çekiçle buzu kırarım',
      'Buzu elimde tutarak eritirim',
      'Buzun kendiliğinden erimesini beklerim',
      'Ilık suya koyarım'
    ],
    'correctIndex': 2,
    'insight': 'First Principles (İlk İlkeler)! Herkes buzu "eritmeye" odaklanır çünkü buzun doğası budur. Ancak "hız" kriteri varsa, mekanik çözüm (kırmak) termal çözümden (eritmek) her zaman daha hızlıdır. Çekiçle buzu kırmak 2 saniye sürer.',
  },
  {
    'id': 'BURN_027',
    'category': 'Psikolojik Rastgelelik',
    'timeLimitSeconds': 25,
    'scenario': "1'den 10'a kadar rastgele bir sayı seçmen istenseydi, istatistiksel olarak insanların en çok hangi sayıyı seçeceğini tahmin edersin?",
    'options': [
      '1', '5', '7', '10', '3', '8'
    ],
    'correctIndex': 2,
    'insight': 'Mavi-Yedi Fenomeni! İnsanlar "rastgele" bir sayı seçerken genellikle 7\'yi seçerler. 5 çok "orta", 1 ve 10 çok "uç", çift sayılar ise çok "düzenli" gelir. İnsan zihni, 7 sayısını diğerlerinden daha "başıboş ve gizemli" algılar. Gerçek rastgelelik insan için zordur.',
  },
  {
    'id': 'BURN_029',
    'category': 'Tanım Tuzağı',
    'timeLimitSeconds': 30,
    'scenario': "Türkiye'nin alan olarak (yüzölçümü) en büyük şehri hangisidir?",
    'options': [
      'İstanbul',
      'Ankara',
      'Konya',
      'İzmir',
      'Sivas',
      'Erzurum'
    ],
    'correctIndex': 2,
    'insight': 'Semantik Kayma! "Büyük" kelimesi duyulduğunda beyin otomatik olarak "nüfus" verisine (İstanbul) odaklanır. Ancak coğrafi büyüklükte Konya 40.838 km² ile Türkiye\'nin en geniş ilidir. Sorudaki tanımı tam olarak anlamadan cevaba koşma.',
  }
];