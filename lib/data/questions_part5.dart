// Maymundan Zeki Misin? – Part 20: RIDDLE_001 – RIDDLE_010
// Yanal Düşünme ve Zeka Bilmeceleri - Optimize Edilmiş Liste

final List<Map<String, dynamic>> questionsPart5 = [
  {
    'id': 'RIDDLE_001',
    'category': 'Yanal Düşünme',
    'scenario': "Bir adam bara girer ve barmenden 'Bir bardak su' ister. Barmen aniden tabancasını çıkarıp adamın başına doğrultur. Adam 'Çok teşekkür ederim!' der ve gülerek çıkar. Neden?",
    'options': [
      'Barmen adamın hıçkırığını korkutarak geçirmek istemiştir',
      'Adam bir suikastçıdır ve silah bir onay işaretidir',
      'Silah aslında bir su tabancasıdır',
      'Adam barmene olan borcunu silmesi için şaka yapmıştır',
      'Adam tiyatro provası yapmaktadır',
      'Barmen yanlışlıkla silah çekmiştir'
    ],
    'correctIndex': 0,
    'insight': "Adamın şiddetli bir hıçkırığı vardı. Barmen su vermek yerine onu ani bir korkuyla sarsarak hıçkırığını geçirdi. Adam da iyileştiği için teşekkür etti. Gerçek bir 'şok' tedavisi!",
  },
  {
    'id': 'RIDDLE_002',
    'category': 'Fiziksel Çözümleme',
    'scenario': "Bir adam 10 katlı bir apartmanda yaşıyor. Asansöre bindiğinde her zaman 7. kata kadar çıkıp kalan yolu merdivenle yürüyor. Ancak yağmurlu günlerde direkt 10. kata çıkabiliyor. Neden?",
    'options': [
      'Üst katlarda asansör bozulmaktadır',
      'Adam egzersiz yapmayı sevmektedir',
      'Adam cücedir ve boyu sadece 7. kat düğmesine yetmektedir',
      'Yağmurlu günlerde asansör daha hızlı çalışmaktadır',
      '7. kattan sonra elektrikler kesilmektedir',
      'Adamın 10. kat için özel anahtarı yoktur'
    ],
    'correctIndex': 2,
    'insight': "Adamın boyu çok kısadır (cücedir). Normalde sadece 7. katın düğmesine uzanabiliyor. Yağmurlu günlerde ise elindeki şemsiyeyi kullanarak 10. katın düğmesine basabiliyor.",
  },
  {
    'id': 'RIDDLE_003',
    'category': 'Yanal Düşünme',
    'scenario': "Boş bir arazide, sırtında bir çanta olan bir adam ölü bulunur. Çantası açılmamıştır. Etrafta hiçbir iz, araç veya başka bir insan yoktur. Bu adam neden ölmüştür?",
    'options': [
      'Çantanın içinde zehirli bir yılan vardı',
      'Adam susuzluktan ölmüştür',
      'Sırtındaki çanta aslında açılmayan bir paraşüttür',
      'Adam yıldırım çarpması sonucu ölmüştür',
      'Çanta çok ağır olduğu için kalbi durmuştur',
      'Adam aslında bir dağcıdır ve donmuştur'
    ],
    'correctIndex': 2,
    'insight': "Adam uçaktan atlayan bir paraşütçüdür. Paraşütü (sırtındaki çanta) açılmadığı için boş araziye çakılarak hayatını kaybetmiştir. Çantanın açılmamış olması ölüm sebebidir!",
  },
  {
    'id': 'RIDDLE_004',
    'category': 'Zaman Bağlamlı Dedüksiyon',
    'scenario': "İki adam bir barda aynı içkiyi sipariş eder. Biri içkiyi bir dikişte hızla bitirir ve ona hiçbir şey olmaz. Diğeri yavaş yavaş içer ve bir süre sonra ölür. Zehir neresindeydi?",
    'options': [
      'Bardağın kenarındaydı',
      'İçkinin içindeki buz küplerindeydi',
      'Barmenin parmaklarındaydı',
      'Sadece yavaş içen adamın bardağındaydı',
      'Şişenin dibindeydi',
      'Havada yayılan bir gazdaydı'
    ],
    'correctIndex': 1,
    'insight': "Zehir buzların içindeydi. Hızlı içen adam buzlar erimeden içkisini bitirdiği için kurtuldu. Yavaş içen adamın bardağında buzlar eridi ve zehir içkiye karıştı.",
  },
  {
    'id': 'RIDDLE_005',
    'category': 'Psikolojik Çıkarım',
    'scenario': "Bir adam restoranda 'Albatros Çorbası' sipariş eder. Bir kaşık alır, yüzü solar ve dışarı çıkıp intihar eder. Bu adamın geçmişindeki sır nedir?",
    'options': [
      'Çorba çok kötü yapılmıştır',
      'Daha önce ıssız adada karısının etini albatros sanarak yemiştir',
      'Albatros kuşları onun dininde kutsaldır',
      'Çorbanın içindeki gizli bir madde halüsinasyon yaptırmıştır',
      'Restoran sahibi onun eski düşmanıdır',
      'Aslında albatroslara karşı alerjisi vardır'
    ],
    'correctIndex': 1,
    'insight': "Adam yıllar önce bir kazada adada mahsur kalmış, arkadaşları ona 'bu albatros eti' diyerek ölen karısının etini yedirmiştir. Gerçek albatros çorbasının tadına bakınca gerçeği anlamış ve vicdan azabına dayanamamıştır.",
  },
  {
    'id': 'RIDDLE_006',
    'category': 'Olay-Sonuç İlişkisi',
    'scenario': "Sakin bir gecede bir adam odasının ışığını kapatıp uyur. Sabah uyandığında 300 kişinin ölümüne sebep olduğunu fark eder. Adamın mesleği nedir?",
    'options': [
      'Hastane jeneratör görevlisi',
      'Nükleer santral mühendisi',
      'Deniz feneri bekçisi',
      'Hava trafik kontrolörü',
      'Baraj kapak sorumlusu',
      'Sokak lambası tamircisi'
    ],
    'correctIndex': 2,
    'insight': "Adam bir deniz feneri bekçisidir. Işığı kapattığı için dev bir gemi kayalıklara çarpmış ve batmıştır. Bazen tek bir düğme, yüzlerce hayat demektir.",
  },
  {
    'id': 'RIDDLE_007',
    'category': 'Fiziksel Mantık',
    'scenario': "Kilitli bir odada bir adam asılı olarak ölü bulunur. Odada hiçbir eşya yoktur, sadece yerde bir su birikintisi vardır. Adam kendini nasıl asmıştır?",
    'options': [
      'Tavana zıplayarak asılmıştır',
      'Bir buz kalıbının üstüne çıkmış, buz eriyince asılı kalmıştır',
      'Su birikintisi aslında adamın teridir',
      'Adam aslında yerden çok uzundur',
      'Gizli bir mekanizma kullanmıştır',
      'Dışarıdan biri ona yardım etmiştir'
    ],
    'correctIndex': 1,
    'insight': "Adam büyük bir buz kalıbının üzerine çıkıp ipi boynuna geçirmiştir. Buz eridiğinde adam asılı kalmış, geriye sadece yerdeki su birikintisi kalmıştır. Kanıt eriyip gitmiştir!",
  },
  {
    'id': 'RIDDLE_008',
    'category': 'Durumsal Zeka',
    'scenario': "Bir müzik durur ve bir kadın ölür. Kadın ne yapıyordu?",
    'options': [
      'Radyo dinliyordu',
      'Sirkte gözleri bağlı şekilde ip üzerinde yürüyordu',
      'Konser veriyordu',
      'Dans ediyordu',
      'Ameliyat masasındaydı',
      'Müzik kutusuyla oynuyordu'
    ],
    'correctIndex': 1,
    'insight': "Kadın sirkte ip üzerinde yürüyen kör bir cambazdır. Müzik, onun ipin sonuna gelip gelmediğini anlamasını sağlayan bir işarettir. Müzik vaktinden önce durunca kadın ip bitti sanıp adım atmış ve düşerek ölmüştür.",
  },
  {
    'id': 'RIDDLE_009',
    'category': 'Nesnel Mantık',
    'scenario': "Ağzına kadar su dolu ağır bir fıçıya ne eklerseniz fıçı daha hafif olur?",
    'options': [
      'Zeytinyağı',
      'Hava kabarcıkları',
      'Bir delik',
      'Kuru buz',
      'Talaş',
      'Pamuk'
    ],
    'correctIndex': 2,
    'insight': "Fıçıya bir 'delik' eklerseniz içindeki su boşalır ve fıçı hafifler. Bazen bir şey eklemek, aslında bir şeyleri eksiltmektir.",
  },
  {
    'id': 'RIDDLE_010',
    'category': 'Kavramsal Bilmece',
    'scenario': "Hem odanın içindedir hem de oda onun içindedir. Bu nesne nedir?",
    'options': [
      'Hava',
      'Işık',
      'Ayna',
      'Pencere',
      'Hologram',
      'Televizyon'
    ],
    'correctIndex': 2,
    'insight': "Ayna. Ayna fiziksel olarak odanın içindedir, ancak yansıma sayesinde odanın tüm görüntüsü (yani oda) aynanın içindedir.",
  }
];