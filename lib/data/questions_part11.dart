// Maymundan Zeki Misin? – Part 11: LATERAL_001 – LATERAL_015
// Tesla/Google Mülakat Seviyesi: Yanal düşünce, yaratıcı problem çözme

final List<Map<String, dynamic>> questionsPart11 = [
  {
    'id': 'LATERAL_001',
    'category': 'Stratejik Düşünce',
    'scenario': 'Kuzey Kutbu\'ndan 5 metre güneye, sonra 5 metre doğuya, sonra 5 metre kuzeye yürüyorsun. Başladığın noktaya geri döndüğünü fark ediyorsun. Orada karşına bir ayı çıkıyor. Ayının rengi nedir?',
    'options': [
      'Kahverengi (Boz ayı)',
      'Siyah (Kara ayı)',
      'Beyaz (Kutup ayısı)',
      'Boz (Grizzly)',
      'Ayı aslında orada değildir',
      'Hesaplanamaz'
    ],
    'correctIndex': 2,
    'insight': 'Dünya bir küre olduğu için Kuzey Kutbu\'nda "üçgen" çizip geri dönebilirsin. Kuzey Kutbu\'nda yaşayan tek ayı türü ise Kutup Ayısıdır, yani rengi beyazdır! Elon Musk bu soruyu SpaceX mülakatlarında adayların coğrafi ve mantıksal sentez yeteneğini ölçmek için soruyor.',
  },
  {
    'id': 'LATERAL_002',
    'category': 'Sayısal Mantık',
    'scenario': 'Bir odada 1000 kapalı dolap var. 1000 kişi sırayla geçiyor. 1. kişi her dolabı açıyor. 2. kişi her 2. dolabı (2,4,6...) değiştiriyor. 3. kişi her 3. dolabı değiştiriyor. 1000. kişiden sonra kaç dolap AÇIK kalır?',
    'options': [
      '500 dolap',
      '31 dolap',
      '1 dolap',
      '0 dolap',
      '100 dolap',
      '250 dolap'
    ],
    'correctIndex': 1,
    'insight': 'Bölen Sayısı Kuralı! Bir dolap, sadece tek sayıda böleni olan hamlelerde (aç-kapat) açık kalır. Sadece "Tam Kare" sayıların (1, 4, 9, 16...) tek sayıda böleni vardır. 1000\'e kadar olan en büyük tam kare 31²=961 olduğu için tam 31 dolap açık kalır. Google\'ın en meşhur "analitik düşünce" mülakat sorusudur.',
  },
  {
    'id': 'LATERAL_003',
    'category': 'Fiziksel Yanal Düşünce',
    'scenario': 'Dışarıda 3 anahtar, içeride 3 ampul var. Odaya sadece BİR KEZ girebilirsin. Hangi anahtarın hangi ampule ait olduğunu nasıl bulursun?',
    'options': [
      'En az 2 kez girmek gerekir',
      'Birini 10dk açıp kapat, diğerini açıp odaya gir',
      'Üçünü de aynı anda aç',
      'Kapının altından bak',
      'Işık sesini dinle',
      'Ayna kullan'
    ],
    'correctIndex': 1,
    'insight': 'Boyut Ekleme! Beyin sadece "açık/kapalı" verisine odaklanır. Ama ısı (termal enerji) üçüncü bir veridir! 1. anahtarı açıp 10 dk beklersen ampul ısınır. Onu kapatıp 2.yi açıp içeri girdiğinde; yanan ampul 2, sönük ama sıcak olan 1, sönük ve soğuk olan ise 3 numaradır.',
  },
  {
    'id': 'LATERAL_004',
    'category': 'Algoritmik Verimlilik',
    'scenario': '8 bilyeden biri diğerlerinden hafifçe daha AĞIR. Bir teraziyle en AZ kaç tartıda ağır bilyeyi kesin olarak bulabilirsin?',
    'options': [
      '4 tartı',
      '3 tartı',
      '2 tartı',
      '1 tartı',
      '7 tartı',
      '5 tartı'
    ],
    'correctIndex': 2,
    'insight': 'Üçe Bölme Stratejisi! İnsanlar genelde "ikiye bölmeyi" (Binary Search) düşünür. Ama terazinin 3 sonucu vardır: Sol, Sağ, Eşit. 3-3 tartıp 2\'yi dışarıda bırakırsın. Eşitse ağır olan dışarıdaki 2\'dedir (1 tartı daha). Değilse ağır taraftaki 3\'ü 1-1 tartarsın. Toplamda sadece 2 tartıda sonuç kesindir!',
  },
  {
    'id': 'LATERAL_006',
    'category': 'Fiziksel Yanılsama',
    'scenario': 'Maksimum 100 kg taşıyan bir köprüden, 98 kg\'lık bir adam elinde üç tane 1 kg\'lık topla geçmek zorundadır. Adam jonglörlük yaparak (topları havada çevirerek) köprüden geçerse köprü çöker mi?',
    'options': [
      'Çökmez, toplar havada olduğu için ağırlık binmez',
      'Çöker, çünkü uçağın havalanması gibi bir etki yapar',
      'Çöker, çünkü topu her yakaladığında anlık yük 100 kg\'ı geçer',
      'Çökmez, adamın hızı ağırlığı azaltır',
      'Rüzgarın yönüne göre değişir',
      'Topların hacmine bağlıdır'
    ],
    'correctIndex': 2,
    'insight': 'Momentum ve Tepki Kuvveti! Newton\'un 3. Yasası gereği, topu havaya fırlatmak için uyguladığın kuvvet ve düşen topu yakalarken durdurmak için uyguladığın kuvvet, senin köprüye bastığın anlık yükü 101 kg\'ın bile üzerine çıkarır. Köprü "statik" ağırlığı değil, "dinamik" yükü taşır.',
  },
  {
    'id': 'LATERAL_007',
    'category': 'Oyun Teorisi',
    'scenario': '5 rasyonel korsan 100 altını bölüşecektir. En kıdemli teklif yapar. %50 ve üzeri OY alamazsa denize atılır. Herkes hayatta kalmak ve en çok altını almak isterse, lider kaç altın alabilir?',
    'options': [
      '20 altın',
      '98 altın',
      '50 altın',
      '25 altın',
      '1 altın',
      '0 altın'
    ],
    'correctIndex': 1,
    'insight': 'Backward Induction (Geriye Doğru Çıkarım)! Sondan başlarsan; son iki kişi kalsa lider 100\'ünü de alır (kendi oyu %50 eder). Bu yüzden kıdemli lider, 3. ve 5. korsanlara (onlar elenirse 0 alacaklarını bildikleri için) sadece 1\'er altın vererek oylarını satın alır ve 98 altını cebine koyar.',
  },
  {
    'id': 'LATERAL_008',
    'category': 'Olasılık Yanılgısı',
    'scenario': 'Bir madeni parayı 5 kez attın ve hepsi TURA geldi. 6. atışın YAZI gelme olasılığı nedir?',
    'options': [
      '%50',
      '%80 (Yazı gelme zamanı geldi)',
      '%20 (Tura serisi devam eder)',
      '%100 (Mutlaka yazı gelir)',
      '%1',
      'Piyango çıkma ihtimaliyle aynı'
    ],
    'correctIndex': 0,
    'insight': 'Kumarbaz Yanılgısı (Gambler\'s Fallacy)! Para "hafızasızdır". Geçmişteki atışlar, bir sonraki bağımsız atışın olasılığını etkilemez. Beynimiz "denge" aradığı için yazının "vaktinin geldiğini" sanır ama matematik hala 1/2 der.',
  },

  {
    'id': 'LATERAL_012',
    'category': 'Soyutlama Zekası',
    'scenario': 'Bir satranç tahtasının iki karşıt köşesini kestik (62 kare kaldı). 2x1’lik domino taşlarıyla (toplam 31 tane) bu tahtayı boşluksuz kapatabilir misin?',
    'options': [
      'Evet, kare sayısı çift olduğu için mümkündür',
      'Hayır, matematiksel olarak imkansızdır',
      'Sadece köşelerden başlanırsa mümkündür',
      'Tahtayı ikiye bölersek mümkündür',
      'Dominoları dikey koyarsak mümkündür',
      'Bilinemez'
    ],
    'correctIndex': 1,
    'insight': 'Renk Argümanı! Her domino taşı 1 Siyah ve 1 Beyaz kare kapatır. Karşıt köşeler ise her zaman AYNI RENKTİR. İki beyaz köşe kesilirse, 32 siyah ama 30 beyaz kare kalır. Elinde ne kadar domino olursa olsun, siyah ve beyaz sayıları eşit olmadığı için tahta asla tam kapanmaz.',
  },
  {
    'id': 'LATERAL_015',
    'category': 'Geometrik Çözüm',
    'scenario': 'Şekli düzensiz olan bir bardağın TAM YARIYA kadar dolu olup olmadığını, hiçbir ölçüm aleti kullanmadan nasıl kesin olarak anlarsın?',
    'options': [
      'Göz kararı tahmin ederek',
      'Bardağı 45 derece eğip su dudağa değdiğinde dibi kontrol ederek',
      'Suyu başka bir bardağa boşaltarak',
      'Bardağın ağırlığını tartarak',
      'Bardağın etrafına ip sararak',
      'Işığın kırılmasını izleyerek'
    ],
    'correctIndex': 1,
    'insight': 'Simetri Yasası! Bardağı yavaşça eğdiğinde su tam bardağın ağzına (dudağına) değdiği an, bardağın "tabanının en üst noktası" da görünüyorsa bardak tam yarıdadır. Su ve hava hacmi o an bardağı tam iki eşit parçaya (diyagonal olarak) böler.',
  }
];