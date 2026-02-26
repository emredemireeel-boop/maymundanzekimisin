// Maymundan Zeki Misin? – Part 19: FUN_001 – FUN_025
// Kullanıcının Talebi: Eğlenceli, şaşırtmacalı, özgün ve zor yanal düşünce soruları

final List<Map<String, dynamic>> questionsPart19 = [
{
    'id': 'FUN_0061',
    'category': 'Olasılık Stratejisi',
    'timeLimitSeconds': 60,
    'scenario': 'Bir teknoloji şirketinde A, B ve C adlı üç kıdemli yazılımcı tek bir "Baş Mühendis" kadrosu için yarışıyor. Kurallar gereği en yüksek performans puanını alan kişi bu koltuğa oturacaktır. İnsan Kaynakları’ndan sızan kesin bilgilere göre; B’nin puanı en yüksek olan değildir. Ayrıca C’nin puanı kesinlikle B’den daha yüksektir. A’nın performans dosyası ise henüz sisteme girilmemiştir. Bu verilere göre, A’nın Baş Mühendis olma ihtimali nedir?',
    'options': [
      '1/2',
      '1/3',
      '1/6',
      '2/3',
      '1/4',
      'Olasılık hesaplanamaz'
    ],
    'correctIndex': 1,
    'insight': 'Tüm sıralama olasılıklarını (ABC, ACB, BAC, BCA, CAB, CBA) ele alalım. B birinci olamaz (BAC ve BCA elendi). C, B’den büyük olmalı (ABC elendi). Geriye sadece ACB, CAB ve CBA kalır. A’nın en yüksek puanı aldığı (birinci olduğu) sadece tek bir durum (ACB) kaldığı için ihtimal 1/3\'tür.'
  },
  {
    'id': 'FUN_0062',
    'category': 'Stratejik Ters Köşe',
    'timeLimitSeconds': 45,
    'scenario': 'Gizli bir ajansın çift taraflı ajanı olduğunuzdan şüpheleniliyor. Şefiniz, masaya iki kapalı zarf koyuyor: Birinde "AKLANDI", diğerinde "TASFİYE" yazması gerekiyor. Ancak şefin size tuzak kurduğunu ve ikisine de "TASFİYE" yazdığını biliyorsunuz. Şefe hile yaptığını söylerseniz anında suçlu sayılacaksınız. Kurtulmak için ne yaparsınız?',
    'options': [
      'Zarfların ikisini de aynı anda açıp hileyi kanıtlarım',
      'Şansımı deneyip zarflardan birini seçip okurum',
      'Bir zarfı seçip içeriğini kimse görmeden imha ederim ve kalan zarfın açılmasını beklerim',
      'Zarfları açmayı reddedip sessiz kalma hakkımı kullanırım',
      'Şefe bir anlaşma teklif edip zarflardan birini değiştirmesini isterim',
      'Masadaki zarfların yerini çok hızlıca değiştirip şefin kafasını karıştırırım'
    ],
    'correctIndex': 2,
    'insight': 'Eğer seçtiğiniz zarfı anında yok ederseniz, masada kalan diğer zarf mecburen "diğer seçenek" olarak kabul edilir. Kalan zarfta "TASFİYE" yazdığına göre, imha ettiğiniz zarfın (hükümsüz kalsanız da) "AKLANDI" olduğu mantıken kabul edilmek zorundadır.'
  },
  {
    'id': 'FUN_0063',
    'category': 'Sosyal Mantık / Çıkarım',
    'timeLimitSeconds': 60,
    'scenario': 'Bir sistem odasında iki üst düzey yazılımcı (A ve B) mahsur kalmıştır. Çıkış için paneldeki şifre ekranına kendi sırtlarındaki çip rengini girmeleri gerekir. Toplamda 3 Mavi, 2 Sarı çip vardır. Biri A’nın sırtına, biri B’ninkine takılır, biri de terminal masasına bırakılır. A, arkadaşı B’nin sırtında MAVİ, masada ise SARI çip olduğunu görür. B bir süre sessizce düşünür. A bu sessizliği fark edince "Benim çipim Mavi!" diyerek kapıyı açar. A nasıl bu kadar emindir?',
    'options': [
      'Masadaki çip sarı olduğu için kendisininki kesin mavitedir',
      'Arkadaşı B sessiz kaldığına göre kendi çipi sarı olamaz',
      'Mavi çiplerin sayısı daha fazla olduğu için şansını denemiştir',
      'Arkadaşı B’nin sırtındaki mavi çip ona ipucu vermiştir',
      'Masadaki ve B’deki çiplerin toplamı 3 etmediği için hesaplamıştır',
      'Kendi çipini terminal ekranındaki yansımadan görmüştür'
    ],
    'correctIndex': 1,
    'insight': 'A şöyle düşünür: "Eğer benim çipim Sarı olsaydı, B hem benim sırtımdaki sarıyı hem de masadaki sarıyı görecekti. Toplam 2 sarı olduğu için kendi çipinin kesinlikle Mavi olduğunu saniyeler içinde anlayıp söyleyecekti. B sustuğuna göre, bende sarı görmüyor demektir. O halde benimki Mavidir."'
  },
  {
    'id': 'FUN_0064',
    'category': 'Matematiksel Mantık',
    'timeLimitSeconds': 45,
    'scenario': 'Plutos finans panelinde "Döngüsel Sayılar" adında bir güvenlik algoritması kullanılıyor. Bu kurala göre bir sayının; rakamlarının çarpımı ile rakamlarının toplamı toplandığında, çıkan sonuç sayının kendisine eşit olmalıdır. Aşağıdaki işlem kodlarından hangisi bu kurala uyan bir "Güvenli Sayı"dır?',
    'options': [
      '28',
      '39',
      '45',
      '54',
      '61',
      '72'
    ],
    'correctIndex': 1,
    'insight': 'Bu durumun matematiksel bir sırrı vardır: İki basamaklı bir sayıya \$10x + y\$ dersek; denklem \$xy + (x + y) = 10x + y\$ olur. Burada \$y\$ değerleri birbirini götürür ve \$xy + x = 10x\$ kalır. Denklemi sadeleştirdiğimizde \$xy = 9x\$ ve buradan \$y = 9\$ sonucuna ulaşırız. Yani birler basamağı 9 olan tüm iki basamaklı sayılar bu kuralı sağlar.'
  },
  {
    'id': 'FUN_0065',
    'category': 'Sistem Mantığı',
    'timeLimitSeconds': 60,
    'scenario': 'Bir sistemde iki farklı güvenlik protokolü çalışmaktadır. "Alfa Protokolü" Pazartesi, Salı ve Çarşamba günleri hatalı veri üretirken; "Beta Protokolü" Perşembe, Cuma ve Cumartesi günleri hatalı veri üretmektedir. Diğer günlerde her ikisi de kusursuz çalışır. Bir denetim sırasında şu konuşma geçer:\nAlfa: "Dün hatalı veri üretiyordum."\nBeta: "Ben de."\nBu denetim hangi gün yapılmıştır?',
    'options': [
      'Pazartesi',
      'Çarşamba',
      'Pazar',
      'Perşembe',
      'Cuma',
      'Salı'
    ],
    'correctIndex': 3,
    'insight': 'Perşembe günü; Alfa doğru söyleme günündedir ve dün (Çarşamba) gerçekten hata yaptığını dürüstçe söyler. Beta ise o gün (Perşembe) hata yapma günündedir; dün (Çarşamba) aslında hatasız olmasına rağmen kuralları gereği bugün yalan söyler ve "dün hata yapıyordum" der. İkisinin de bu cümleyi aynı anda kurabileceği tek gün Perşembe’dir.'
  },
  {
    'id': 'FUN_0066',
    'category': 'Dikkat ve Algı',
    'timeLimitSeconds': 30,
    'scenario': 'Eski teknolojiye meraklı bir koleksiyoncusunuz. Gece saat tam 20:00’de uyumaya karar veriyorsunuz ve başucunuzdaki 12 saatlik kadranı olan mekanik kurmalı saatinizi sabah 09:00’da çalacak şekilde ayarlıyorsunuz. Dijital cihazlarınızın hepsi kapalı. Bu durumda alarm çalana kadar kaç saat uyumuş olursunuz?',
    'options': [
      '13 saat',
      '11 saat',
      '1 saat',
      '9 saat',
      '12 saat',
      'Saat kurulamaz'
    ],
    'correctIndex': 2,
    'insight': 'Mekanik ve analog saatler gece-gündüz (AM/PM) ayrımı yapmazlar, sadece 12 saatlik bir döngüye sahiptirler. Siz saati akşam 20:00’de kurduğunuzda, saat akrebi ilk kez 9’un üzerine geldiği an (yani sadece 1 saat sonra, 21:00’de) alarm çalacaktır.'
  },
  {
    'id': 'FUN_0067',
    'category': 'Geometrik Mantık',
    'timeLimitSeconds': 45,
    'scenario': 'Her biri 50 metre yüksekliğinde olan iki direk arasına 80 metre uzunluğunda bir ip asılmıştır. İpin orta noktası (en alçak kısmı) yerden tam olarak 10 metre yüksekliktedir. Bu durumda iki direk arasındaki mesafe kaç metredir?',
    'options': [
      '40 metre',
      '20 metre',
      '10 metre',
      '0 metre',
      '5 metre',
      'Trigonometri olmadan çözülemez'
    ],
    'correctIndex': 3,
    'insight': 'Hesap yapmaya gerek yok! Direkler 50m, ipin en alt noktası 10m ise, ip 40m aşağı inmiş demektir. İp toplam 80m olduğuna göre, 40m inip tekrar 40m çıkmıştır. İpin iki ucu arasında hiç yatay mesafe kalmamıştır, yani direkler birbirine yapışıktır (0 metre).'
  },
  {
    'id': 'FUN_0068',
    'category': 'Algoritmik Düşünme',
    'timeLimitSeconds': 60,
    'scenario': 'Bir kaleye girmek isteyen casus, kapıdaki nöbetçiyi izler. Nöbetçi gelen birine "ALTI" der, o kişi "4" diyerek içeri girer. Diğerine "ON" der, o kişi "2" diyerek içeri girer. Casus kapıya gider, nöbetçi ona "SEKİZ" der. Casus ne derse içeri girebilir?',
    'options': [
      '4',
      '16',
      '5',
      '8',
      '2',
      '0'
    ],
    'correctIndex': 2,
    'insight': 'Beyin hemen "yarıya bölme" veya "matematiksel dizi" arar. Ancak şifre kelimenin harf sayısıdır! ALTI (4 harf), ON (2 harf). Dolayısıyla SEKİZ kelimesi 5 harfli olduğu için doğru cevap 5\'tir.'
  },
  {
    'id': 'FUN_0069',
    'category': 'Dikkat / Paradoks',
    'timeLimitSeconds': 30,
    'scenario': 'Büyük bir maratonda koşuyorsunuz. Müthiş bir atak yaparak, o ana kadar yarışın "sonuncusu" olan kişiyi geride bıraktınız. Şu anki konumunuz nedir?',
    'options': [
      'Sondan ikinciyim',
      'Sonuncuyum',
      'Birinciyim',
      'Sıralama değişmez',
      'Bu durum imkansızdır',
      'Grup lideriyim'
    ],
    'correctIndex': 4,
    'insight': 'Dikkat testi! Eğer bir yarışta birini geçiyorsanız, geçtiğiniz kişinin arkasında en azından SİZ varsınız demektir. Bu durumda geçtiğiniz kişi "sonuncu" olamaz. Mantıken bir yarışta "sonuncuyu" geçemezsiniz, çünkü onu geçtiğiniz anda o artık sonuncu değildir.'
  },
  {
    'id': 'FUN_0070',
    'category': 'Sistem Mantığı',
    'timeLimitSeconds': 30,
    'scenario': 'Plutos veri merkezinde 1000 adet tamamen boş "Sunucu Slotu" bulunmaktadır. Bu veri merkezinin artık "boş" olmadığını söyleyebilmemiz için içine en az kaç adet sunucu yerleştirmeniz gerekir?',
    'options': [
      '1000',
      '501',
      '1',
      '100',
      '2',
      'Hiçbiri'
    ],
    'correctIndex': 2,
    'insight': 'Mantıksal bir tanım sorusu: İçine sadece 1 adet sunucu yerleştirdiğiniz an, o veri merkezi artık "boş" olma özelliğini kaybeder. Beyin genellikle slotların doluluk oranına veya yarısına (501) odaklanır, ancak "boş değil" ifadesi için tek bir veri girişi yeterlidir.'
  },
  {
    'id': 'FUN_0074',
    'category': 'Operasyonel Mantık',
    'timeLimitSeconds': 60,
    'scenario': 'Acil bir durumda 3 farklı hastaya müdahale etmeniz gerekiyor ancak elinizde sadece 2 çift steril eldiven var. Her hastanın enfeksiyon riski birbirinden farklıdır. Kendinizi ve hastaları çapraz bulaşmadan tamamen koruyarak bu 3 müdahaleyi nasıl yaparsınız?',
    'options': [
      'Bir çifti ters çevirip kullanırım',
      'Eldivenleri dezenfekte edip tekrar kullanırım',
      'İlk iki eldiveni üst üste takar, her hastadan sonra bir katmanı çıkarırım',
      'Eldivenleri kesip parça parça kullanırım',
      'Mümkün değildir, bir hasta feda edilir',
      'Eldiven takmadan hızlıca müdahale ederim'
    ],
    'correctIndex': 2,
    'insight': 'Çözüm "katmanlama" mantığındadır: İki çift eldiveni (A ve B) üst üste takarsınız. 1. hastaya AB ile bakarsınız. 2. hastaya geçince üstteki B çiftini çıkarıp sadece A ile bakarsınız. 3. hastaya geçince çıkardığınız B çiftini "ters çevirerek" A\'nın üzerine tekrar takarsınız. Böylece hiçbir hastanın dokusu diğerine veya size temas etmez.'
  },
  {
    'id': 'FUN_0075',
    'category': 'Gözlemsel Mantık',
    'timeLimitSeconds': 45,
    'scenario': 'Büyük bir vadide gitar çalıyorsunuz. Karşıdaki dev kayalıklara bir akor vuruyorsunuz ve yankısını tam 2 saniye sonra duyuyorsunuz. Ses hızı yaklaşık 340 m/s olduğuna göre, karşıdaki kayalıklar sizden kaç metre uzaktadır?',
    'options': [
      '680 metre',
      '340 metre',
      '170 metre',
      '1360 metre',
      'Yankı süresi mesafeyi vermez',
      'Havanın nemine göre değişir'
    ],
    'correctIndex': 1,
    'insight': 'Klasik bir hesaplama tuzağı! Sesin size geri dönmesi için kayalıklara "gidip" tekrar "dönmesi" gerekir. Yani 2 saniyelik süre, yolun iki katıdır. Ses 2 saniyede 680 metre yol alır, ancak kayalıklar bunun yarısı kadar (340 metre) uzağınızdadır.'
  },  
  {
    'id': 'FUN_0076',
    'category': 'Fiziksel Algı',
    'timeLimitSeconds': 30,
    'scenario': 'Bir odada 10 kişi birbirini ve odayı tamamen görecek şekilde duruyor. Odaya bir elma koyuyorsunuz; 9 kişi elmayı görüyor ama 1 kişi elmayı kesinlikle göremiyor. Elma tam olarak nerededir?',
    'options': [
      'Odanın tam köşesindedir',
      'Birinin cebindedir',
      'Görmeyen kişinin başının üzerindedir',
      'Işığın vurmadığı karanlık noktadadır',
      'Yerdeki bir deliğin içindedir',
      'Herkesin arkasındaki bir raf üzerindedir'
    ],
    'correctIndex': 2,
    'insight': 'Kişi kendi başının üstünü (ayna olmadan) doğrudan göremez. Diğer 9 kişi ise odaya hakim oldukları için elmayı rahatça fark eder.'
  },
  {
    'id': 'FUN_0077',
    'category': 'Vücut Mantığı',
    'timeLimitSeconds': 30,
    'scenario': 'Sağ elinizle tutabildiğiniz halde, sol elinizle asla tutamayacağınız, vücudunuzdaki o tek nokta neresidir?',
    'options': [
      'Sağ kulağınız',
      'Sol dirseğiniz',
      'Sırtınızın tam ortası',
      'Sağ omzunuz',
      'Sağ avucunuzun içi',
      'Sol topuğunuz'
    ],
    'correctIndex': 1,
    'insight': 'Fiziksel bir kısıtlama: Sol eliniz, kendi eklemi olan sol dirseği kavrayamaz. Sağ elinizle her yeri tutsanız da sol eliniz için sol dirseğiniz "yasaklı bölge"dir.'
  },
  {
    'id': 'FUN_0078',
    'category': 'Kavramsal Şaşırtmaca',
    'timeLimitSeconds': 45,
    'scenario': 'Bir adam "1960" yılında doğmuş olmasına rağmen bugün sadece 25 yaşındadır. Kimlikte bir hata yok, biyolojik bir mucize de yok. Bu nasıl mümkün olabilir?',
    'options': [
      'Artık yıl olan 29 Şubat\'ta doğmuştur',
      'Doğduğu yer bir hastanenin 1960 numaralı odasıdır',
      'Adam bir astronottur ve uzayda zaman yavaşlamıştır',
      '1960 bir tarih değil, bir rakım değeridir',
      'Nüfus cüzdanı geç çıkartılmıştır',
      'Adam aslında bir yapay zekadır'
    ],
    'correctIndex': 1,
    'insight': 'Beyin "1960" ifadesini gördüğü an onu bir takvim yılı olarak kodlar. Ancak bu sadece bir oda numarası veya sokak numarası olabilir. Sayısal verilerin her zaman "zaman" ifade etmediğini gösteren güzel bir örnek.'
  },
  {
    'id': 'FUN_0079',
    'category': 'Doğa Mantığı',
    'timeLimitSeconds': 45,
    'scenario': 'Bir adam nehrin bir kıyısında, köpeği ise karşı kıyısındadır. Adam köpeğini çağırır. Köpek nehri geçer, hiç ıslanmaz, köprü veya tekne kullanmaz. Köpek karşıya nasıl geçmiştir?',
    'options': [
      'Çok hızlı koştuğu için suyun üzerinden sekmiştir',
      'Nehir kurumuş bir yatağa sahiptir',
      'Nehir donmuştur ve köpek buzun üzerinden yürümüştür',
      'Köpek aslında uçabilen bir cinstir',
      'Nehir aslında çok dardır, üzerinden atlamıştır',
      'Adam köpeği kucağına alıp geçirmiştir'
    ],
    'correctIndex': 2,
    'insight': 'Mevsimsel veri! Nehrin "su" formunda olması gerekmez. Kış mevsiminde donmuş bir nehir, fiziksel bir yol gibidir. Beyin genelde nehri hep akışkan bir sıvı olarak hayal eder.'
  },
  {
    'id': 'FUN_0080',
    'category': 'Stratejik Mantık',
    'timeLimitSeconds': 60,
    'scenario': 'Yaşlı bir adam mirasını iki oğlundan hangisinin atı daha "YAVAŞ" ise ona bırakacağını açıklar. İki kardeş atlarına biner ve bitiş çizgisine gitmemek için günlerce ovada beklerler. Sonunda bilge bir adama danışırlar. Bilge adam onlara sadece iki kelime söyler ve kardeşler atlarına atladıkları gibi bitiş çizgisine doğru dolu dizgin (en hızlı şekilde) yarışmaya başlarlar. Bilge adam ne demiştir?',
    'options': [
      'Atları vurun',
      'Atları değiştirin',
      'Yarışı iptal edin',
      'Geri geri gidin',
      'Atları besleyin',
      'Mirası paylaşın'
    ],
    'correctIndex': 1,
    'insight': 'Kardeşler atları değiştirdiğinde, artık bindikleri at rakibinin atıdır. Kendi atlarının "en son" gelmesini sağlamak için, altlarındaki (rakibin) atı en hızlı şekilde bitişe ulaştırmaya çalışırlar. Sadece iki kelimelik bir aksiyon, tüm motivasyonu tersine çevirir.'
  },
  {
    'id': 'FUN_0081',
    'category': 'Fiziksel Çıkarım',
    'timeLimitSeconds': 60,
    'scenario': 'Dışarıda 3 adet elektrik anahtarı var ve içeride kapısı kapalı bir odada tek bir lamba bulunuyor. Hangi anahtarın lambayı açtığını bulmanız gerekiyor. Odaya sadece BİR KEZ girme hakkınız var. Kapı kapalıyken içeriyi görmeniz imkansız. Hangi anahtarın doğru olduğunu nasıl anlarsınız?',
    'options': [
      'İki anahtarı aynı anda açarım',
      'Birini açar, bekler, kapatır; diğerini açar ve içeri girerim',
      'Anahtarları rastgele çevirip girerim',
      'Kapının altından ışık sızmasını beklerim',
      'Anahtarların sesini dinlerim',
      'Mümkün değildir'
    ],
    'correctIndex': 1,
    'insight': 'Fiziksel veri: Lambanın ısısı. Birinci anahtarı açıp 5 dakika beklersiniz (lamba ısınır), sonra kapatıp ikinciyi açarsınız ve içeri girersiniz. Lamba yanıksa cevap 2. anahtardır. Lamba sönük ama sıcaksa cevap 1. anahtardır. Lamba sönük ve soğuksa cevap hiç dokunmadığınız 3. anahtardır.'
  },
  {
    'id': 'FUN_0082',
    'category': 'Matematiksel Algı',
    'timeLimitSeconds': 45,
    'scenario': 'Kalabalık bir ailede; Ali "Benim erkek kardeşlerimin sayısı, kız kardeşlerimin sayısına eşit" diyor. Ali\'nin kız kardeşi Ayşe ise "Benim erkek kardeşlerimin sayısı, kız kardeşlerimin sayısının tam iki katı" diyor. Bu ailede toplam kaç çocuk vardır?',
    'options': [
      '5',
      '6',
      '7',
      '8',
      '9',
      '10'
    ],
    'correctIndex': 2,
    'insight': 'Denklem şöyledir: Ali\'nin kendisine bakarsak, kendisi hariç kardeşleri eşitse ailede \$n\$ kız, \$n+1\$ erkek vardır. Ayşe için ise durum: \$n+1\$ erkek kardeş, \$n-1\$ kız kardeşin iki katıdır. \$n+1 = 2(n-1)\$ denkleminden \$n=3\$ çıkar. 3 kız + 4 erkek = 7 çocuk.'
  },
  {
    'id': 'FUN_0083',
    'category': 'Üst Düzey Mantık',
    'timeLimitSeconds': 60,
    'scenario': 'Bir yol ayrımındasınız. Biri ölüme, diğeri yaşama gider. Yolun başında iki ikiz kardeş duruyor. Biri her zaman DOĞRU, diğeri her zaman YALAN söylüyor. Hangisinin dürüst olduğunu bilmiyorsunuz. Yaşam yolunu bulmak için kardeşlerden sadece birine, sadece BİR soru sorma hakkınız var. Ne sorarsınız?',
    'options': [
      'Yaşam yolu hangisi?',
      'Diğer kardeşe sorsaydım yaşam yolu hangisi derdi?',
      'Sen dürüst müsün?',
      'Kardeşin yalan söyler mi?',
      'Doğru yol sağda mı?',
      'Hangi yoldan geldin?'
    ],
    'correctIndex': 1,
    'insight': 'Bu soru bir "Mantıksal Değil (NOT)" kapısıdır. Dürüst olana sorsan, yalancının yanlış yolu göstereceğini bildiği için sana YANLIŞ yolu söyler. Yalancıya sorsan, dürüstün doğru yolu söyleyeceğini bildiği için sana yine YANLIŞ yolu söyler. İkisi de aynı (yanlış) yolu göstereceği için, sen diğer yolu seçerek kurtulursun.'
  },
  {
    'id': 'FUN_0084',
    'category': 'Felsefi Mantık',
    'timeLimitSeconds': 60,
    'scenario': 'Acımasız bir gardiyan, bir köpriden geçmek isteyenleri sorgular. Kural şudur: Bir cümle kuracaksınız. Eğer cümleniz DOĞRU ise asılacaksınız, eğer YALAN ise kafanız kesilecek. Gardiyanı çaresiz bırakıp köprüden güvenle geçmek için ne söylemelisiniz?',
    'options': [
      'Ben yalan söylüyorum.',
      'Beni birazdan kafamı keserek öldüreceksiniz.',
      'Siz dürüst bir insansınız.',
      'Bugün hava çok güzel.',
      'Beni asmayacaksınız.',
      'Sessiz kalmayı tercih ediyorum.'
    ],
    'correctIndex': 1,
    'insight': 'Bu bir "Yalancı Paradoksu"dur. Eğer gardiyan sizi asarsa, cümleniz "Yalan" olmuş olur ama yalan söyleyeni asmaması (kafasını kesmesi) gerekiyordu. Eğer kafanızı keserse, cümleniz "Doğru" olmuş olur ama doğru söyleyeni kesmemesi (asması) gerekiyordu. Gardiyan hiçbir kuralı uygulayamayacağı için sizi serbest bırakmak zorunda kalır.'
  },
  {
    'id': 'FUN_0085',
    'category': 'Yanal Düşünme',
    'timeLimitSeconds': 45,
    'scenario': 'Eski bir kralın bir gözü kör ve bir bacağı topaldır (savaşta kaybetmiştir). Kral, tüm ressamlardan görkemli bir portresini yapmalarını ister. Ancak bir kuralı vardır: "Yalan söylemeyeceksiniz (yani beni sağlam çizmeyeceksiniz) ama beni çirkin veya aciz de göstermeyeceksiniz." Ressam kralı nasıl çizmelidir?',
    'options': [
      'Kralı arkası dönük şekilde çizer.',
      'Kralı bir perdenin arkasında gölge olarak çizer.',
      'Kralı at üzerinde, profilden (sağlam tarafı görünecek şekilde) bir avcı gibi nişan alırken çizer.',
      'Sadece kralın yüzünün sağlam kısmını yakından çizer.',
      'Kralı tahtında otururken ama dizlerine bir örtü serili şekilde çizer.',
      'Kralın kusurlarını altın kaplama protezlerle çizer.'
    ],
    'correctIndex': 2,
    'insight': 'Zekice bir perspektif kullanımı: Kral at üzerindeyken topal bacağı diğer tarafta kalır; nişan alırken ise bir gözünü kapatması (kör gözü) son derece doğal ve kahramanca görünür. Gerçekten taviz vermeden kusuru bir yeteneğe dönüştürür.'
  },
  {
    'id': 'FUN_0086',
    'category': 'Fiziksel Mantık',
    'timeLimitSeconds': 60,
    'scenario': 'Küçük bir yapay havuzun içinde bir sandalın üzerindesiniz. Sandalın içinde de çok ağır, devasa bir kaya parçası var. Kayayı kucağınıza alıp havuzun içine bırakıyorsunuz (kaya dibe batıyor). Havuzdaki su seviyesi nasıl değişir?',
    'options': [
      'Su seviyesi yükselir.',
      'Su seviyesi düşer.',
      'Su seviyesi değişmez.',
      'Önce yükselir, sonra eski haline döner.',
      'Kayanın hacmine göre değişir.',
      'Sandalın ağırlığına göre değişir.'
    ],
    'correctIndex': 1,
    'insight': 'Kaya sandalda dururken, kendi "AĞIRLIĞI" kadar suyu yerinden oynatır (çünkü sandal batmamak için o kadar su iter). Ancak kaya suya atıldığında sadece kendi "HACMİ" kadar suyu yerinden oynatır. Kayanın yoğunluğu sudan fazla olduğu için (battığı için), ağırlığına oranla hacmi daha küçüktür. Bu yüzden su seviyesi düşer!'
  },
  {
    'id': 'FUN_0087',
    'category': 'Bilişsel Haritalama',
    'timeLimitSeconds': 45,
    'scenario': 'Bir adam bir duvardaki portreye bakarak şöyle der: "Benim erkek veya kız kardeşim yok. Fakat bu gördüğüm adamın babası, babamın oğludur." Duvardaki portre kime aittir?',
    'options': [
      'Kendi portresidir.',
      'Babasının portresidir.',
      'Oğlunun portresidir.',
      'Torununun portresidir.',
      'Amcasının portresidir.',
      'Yeğeninin portresidir.'
    ],
    'correctIndex': 2,
    'insight': 'Adım adım çözelim: "Babamın oğlu" kimdir? (Kardeşi olmadığına göre kendisidir). Cümleyi tekrar okuyalım: "Bu adamın babası, BENİM." Eğer resimdeki adamın babası "Ben" isem, resimdeki adam benim OĞLUMDUR.'
  },
  {
    'id': 'FUN_0088',
    'category': 'Matematiksel Mantık',
    'timeLimitSeconds': 60,
    'scenario': 'Bir araç A noktasından B noktasına saatte tam 30 km hızla gidiyor. Bu aracın gidiş-dönüş tüm yolculuk boyunca ortalama hızının saatte tam 60 km olması için, B noktasından A noktasına saatte kaç km hızla dönmesi gerekir?',
    'options': [
      '90 km/sa',
      '120 km/sa',
      '180 km/sa',
      'İmkansızdır, dönmesine gerek yoktur',
      '60 km/sa',
      'Hızını her dakika iki katına çıkarmalıdır'
    ],
    'correctIndex': 3,
    'insight': 'Fiziksel bir imkansızlık! Ortalama hızın 60 km/sa olması için, aracın tüm yolu (gidiş+dönüş) 30 km/sa hızla sadece GİTTİĞİ sürede tamamlamış olması gerekir. Yani dönüş için hiç "zamanı" kalmamıştır. Işık hızında bile dönse ortalama hız 60\'a asla ulaşamaz. Beyin genelde \$(30+90)/2 = 60\$ yanılgısına düşer.'
  },
  {
    'id': 'FUN_0089',
    'category': 'Stratejik Analiz',
    'timeLimitSeconds': 90,
    'scenario': 'Bir antikacıda 40 kg ağırlığında tek parça bir taş vardı. Taş kazayla 4 parçaya bölündü. Ancak bu 4 parça o kadar özel ağırlıklara sahip ki; iki kefeli bir terazi kullanarak bu parçalarla 1 kg\'dan 40 kg\'a kadar olan BÜTÜN tam sayı ağırlıkları ölçebiliyorsunuz. Bu 4 parçanın ağırlıkları nedir?',
    'options': [
      '10, 10, 10, 10',
      '1, 2, 4, 33',
      '1, 3, 9, 27',
      '5, 10, 10, 15',
      '1, 10, 14, 15',
      '8, 10, 10, 12'
    ],
    'correctIndex': 2,
    'insight': 'Bu, 3’ün kuvvetleri kuralıdır (\$3^0, 3^1, 3^2, 3^3\$). İki kefeli terazide ağırlıkları birbirine ekleyebilir veya birini diğer kefeye koyarak (çıkartma yaparak) farkı bulabilirsiniz. Örneğin 2 kg ölçmek için bir kefeye 3, diğerine 1 koyarsınız. Bu 4 sayı ile 1\'den 40\'a kadar her kombinasyon yapılabilir.'
  },
  {
    'id': 'FUN_0090',
    'category': 'Temporal (Zamansal) Mantık',
    'timeLimitSeconds': 60,
    'scenario': 'Elinizde iki adet fitil (ip) var. Her bir fitilin tamamen yanıp bitmesi tam 60 dakika sürüyor. Ancak fitiller homojen değil; yani bazı kısımları hızlı, bazı kısımları yavaş yanabiliyor (yarısı 30 dakikada yanmayabilir). Sadece bir çakmak kullanarak bu iki fitille tam olarak 45 dakikayı nasıl ölçersiniz?',
    'options': [
      'Fitillerden birini dörtte üç boyundan keserim',
      'Birini iki ucundan, diğerini tek ucundan aynı anda yakarım',
      'İkisini de aynı anda yakıp birinin sönmesini beklerim',
      'Fitilleri birbirine bağlayıp orta noktadan yakarım',
      'Birini yakıp bitince diğerini ikiye bölüp yakarım',
      'Bu fitillerle hassas ölçüm yapılamaz'
    ],
    'correctIndex': 1,
    'insight': 'Müthiş bir mantık: 1. fitili iki ucundan, 2. fitili tek ucundan yakarsınız. İki ucu yanan fitil tam 30 dakikada biter. O an 2. fitilin de 30 dakikalık kısmı yanmıştır. Hemen 2. fitilin diğer ucunu da yakarsanız, kalan 30 dakikalık kısım 15 dakikada biter. Toplam = 30 + 15 = 45 dakika.'
  },
  {
    'id': 'FUN_0091',
    'category': 'Fiziksel Sezgi',
    'timeLimitSeconds': 60,
    'scenario': 'Bir uçak rüzgarsız bir havada A şehrinden B şehrine gidip geri dönüyor. Başka bir gün, A\'dan B\'ye doğru sürekli ve sabit hızla esen bir rüzgar varken aynı yolculuğu yapıyor. Rüzgarlı gündeki toplam gidiş-dönüş süresi, rüzgarsız güne göre nasıl değişir?',
    'options': [
      'Süre kısalır (Rüzgar bir yönde hızlandırır)',
      'Süre uzar (Rüzgarın geciktirmesi, hızlandırmasından daha etkilidir)',
      'Süre aynı kalır (Giderken kazanılan zaman dönerken kaybedilir)',
      'Uçağın motor gücüne göre kısalabilir veya uzayabilir',
      'Sadece rüzgar hızı uçak hızından fazlaysa değişir',
      'Sadece kalkış yönüne bağlı olarak değişir'
    ],
    'correctIndex': 1,
    'insight': 'Havacılık paradoksu: Rüzgar uçağı yavaşlattığında, uçağın o yolda (rüzgara karşı) geçirdiği süre uzar. Rüzgar arkadan estiğinde kazandığı "zaman", karşıdan estiğinde kaybettiği "zamanı" asla telafi edemez. Çünkü yavaş gidilen yolda daha fazla vakit harcanır, rüzgarın olumsuz etkisi daha uzun süre uçağa etki eder.'
  },
  {
    'id': 'FUN_0092',
    'category': 'Görsel Algı / Ters Köşe',
    'timeLimitSeconds': 60,
    'scenario': 'Kilitli bir odada, masanın üzerinde duran 53 adet "Bisiklet" (Bicycle) ve yanında ölü bir adam bulunuyor. Odada başka hiçbir eşya, iz veya ipucu yok. Bu adam neden ölmüş olabilir?',
    'options': [
      'Bisikletlerin altında kalarak ezilmiştir',
      'Aşırı egzersizden kalp krizi geçirmiştir',
      'Oyun sırasında hile yaptığı için vurulmuştur',
      'Havasızlıktan boğulmuştur',
      'Bisiklet kazası yapmıştır',
      'Zehirlenmiştir'
    ],
    'correctIndex': 2,
    'insight': 'Ters köşe noktası şudur: "Bicycle" dünyanın en ünlü oyun kağıdı markasıdır. Bir destede 52 kağıt olur. Eğer masada 53 tane "Bicycle" varsa, bu adam hile yapmış (desteye fazladan kart atmış) demektir. "Bisiklet" kelimesi burada bir nesneyi değil, oyun kartlarını temsil eder.'
  },
  {
    'id': 'FUN_0093',
    'category': 'Hız ve Mesafe',
    'timeLimitSeconds': 45,
    'scenario': 'Ankara\'dan İstanbul\'a saatte 100 km hızla bir tren kalkıyor. Aynı anda İstanbul\'dan Ankara\'ya saatte 150 km hızla başka bir tren kalkıyor. Bu iki tren karşılaştıkları o tek saniyede, hangisi Ankara\'ya daha yakındır?',
    'options': [
      'Ankara\'dan kalkan tren',
      'İstanbul\'dan kalkan tren',
      'Hızlı olan tren',
      'Her ikisi de eşit mesafededir',
      'Rüzgarın yönüne göre değişir',
      'Rayların uzunluğuna bağlıdır'
    ],
    'correctIndex': 3,
    'insight': 'Harika bir dikkat testi! İki tren karşılaştıkları anda aynı noktadadırlar. Dolayısıyla her ikisinin de Ankara\'ya (veya herhangi bir şehre) olan uzaklığı o an için tamamen eşittir. Hız verileri beyni matematiksel bir tuzağa çekmek için verilmiştir.'
  },
  {
    'id': 'FUN_0094',
    'category': 'Matematiksel Mantık',
    'timeLimitSeconds': 90,
    'scenario': 'Bir müşteri 20 TL\'lik bir ürün alır ve 100 TL verir. Esnafta bozuk yoktur, yandaki komşusuna gider ve 100 TL\'yi bozdurur. Müşteriye 80 TL para üstünü ve ürünü verir. Az sonra komşu gelir ve "Bu 100 TL sahte!" diyerek parayı iade eder. Esnaf, komşusuna 100 TL gerçek para verir. Esnafın toplam zararı ne kadardır?',
    'options': [
      '200 TL',
      '180 TL',
      '120 TL',
      '100 TL',
      '80 TL',
      '20 TL'
    ],
    'correctIndex': 3,
    'insight': 'Kafa karıştırıcıdır ama cevap net: 100 TL. Esnaf komşusundan aldığı 100 TL\'nin 80\'ini müşteriye verdi, 20\'si kendinde kaldı. Sonra komşusuna kendi cebinden 100 TL verdi. Sonuçta esnafın cebinden çıkan; müşteriye giden 80 TL nakit ve 20 TL\'lik üründür. Komşuyla olan alışverişi nötrdür (al-ver).'
  },
  {
    'id': 'FUN_0095',
    'category': 'Uzaysal Mantık',
    'timeLimitSeconds': 60,
    'scenario': 'Bir aynanın karşısına geçtiğinizde; ayna sağ elinizi sol, sol elinizi sağ tarafta gösterir (Yatay çevirme). Peki, neden ayna başınızı aşağıda, ayaklarınızı yukarıda göstermez (Dikey çevirme)?',
    'options': [
      'Işık ışınları sadece yatay kırılır',
      'Gözlerimiz yan yana olduğu için öyle algılarız',
      'Ayna aslında sağ-solu değil, ön-arka eksenini ters çevirir',
      'Dünyanın yerçekimi ekseniyle alakalıdır',
      'Aynaların atomik yapısı dikey yansımaya kapalıdır',
      'Beynimiz görüntüyü otomatik olarak düzeltir'
    ],
    'correctIndex': 2,
    'insight': 'Ayna aslında ne sağ-solu ne de üst-altı çevirir. Ayna sadece "ÖN-ARKA" (Derinlik) eksenini tersine çevirir. Siz aynaya baktığınızda burnunuz aynaya sizden daha yakındır. Sağ ve solun yer değiştirdiğini sanmamızın tek sebebi, bizim kendi eksenimizde 180 derece dönüp aynadaki hayalimize "arkadan" bakmaya çalışmamızdır.'
  },
  {
    'id': 'FUN_0096',
    'category': 'Sözel Mantık',
    'timeLimitSeconds': 30,
    'scenario': 'Öyle bir yer hayal edin ki; orada "Dün" her zaman "Yarın"dan sonra gelir. "Cumartesi" ise "Cuma"dan çok daha öncedir. Hatta "Gelecek" bile "Geçmiş"in gerisindedir. Bu gizemli yer neresidir?',
    'options': [
      'Paralel bir evren',
      'Bir sözlük',
      'Bir rüya alemi',
      'Karadeliklerin içi',
      'Geriye doğru akan bir nehir',
      'Bozuk bir saat'
    ],
    'correctIndex': 1,
    'insight': 'Cevap bir sözlüktür! Sözlükte kelimeler alfabetik sıraya göre dizilir. "D" harfi "Y"den sonra gelmez ama sözlükte "Dün" kelimesi, "Yarın"dan çok daha önce yer alır. (Not: Türkçe sözlükte D-Y, C-C, G-G sıralamasına göre bu mantık kusursuz işler).'
  },
  {
    'id': 'FUN_0097',
    'category': 'Mekansal Algı',
    'timeLimitSeconds': 45,
    'scenario': 'Önünüzde bir engel var. Ne üzerinden atlayabiliyorsunuz, ne altından geçebiliyorsunuz, ne de yanından dolaşabiliyorsunuz. Engel tamamen aşılmaz görünüyor. Ancak siz hiçbir alet kullanmadan, sadece bir adım atarak bu engeli geçiyorsunuz. Bu engel nedir?',
    'options': [
      'Görünmez bir duvar',
      'Bir gölge',
      'Kendi eşiğiniz (kapı eşiği)',
      'Bir çizgi (yerdeki bir çizgi)',
      'Bir ayna',
      'Bir cam bölme'
    ],
    'correctIndex': 3,
    'insight': 'Mantık basit ama etkili: Yere çizilmiş bir çizginin (veya bir sınırın) altından geçemez, üzerinden atlayamaz (çünkü hacmi yoktur) veya yanından dolaşamazsınız (çünkü sonsuz bir düzlem gibi düşünülür). Ancak sadece bir adım atarak üzerinden geçip "öbür tarafa" geçebilirsiniz.'
  },
  {
    'id': 'FUN_0098',
    'category': 'Sosyal Mantık',
    'timeLimitSeconds': 45,
    'scenario': 'Bir adam elindeki fotoğrafa bakarak şunları söyler: "Benim ne erkek ne de kız kardeşim var (tek çocuğum). Ama bu fotoğraftaki kişinin babası, benim babamın oğludur." Adam fotoğrafta kime bakmaktadır?',
    'options': [
      'Kendi babasına',
      'Kendi oğluna',
      'Kendi çocukluğuna',
      'Yeğenine',
      'Amcasına',
      'Torununa'
    ],
    'correctIndex': 1,
    'insight': 'Kilit nokta "Babamın oğlu" ifadesidir. Adam tek çocuk olduğu için "Babamın oğlu" bizzat kendisidir. Cümleyi buna göre sadeleştirirsek: "Fotoğraftaki kişinin babası BENİM." Eğer resimdeki kişinin babası o adamsa, resimdeki de adamın oğludur.'
  },
  {
    'id': 'FUN_0099',
    'category': 'Saf Mantık',
    'timeLimitSeconds': 30,
    'scenario': 'Bir insanın, o anki durumuyla ilgili söyleyebileceği tek bir kelime vardır ki, o kelime söylendiği anda otomatik olarak "yalan" haline gelir. Bu kelime/durum nedir?',
    'options': [
      'Dürüstüm',
      'Yalan söylüyorum',
      'Uyuyorum',
      'Ölüyüm',
      'Sessizim',
      'Unuttum'
    ],
    'correctIndex': 2,
    'insight': 'Eğer bir kişi "Uyuyorum" diyebiliyorsa, o kişi uyanıktır. Dolayısıyla bu kelimeyi telaffuz ettiği anda durumun kendisi (uyku hali) ortadan kalktığı için beyan otomatik olarak yalan olur. "Sessizim" de benzerdir ama uyku daha temel bir biyolojik paradokstur.'
  },
  {
    'id': 'FUN_0100',
    'category': 'Zamanlama Mantığı',
    'timeLimitSeconds': 45,
    'scenario': 'İki adam bir bara girer ve ikisi de aynı zehirli içkiden (bol buzlu viski) sipariş eder. Birinci adam içkisini 5 saniyede bitirip masadan kalkar. İkinci adam ise içkisini keyif yaparak yavaş yavaş içer. Bir süre sonra yavaş içen adam ölür, hızlı içen adam ise sapasağlamdır. Her iki içki de aynı oranda zehirli olduğuna göre hızlı içen adam nasıl kurtulmuştur?',
    'options': [
      'Hızlı içtiği için panzehir etkisi yapmıştır',
      'Vücudu zehre karşı bağışıklık kazanmıştır',
      'Zehir aslında buzların içindedir',
      'İkinci adamın bardağına sonradan zehir eklenmiştir',
      'Hızlı içen adam gizlice kusmuştur',
      'Alkol zehrin etkisini nötralize etmiştir'
    ],
    'correctIndex': 2,
    'insight': 'Müthiş bir fiziksel mantık! Zehir içkinin kendisinde değil, buzların içindedir. Hızlı içen adam buzlar erimeden içkisini bitirdiği için zehir suya karışmamıştır. Yavaş içen adam ise buzların erimesine izin verdiği için zehirli suyu içmiş olur.'
  },
  {
    'id': 'FUN_0101',
    'category': 'Stratejik Davranış',
    'timeLimitSeconds': 60,
    'scenario': 'Kısıtlı bir bölgeye giden bir köprünün başında bir nöbetçi durmaktadır. Köprüyü geçmek tam 5 dakika sürmektedir. Nöbetçi her 4 dakikada bir kulübesinden dışarı çıkıp köprüye bakar ve üzerinde birini görürse onu geldiği yöne geri gönderir. Bir adamın bu köprüyü geçmesi gerekiyor ve saklanacak hiçbir yer yok. Adam köprüyü nasıl geçebilir?',
    'options': [
      'Köprünün altından tutunarak ilerler',
      'Nöbetçiye rüşvet teklif eder',
      'Nöbetçi çıkınca 4 dakika yürür, o içeri girince geri kalan yolu koşar',
      '3 dakika yürüdükten sonra arkasını döner ve geldiği yöne doğru yürümeye başlar',
      'Nöbetçinin uyumasını bekler',
      'Çok hızlı koşarak 4 dakikada bitirmeye çalışır'
    ],
    'correctIndex': 3,
    'insight': 'Psikolojik bir yanıltma! Adam 3 dakika boyunca ileri doğru yürür, nöbetçinin çıkmasına az kala arkasını döner ve başlangıç noktasına doğru yürüyormuş gibi yapar. Nöbetçi dışarı çıktığında adamı köprüye "girmeye çalışan" biri değil, "karşı taraftan gelip buraya girmeye çalışan" biri sanır ve kural gereği onu geldiği yöne (yani adamın gitmek istediği asıl yöne) geri gönderir.'
  },
  {
    'id': 'FUN_0102',
    'category': 'Karar Mekanizması',
    'timeLimitSeconds': 60,
    'scenario': 'Bir kral, bir bilgeye "Benden ne dilersen dile, kabul edeceğim. Ancak bir şartım var: Sen ne istersen, en büyük düşmanına tam iki katını vereceğim" der. Bilge adam biraz düşünür ve öyle bir şey diler ki; hem dileği kabul olur hem de düşmanı perişan olur. Bilge ne dilemiştir?',
    'options': [
      'Bana bir ton altın ver',
      'Düşmanımın tüm mallarını bana ver',
      'Benim bir gözümü çıkar',
      'Beni ülkenin yarısına kral yap',
      'Düşmanımı hapse at',
      'Bana ölümsüzlük ver'
    ],
    'correctIndex': 2,
    'insight': 'Stratejik fedakarlık! Bilge adam "Benim bir gözümü çıkar" dediğinde, kralın kuralı gereği düşmanının "iki gözü" birden çıkarılır. Bilge tek gözüyle yaşamaya devam edebilirken, düşmanı tamamen kör olur. Haset ve rekabet üzerine kurulu sistemleri kilitleyen karanlık ama kusursuz bir mantıktır.'
  },
  {
    'id': 'FUN_0103',
    'category': 'Algısal Engel',
    'timeLimitSeconds': 30,
    'scenario': 'Bir gece tüm şehirde elektrikler kesilir. Bir adam odasında oturmaktadır; lamba yok, mum yok, ay ışığı yok, fener yok. Oda zifiri karanlıktır. Buna rağmen adam elindeki kitabı hiçbir zorluk çekmeden akıcı bir şekilde okumaya devam eder. Bu nasıl mümkün olabilir?',
    'options': [
      'Gözleri karanlığa çok iyi alışmıştır',
      'Kitap fosforlu harflerle yazılmıştır',
      'Adam aslında bir yapay zekadır',
      'Adam kördür ve Braille alfabesiyle okuyordur',
      'Adam rüya görmektedir',
      'Güneş gözlüğü takmaktadır'
    ],
    'correctIndex': 3,
    'insight': 'Zihinsel kör nokta! Okuma eylemini sadece "gözle" yapılan bir eylem olarak kodladığımız için ışığa ihtiyaç duyarız. Ancak görme engelli bir birey için "okumak" dokunma duyusuna (Braille/Kabartma alfabe) dayalıdır ve ışığa ihtiyaç duymaz.'
  },
  {
    'id': 'FUN_0104',
    'category': 'Temporal Mantık',
    'timeLimitSeconds': 60,
    'scenario': 'Aralarında sadece birkaç dakika farkla doğan iki öz kardeşten; resmi kayıtlara göre küçük olanı, büyük olanından tam 2 gün sonra doğmuş gibi görünmektedir. Anneleri aynıdır, hastane kayıtları doğrudur ve herhangi bir teknik hata yoktur. Bu durum nasıl mümkün olabilir?',
    'options': [
      'Biri kış, diğeri yaz saatine geçişte doğmuştur',
      'Doğumlar uluslararası tarih değiştirme çizgisini geçen bir gemide olmuştur',
      'Biri 31 Aralık’ta, diğeri 1 Ocak’ta doğmuştur',
      'Anneleri iki farklı ülkede doğum yapmıştır',
      'Yapay bir zaman dondurma işlemi uygulanmıştır',
      'Biri artık yıl olan 29 Şubat\'ta doğmuştur'
    ],
    'correctIndex': 1,
    'insight': 'Eğer bir gemi Batı’dan Doğu’ya doğru Tarih Değiştirme Çizgisi’ni tam o an geçiyorsa; ilk çocuk çizginin batısında (örneğin Cumartesi gecesi) doğarken, ikinci çocuk çizginin doğusunda (Cuma gecesi) doğabilir. Ancak gemi ters yöne gidiyorsa, aradaki dakika farkı bir anda resmi kayıtlarda 2 güne kadar çıkabilir. Bu, zamanın akışının değil, "resmi zamanın" coğrafi konumla nasıl manipüle edildiğini gösterir.'
  },
  {
    'id': 'FUN_0105',
    'category': 'Fiziksel Algı',
    'timeLimitSeconds': 45,
    'scenario': 'Bir geminin ambarı tamamen doludur ve gemi batma sınırına çok yakın bir derinlikte yüzmektedir. Ambarın içinden bir miktar yük (örneğin demir bloklar) çıkarılıp denize atılmasına rağmen, gemi yükselmek yerine daha hızlı bir şekilde batmaya başlar. Hiçbir sızıntı veya delik yoktur. Bu nasıl mümkün olabilir?',
    'options': [
      'Geminin dengesi bozulduğu için yan yatmıştır',
      'Atılan yükler geminin altına çarpmıştır',
      'Yükler atıldığı anda deniz seviyesi yükselmiştir',
      'Gemi aslında bir buzdağına çarpmıştır',
      'Gemi bir "Vakum" odası içinde bulunmaktadır',
      'Gemi batmakta olan bir kum havuzundadır'
    ],
    'correctIndex': 0,
    'insight': 'Bu bir denge (stabilite) meselesidir. Geminin alt kısmındaki (safra) ağırlıkları çıkarırsanız, geminin ağırlık merkezi su seviyesinin çok üstüne çıkar. Gemi toplamda "hafiflemiş" olsa da, denge noktasını kaybettiği için alabora olur (yan yatar) ve su alarak batar. Yani bazen hafiflemek, hayatta kalmaya yetmez; denge (fiziksel ve mental) daha önemlidir.'
  },
  {
    'id': 'FUN_0106',
    'category': 'Gözlemsel Mantık',
    'timeLimitSeconds': 30,
    'scenario': 'Onu ne kadar çok alırsanız, geride o kadar çok bırakırsınız. Bahsedilen bu "şey" nedir?',
    'options': [
      'Zaman',
      'Nefes',
      'Adım (Ayak izi)',
      'Bilgi',
      'Para',
      'Hata'
    ],
    'correctIndex': 2,
    'insight': 'Bu bir "eylem-sonuç" paradoksudur. Siz "adım attıkça" (yani adımları kendinize aldıkça), arkanızda o kadar çok "ayak izi" bırakırsınız. Beyin genellikle soyut kavramlara (zaman, bilgi) odaklanırken, en temel fiziksel eylemin yarattığı boşluğu (izi) gözden kaçırır.'
  },
  {
    'id': 'FUN_0107',
    'category': 'Saf Mantık',
    'timeLimitSeconds': 30,
    'scenario': 'Öyle kırılgan bir şeydir ki; ismini telaffuz ettiğiniz anda onu bozmuş ve yok etmiş olursunuz. Bahsedilen nedir?',
    'options': [
      'Sır',
      'Cam',
      'Güven',
      'Sessizlik',
      'Huzur',
      'Gelecek'
    ],
    'correctIndex': 3,
    'insight': 'Sessizlik, tanımı gereği sesin yokluğudur. "Sessizlik" kelimesini söylediğiniz anda bir ses dalgası yaratmış olursunuz ve böylece o anki sessizliği bozarsınız. Bir şeyin varlığını sadece ondan bahsetmeyerek koruyabildiğiniz tek durumdur.'
  }
];

