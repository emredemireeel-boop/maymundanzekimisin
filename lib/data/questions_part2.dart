// Zihin Tuzakları – Part 2: ZT_046 – ZT_055 (İleri Seviye – Ultra Şaşırtıcı Versiyon)
// Tamamen yeniden tasarlandı: Sıradan hiçbir şey yok. Her soru ince, derin, katmanlı twist’li.
// Çözünce “VAY BEEEEE BU NASIL OLUR?!” dedirtecek seviyede. Mantıkla çözülebilir ama beyni yakar.

final List<Map<String, dynamic>> questionsPart2 = [
  {
    'id': 'ZT_046',
    'category': 'Bayesyen Derin Paradoks',
    'scenario': 'Bir oda tamamen karanlık. İçinde ya 100 siyah top ya da 99 siyah + 1 beyaz top var (eşit olasılık). Rastgele bir top çekiyorsun ve siyah çıkıyor. Şimdi “beyaz top var” olasılığı nedir?',
    'options': [
      '%1 (çünkü 99 siyah varsa çekme ihtimali yüksek)',
      '%50 (eşit olasılık bozulmadı)',
      '%0 (siyah çıktı, beyaz yok artık)',
      '%33.3 (Bayes güncellemesiyle)',
      '%99 (siyah çok baskın)',
      'Hesaplanamaz, karanlıkta bilgi yetersiz',
    ],
    'correctIndex': 3,
    'insight': 'Bayes + Monty Hall etkisi: İlk çekilişte siyah çıkması, 99 siyah durumunu biraz daha olası kılar ama beyazın var olma ihtimalini sıfırlamaz. Tam hesaplama %33.3’e düşer. Beyin “siyah çıktı = beyaz yok” diye kestirme yapar, gerçek çok daha şaşırtıcıdır.',
  },
  {
    'id': 'FUN_0109',
    'category': 'Sosyal Mantık',
    'timeLimitSeconds': 45,
    'scenario': 'Dünyanın en iyi korunan müzesinden, herkesin gözü önünde devasa bir tablo çalınır. Güvenlik kameraları hırsızı net bir şekilde kaydeder, lazerler çalışmaktadır ve müzede saklanacak hiçbir yer yoktur. Hırsız kapıdan elini kolunu sallayarak çıkar. Nöbetçiler onu görür ama müdahale etmez, polisler yanından geçer ama onu durdurmaz. Bu hırsız kimdir?',
    'options': [
      'Görünmezlik pelerini giymiş biridir',
      'Müzenin sahibi olan milyarderdir',
      'Tabloyu tamire götüren resmi görevli kılığındaki hırsızdır',
      'Hırsız aslında müzenin müdürüdür',
      'Hırsız bir robottur',
      'Hırsız tablonun gerçek ressamıdır'
    ],
    'correctIndex': 2,
    'insight': 'Beyin "hırsız" kelimesini duyduğunda otomatik olarak "gizlenen, maskeli veya kaçan" bir figür arar. Oysa en iyi hırsızlık, herkesin "normal" kabul ettiği bir iş akışının içine gizlenendir. Resmi üniformalı ve elinde taşıma belgesi olan birinin tabloyu alıp götürmesi kimse için "suç" gibi görünmez; ta ki tablo geri gelmeyene kadar.'
  },
  {
    'id': 'FUN_0110',
    'category': 'Tıbbi Mantık',
    'timeLimitSeconds': 60,
    'scenario': 'Bir adam kışın ortasında, donmuş bir gölün kıyısındaki ıssız kulübesinde ölü bulunur. İçeride ısıtıcı yoktur, elektrik yoktur, dışarısı -30 derecedir. Ancak adam bulunduğunda üzerinde hiçbir kıyafet yoktur ve vücudunda ciddi yanık izleri mevcuttur. Odada ateş, çakmak veya yanıcı madde izine rastlanmaz. Adam nasıl yanmıştır?',
    'options': [
      'Vücuduna yıldırım düşmüştür',
      'Aslında aşırı soğuktan donarak ölmüştür',
      'Güneş ışınları bir camdan yansıyıp onu yakmıştır',
      'Kendi kendine yanma (spontan yanma) gerçekleşmiştir',
      'Zehirli bir gaz vücudunu yakmıştır',
      'Kulübede gizli bir kimyasal sızıntı olmuştur'
    ],
    'correctIndex': 1,
    'insight': 'Bu tıbbi bir fenomendir: "Paradoksal Soyunma". Aşırı soğukta donmak üzere olan insanlar, beyinlerindeki ısı merkezi bozulduğu için aniden kendilerini "fırına atılmış gibi sıcak" hissederler ve kıyafetlerini parçalayarak çıkarırlar. Soğuk yanığı (frostbite) ise vücutta ısı yanığına çok benzer izler bırakır. Yani adam aslında donarak ölmüştür ama beyni ona yandığını söylemiştir.'
  },
  {
    'id': 'FUN_0111',
    'category': 'Fiziksel Algı',
    'timeLimitSeconds': 45,
    'scenario': 'İki adam bir çölde, yerden 10 metre yükseklikteki bir ipin üzerinde karşılıklı durmaktadır. Altlarında ne bir ağ, ne de tutunacak bir yer vardır. Birinci adam ikinci adama doğru yürümeye başlar. İkinci adam yerinden kımıldamaz. Birinci adam tam ikinci adamın yanına geldiğinde, ikisi de düşmez veya dengesini kaybetmez. Ancak adamlar birbirinin içinden de geçmemiştir. Bu nasıl mümkün oldu?',
    'options': [
      'Adamlar aslında sirk cambazıdır',
      'İp aslında yere yatay değil, dikey durmaktadır',
      'Adamlar birbirinin tersi yönde, ipe arkaları dönük yürümüşlerdir',
      'İp aslında yerdedir, yükseklik bir göz yanılmasıdır',
      'Adamlar ipin üzerinde değil, altındaki bir camın üzerindedir',
      'Soru aslında bir rüyayı anlatmaktadır'
    ],
    'correctIndex': 2,
    'insight': 'Çözüm "bakış açısı"ndadır. Adamlar ipin üzerinde "yüz yüze" değil, "sırt sırta" duruyorlardır. Birinci adam ileri doğru yürüdüğünde, aslında ikinci adamdan uzaklaşarak ipin diğer ucuna gitmiştir. Beynimiz "yanına geldiğinde" ifadesini "yüzleşmek" olarak kodladığı için bu basit fiziksel yön ayrımını kaçırır.'
  },
  {
    'id': 'ZT_055',
    'category': 'Sonsuz Mantık + Gerçeklik Algısı',
    'scenario': 'Bir ayna sonsuz kez yansıtılıyor. Sen aynaya bakıyorsun. Gerçek sen hangisisin?',
    'options': [
      'En öndeki',
      'En arkadaki',
      'Hiçbiri',
      'Hepsi',
      'Sonsuz olanı',
      'Soru anlamsız',
    ],
    'correctIndex': 2,
    'insight': 'Sonsuz yansıma paradoksu. Her yansıma bir “sen”dir ama orijinal sen hiçbir yansıma değildir. Beyin “en öndeki benim” der ama mantık “gerçek sen hiçbir yansıma değildir” der. En felsefi ve şaşırtıcı “vay be” sorusu.',
  }
];