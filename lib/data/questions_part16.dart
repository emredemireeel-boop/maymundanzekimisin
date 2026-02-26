// Maymundan Zeki Misin? – Part 16: DAHI_001 – DAHI_010
// Nobel ve Fields Madalyası Seviyesinde Dünyanın En Zorlu ve Özgün Zeka Soruları

final List<Map<String, dynamic>> questionsPart16 = [
  {
    'id': 'DAHI_001',
    'category': 'Paradoksal Düşünme ve Oyun Teorisi',
    'timeLimitSeconds': 60,
    'scenario': "Zifiri karanlık, hiçbir şeyin görünmediği ve hissedilmediği bir odanın ortasında kare bir masada dört bozuk para var. Paraların düşüş yönlerine göre KESİN olarak 1 tanesi TURA, 3 tanesi YAZI yüzü yukarı bakmaktadır.\nAmacınız dışarı çıktığınız an (ışıklar açıldığında) masanın üzerinde Çift sayıda TURA (0, 2 veya 4 adet) olmasını KESİN olarak garanti etmektir.\nEldivenliyken paraların yüzünü hissetmiyorsunuz ve paraları atamaz/dik koyamazsınız.\nHiçbir şansa yer bırakmayan kusursuz algoritmik hamle nedir?",
    'options': [
      'Seçtiğim herhangi iki parayı aynı anda ters çevirip odadan çıkarım',
      'Dört paranın dördünü birden ters çevirip odadan çıkarım',
      'Hiçbir paraya dokunmadan direkt odadan çıkarım',
      'Sadece rastgele seçtiğim tek 1 adet parayı ters çevirip odadan çıkarım',
      'İki parayı birbiriyle yer değiştirip bırakırım',
      'Herhangi 3 parayı seçip, hepsini ters çevirip çıkarım'
    ],
    'correctIndex': 3,
    'insight': "Tek 1 parayı ters çevirin. Eğer tesadüfen odadaki TEK Tura olanı çevirdiyseniz, masada Tura sayısı 1'den 0'a iner. Sıfır matematiğe göre bir çift sayıdır! Sınavı geçtiniz. Eğer ters çevirdiğiniz para Yazılardan biriyse, Tura sayısını 1'den 2'ye çıkarmış olursunuz. 2 de matematikte çift sayıdır. Her halükarda Tura sayısının Teklik durumunu (pariteyi) bozup Çiftlik durumuna atmış olursunuz.",
  },
  {
    'id': 'DAHI_002',
    'category': 'Dilsel Derinlik ve Yapısal Morfoloji',
    'timeLimitSeconds': 45,
    'scenario': "Dahi bir filolog tarafından tasarlanmış, 'Harflerin Biyolojik Ailesi' testindesiniz. Önünüzde 3 kelime var:\n1. MAKET\n2. YAKUT\n3. DAVET\n\nŞifre; kelimelerin sözlük anlamlarında, hece sayılarında veya harf sıralamalarında DEĞİL, fiziksel anatomi şablonundadır.\nBu aileye katılması KESİNLİKLE gereken dördüncü kelime, aşağıdakilerden hangisidir?",
    'options': [
      'Hasat',
      'Yaran',
      'Melek',
      'Çocuk',
      'Damat',
      'Zorlu'
    ],
    'correctIndex': 4,
    'insight': "Kural 'Tek Eksenli Süper-Simetri' kuralıdır. M, A, K, E, T... Bu harflerin hepsinin tam olarak BİR TANE simetri ekseni vardır (Ya yatay ya dikey). DAMAT (D, A, M, A, T) kelimesindeki bütün harfler de aynı anatomiye uyar ve tek bir simetri eksenine sahiptir. Diğer kelimelerdeki S, R, N, L, Ç, Z harfleri tamamen asimetriktir veya O, H gibi harfler çift eksenlidir.",
  },
  {
    'id': 'DAHI_003',
    'category': 'İleri Matematiksel Sezgi',
    'timeLimitSeconds': 60,
    'scenario': "Sonsuz bir koridorda; 1'den sonsuza kadar ardışık numaralandırılmış hücre kapıları başlangıçta KAPALI bekliyor.\n1. Turda sistem her kapıyı tersine çevirir.\n2. Turda ise 2'nin katı olan (2, 4, 6...) kapıları tersine çevirir.\n3. Turda sadece 3'ün katı olanlara (3, 6, 9...) uğrar. Sonsuz kere sürer.\nTurun sonunda sadece numarası 'Tam Kare (1, 4, 9, 16, 25...)' olan kapıların açık kalacağını biliyoruz.\nAncak siz koridorda sonsuza doğru yürüdükçe, peş peşe gelen İki AÇIK KAPI arasındaki o dev hücre mesafesinin uzaklığı her adımda KESİN OLARAK ancak aşağıdaki formüllerin hangisiyle tarif edilebilir?",
    'options': [
      'Mesafe kaotik olarak yayılır ve zamanla giderek nadirleşen yeni Asal Sayılar yaratır',
      'Mesafedeki koridor uzunluğu şaşmaz biçimde daima bir Çift Sayı olmak zorundadır',
      'Kapıların arasındaki mesafe tamamen rastgele artar',
      'Mesafe atılımları her ilerleyişte, sırasını hiç bozmadan sürekli büyüyen Ardışık tek sayilar dizisini kusursuzca yaratmak zorundadır',
      'Bir noktadan itibaren Fibonacci Dizilimi mutlak şekilde aradaki mesafeyi kilitler',
      'İki açık kapı arasındaki uzaklık da kendisi büyük bir Tam Kare sayıdır'
    ],
    'correctIndex': 3,
    'insight': "Tam kareleri oranlayalım: (4-1=3), (9-4=5), (16-9=7), (25-16=9)... Ardışık iki tam karenin cebirsel mesafesi (n+1)² - n² = 2n + 1 formülüne eşittir. Herhangi bir tam sayının 2 katının 1 fazlası istisnasız bir şekilde daima ardışık büyüyen TEK SAYILAR (3, 5, 7, 9, 11...) zinciri oluşturur.",
  },
  {
    'id': 'DAHI_004',
    'category': 'Saf Soyut Mantık ve Oyun Teorisi',
    'timeLimitSeconds': 50,
    'scenario': "Büyük bir arenada üç ölümcül keskin nişancı (A, B ve C) eşkenar üçgen mesafesinde duruyor.\nA Makinesinin %100, B Makinesinin %80, C Makinesinin ise %30 vurma isabet oranı vardır.\nKanun gereği tura En Zayıf olan C'den başlanır ve C -> B -> A döner. Herkesin tek hedefi 'Sağ kalan TEK kişi' olmaktır.\nİlk defa sıra C'ye geldi. C'nin hayatta kalma istatistiğini mutlak maksimuma taşıyacağı Oyun Teorisine (Nash Dengesi) göre ilk atışı neresi OLMALIDIR?",
    'options': [
      'Şansını derhal %100 öldürücü olan A Makinesinde denemelidir',
      'Daha zayıf ama riskli olan B Makinesini devre dışı bırakmalıdır',
      'Namlusunu bilerek tamamen HAVAYAateşlemeli ve sırasını boşa yakmalıdır',
      'Kendi namlusuyla sistemine son vermeli',
      'İkisini de nişan alarak korkutucu bir hedef belirsizliği yaratmalıdır',
      'A\'yı hata marjına devredip denemelidir'
    ],
    'correctIndex': 2,
    'insight': "Eğer C silahı birini vurursa, arenada ayakta kalan ZORUNLU olarak sadece çok güçlü öteki rakip (ya A ya B) olur ve bütün öfkesiyle %100 veya %80 olasılıkla direkt C'yi eritir. Kusursuz hamle Havaya sıkarak pas geçmek ve ilk atış sırasını B'ye bırakmaktır. A ve B birbirlerinden korktukları için bütün dikkat ve kurşunlarını birbirlerine ateşleyerek devlerin savaşına tutuşur. C bu arenada son hayatta kalana sağlam olarak tek atış hakkını muhafaza eder.",
  },
  {
    'id': 'DAHI_005',
    'category': 'Yaratıcı Örüntü Tanıma ve Gestalt Kopması',
    'timeLimitSeconds': 45,
    'scenario': "Hırsız kasa üzerinde şöyle bir şifre kağıdı bulur:\n1 = 0\n2 = 0\n4 = 1\n6 = 1\n8 = 2\n9 = 1\n10 = 1\n\nBu şifre mantığına göre kasanın pimi olan '8809' sayısı hangi sonuçla kasayı açacaktır?",
    'options': [
      '6',
      '5',
      '7',
      '8',
      '18',
      '0'
    ],
    'correctIndex': 0,
    'insight': "Bu bir algı salınımı ve optik körlük testidir. Sol beyniniz matematiksel (Onaltılık sayı, fonksiyonlar vs.) gibi çıkarımlar ararken, bulmaca salt geometrik çizimlerdir! Yalnızca sayıların fiziksel yazımındaki kapalı gözenek (boşluk/ilmek) adetlerini sayın! 1 ve 2'nin karnında boşluk yoktur (0 kapalı daire). 4'te bir, 6'da bir, 8'de iki boşluk vardır. Buna göre 8809 sayısındaki boşluk adedi = (2 + 2 + 1 + 1) = KESİN olarak 6 yapar.",
  },
  {
    'id': 'DAHI_006',
    'category': 'Soyut Mantık ve Algoritmik Topoloji',
    'timeLimitSeconds': 60,
    'scenario': "Ses yalıtımlı bir odada gizemli bir 'Krono-Akustik Dokuma Tezgahı' bulunuyor. Sadece A, B ve C olmak üzere tam üç farklı notayı kabul eder.\n- Eğer [A, B] dizisini çalarsanız, makine anında [C] olarak yankı verir.\n- Eğer herhangi bir notayı art arda iki kez çalarsanız, makine Sessizlik [S] yankılar.\n- Eğer bir notanın ardından Sessizlik çalarsanız, makine orijinal notayı bozulmadan yankılar.\n- Tezgahın en kritik kuralı 'Birleşmeli Yutma'dır: [[X, Y], Z] gibi üçlü bir dizi çalmak, her zaman [X, [Y, Z]] çalmakla tamamen aynı nihai yankıyı üretir.\n\nBir araştırmacı odaya girer ve şu diziyi eksiksiz çalar: [[A, B], C].\n\nTezgah tam olarak hangi yankıyı üretir?",
    'options': [
      '[A]',
      '[B]',
      '[C]',
      'Sessizlik [S]',
      '[A, B]',
      'Sonsuz bir döngü yaratır ve hiçbir şey yankılamaz'
    ],
    'correctIndex': 3,
    'insight': "Bu soruyu çözmek için, matematiksel cebir kurallarına katı bir şekilde uymalıyız. Bize [[A, B], C] soruluyor. Birinci kuraldan [A, B] = [C] olduğunu biliyoruz. Böylece [[A, B], C] işlemi, aradaki parantez sadeleşince doğrudan [[C], C] dizilimine dönüşür. İkinci kurala göre, kendisiyle art arda çalınan herhangi bir nota Sessizlik verir. Yani [C, C] = [S] olmak zorundadır.",
  },
  {
    'id': 'DAHI_007',
    'category': 'Boyutsal Geometri ve Uzamsal Yanılsama',
    'timeLimitSeconds': 60,
    'scenario': "Dahi bir mimar, havada asılı duran, tamamen katı 3 boyutlu bir obje tasarlar. Arkasında X, Y ve Z düzlemlerini kaplayan dümdüz üç beyaz duvar var. 3 ışık kaynağı doğrudan X, Y ve Z eksenleri boyunca nesneye vurur ve duvarlara gölge düşürür.\n\nMimar odadan çıkar ve size şu iddiayı bırakır:\n1) XY duvarına düşen gölge, kusursuz bir Çemberdir.\n2) YZ duvarına düşen gölge, kusursuz bir Karedir.\n3) XZ duvarına düşen gölge, kusursuz bir Eşkenar Üçgendir.\n\nAşağıdaki ifadelerden hangisi, bu katı cisim hakkında KESİNLİKLE doğrudur?",
    'options': [
      'Böyle çok yönlü bir cismin Öklid uzayında fiziksel olarak yekpare kalabilmesi imkansızdır',
      'Cismin en az bir adet kavisli yüzeyi ve en az bir kusursuz sivri noktasıbulunmalıdır',
      'Cismin hacmi, çember gölgesiyle aynı çapa sahip kürenin hacminden daha küçüktür',
      'Cisim sabit kalarak bu farklı gölgeleri aynı anda veremeyeceği için sürekli dönüyor olmalıdır',
      'Obje, yalnızca 2 boyutlu düzlemlerin keskin açılarda kesiştirilmesiyle oluşturulmuştur',
      'Objenin üzerindeki düz ve açılı yüzey sayısı yokuşlarla birlikte tam olarak 4 olmalıdır'
    ],
    'correctIndex': 1,
    'insight': "Tek, statik bir katı cisim çember, kare ve üçgen gölgeleri basabilir (Takoz Silindir). Dik duran kalın bir silindir düşünün. Tepeden gölgesi çember; ön cepheden dikdörtgen/karedir. Üst dairesel yüzeyin tepe noktasından alt köşelere yatay keserseniz oluşan kama yandan üçgen verir. Cisim çember gölgesi düşürebildiği için KESİNLİKLE kavisli yüzeye sahip OLMALIDIR. Kusursuz bir Üçgen gölgesi düşürdüğü için de sivri bir uca ihtiyacı vardır.",
  },
  {
    'id': 'DAHI_008',
    'category': 'Dilsel Derinlik ve Metasemantik İllüzyon',
    'timeLimitSeconds': 50,
    'scenario': "Eski bir el yazması, 'Mutlak Kelimeler'den oluşan şifreli bir hiyerarşi içerir. Bu şifre kelimelerin anlamına veya alfabedeki sıralarına değil, varoluşsal boyutlarına gömülmüş sarsılmaz bir mimari kurala dayanmaktadır.\n\nSeviye 1: I, A\nSeviye 2: NO, OR, IT\nSeviye 3: DEW, CAT, BOX\nSeviye 4: ?\n\nAşağıdaki kelimelerden hangisi sırasıyla Seviye 4 beklentisini formülize eden o istisnai kelimedir?",
    'options': [
      'Time',
      'Soup',
      'Echo',
      'Moon',
      'Vase',
      'Font'
    ],
    'correctIndex': 2,
    'insight': "Her seviye harf sayısı ile örtüşen ve mecburen 1 hece olmak zorundadır. Ancak 4. Seviyede kelimenin adı 'ECHO (Yankı)' ve kuralın adı 'Leksikal Boşluk'tur. Diğer şıkların hepsi kurala (4 harf, 1 hece) uysa da, bir boşluğun (1 heceli boşluk döngüsünün) tam olarak kanıtlanabilmesi için bir 'YANKI' yaratması gerekir ve ECHO kelimesi tek heceli değil 2 hecelidir. Seriyi kıran asıl meta-örünlü ECHO kelimesinin bu felsefi sıçramasında yatar.",
  },
  {
    'id': 'DAHI_009',
    'category': 'Beklenti Olasılığı ve Bilgi Çöküşü',
    'timeLimitSeconds': 50,
    'scenario': "İçi zırh kaplı bir kasanın içindeki mekanik cihaz, madeni parayı havaya attı ve üzerine kapak kapattı. Parayı görme şansınız yok.\nOdadaki her şeyi görebilen ve HER ZAMAN mutlak doğruyu söylemeye programlı hiper-gelişmiş bir yapay zeka size döner:\n\"Şimdi mutlak surette doğru olan bir ifade kullanacağım. O ifade tam olarak şu cümledir: 'Ya o kasanın içindeki para Tura olarak görülüyor, ya da ben her koşulda sadece yalan söyleyen kusurlu bir makineyim, ya da bu iki durumun ikisi birden geçerli.'\"\n\nBu ifadenin sonunda bardağın altındaki paranın Tura olma ihtimali tam olarak yüzde kaçtır?",
    'options': [
      '%50',
      '%100',
      '%0',
      'Kendiyle Çelişkin Yalancı Paradoksu nedeniyle tanımsızdır',
      '%75',
      '%25'
    ],
    'correctIndex': 1,
    'insight': "Bu bir 'P VEYA Q' önermesidir. P = 'Para Tura geldi', Q = 'Ben yalan söyleyen bir makineyim'. Makinenin daima DOĞRUyu söylediğini biliyoruz, bu da Q önermesini KESİNLİKLE YANLIŞ yapar. Ancak makine doğru konuştuğu için, ağzından çıkan (P VEYA Q) denkleminin sonucu 'DOĞRU' olmak ZORUNDADIR. Q yanlış olduğuna göre, denklemin doğru kalabilmesi için P'nin (Para Turadır) %100 Doğru olması mecburidir.",
  },
  {
    'id': 'DAHI_010',
    'category': 'Termodinamik Yanılgı ve Kombinatorik Yansımalar',
    'timeLimitSeconds': 50,
    'scenario': "Sızdırmaz bir hiper-küp görünmez bir duvarla 'Sol Kutu' ve 'Sağ Kutu'ya bölünmüştür. Tam 4 molekül içerir: İkisi Sıcak, İkisi Soğuk.\nBaşlangıçta Sol odada SADECE 2 Sıcak, Sağ odada SADECE 2 Soğuk molekül var. Her mikrosaniyede, görünmez duvar saliseliğine yok olur. Rastgele BİR ŞEKİLDE, Soldan Sağa 1 molekül VE Sağdan Sola 1 molekül eş zamanlı yer değiştirir.\nBu işlem BİR MİLYON mikrosaniye boyunca tekrarlanır ve duvar sonsuza dek donar.\nOrtaya çıkan en yüksek matematiksel olası NİHAİ DURUM aşağıdakilerden hangisidir?",
    'options': [
      'Her iki odada da kesinlikle 1 Sıcak ve 1 Soğuk molekül bulunur',
      'Başlangıçtaki %100 orijinal düzen gelir',
      'Durumlar sürekli sallınım yapacağı için homojen tahmin imkansızdır',
      'Tam bir termal zıtlık inversiyonu yaşanır',
      'Çarpışmalar nedeniyle tüm moleküller tam bir termal dengede aynı ortalama hıza sahip olur, bu yüzden \"Sıcak\" veya \"Soğuk\" ayrımları anlamsızlaşır',
      'Sol: 1 Sıcak & 2 Soğuk, Sağ: 1 Sıcak asimetrisi'
    ],
    'correctIndex': 4,
    'insight': "Olasılık denklemlerinde A şıkkına atlayabilirsiniz. Ancak bu bir Termodinamik Kinetik Entropi denklemidir. Parçacıklar yön değiştirip kapalı bir kutuda zıplayıp birbirlerine MİLYONLARCA kez çarparlar. Enerjilerini çarpışarak aktarırlar. 1 milyon iterasyonun sonuna gelindiğinde sistem 'Termal Dengeye (Thermal Equilibrium)' mutlak erişmiş olur, her kinetik seviye ılır. Böylece Sıcak ve Soğuk ayırımı biter.",
  },
  {
    'id': 'DAHI_011',
    'category': 'Derin Uzay Fiziği ve İllüzyon',
    'timeLimitSeconds': 45,
    'scenario': "Uluslararası Uzay İstasyonunda (ISS) yerçekimsiz ortamda süzülen bir astronot, elinde tamamen kapalı, şeffaf ve içi %50 su - %50 hava dolu küresel bir cam fanus tutmaktadır. Astronot bu fanusu kendi ekseni etrafında matkap gibi hızla döndürmeye (spin atmaya) başlar. Merkezkaç kuvveti etkisiyle fanusun içindeki SU ve HAVA nasıl bir şekil alır?",
    'options': [
      'Su santrifüj etkisiyle tam cam çeperlere yapışır, hava merkezde yuvarlak kalır',
      'Hava daha hafif olduğu için dış yüzeye kaçar, su merkeze toplanıp orada durur',
      'Yerçekimi olmadığı için her iki element birbirine karışarak tam köpük şekli alır',
      'Merkezkaç kuvveti suyu dondurur ve buz halinde merkezde kristallenmeye başlar',
      'Cam fanusun içinde hava ve su tam ortadan iki eşit yarımküreye doğru ayrışır',
      'Suyun tamamen fanusun tek bir kutup eksenine itilmesiyle yumurta şekli oluşur'
    ],
    'correctIndex': 0,
    'insight': "Merkezkaç (Santrifüj) Kuvveti kütlesi AĞIR olanı her zaman en dışarı fırlatır! Su, havadan çok daha yoğun ve ağırdır. Fanus döndükçe su dışarı doğru saçılır ve camın tüm iç çeperine yapışarak kalın bir tabaka suyu oluşturur. Hava ise mecburen fanusun tam merkezine itilir ve ortada bir 'hava küresi' oluşturur. Çamaşır makinesinin dönerek suyu dışarı atması prensibiyle tamamen aynıdır.",
  },
  {
    'id': 'DAHI_012',
    'category': 'Sosyal Paradoks',
    'timeLimitSeconds': 40,
    'scenario': "Çok seçkin bir matematikçiler kulübünde 100 üye vardır. Yeni kurala göre, herkes diğer 99 üyenin deha seviyesini 1'den 100'e kadar derecelendirip kapalı zarfla teslim edecektir. Sonuçlar tamamen doğru ve matematiksel hesaplamayla alındığında, kulüpteki HER BİR ÜYENİN, diğer geri kalanların 'Ortalama Değerinden' DAHA ZEKİ çıkması Prensip olarak NASIL %100 GERÇEK olabilir?",
    'options': [
      'Kulübün tamamının ortalamayı kasıtlı sabote etmek için kendi notlarını şişirmesi',
      'Üyelerin geri kalana not verirken sadece en düşük zekalıları referans göstermesi',
      'Değerlendirmenin sadece tekil veya asimetrik bağımsız değişkenler üstünden yapılması',
      'Toplumun %99\'unun ortalamanın üstünde olduğu popüler yalan istatistik teorisiyle',
      'İki kişi arasındaki deha puanının sonsuz döngüyle birbirini sürekli elimine etmesiyle',
      'Bunu sadece 1 kişinin 99 puan üstünden kendinde 100 tuttuğunda doğrulayabilmesiyle'
    ],
    'correctIndex': 2,
    'insight': "Buna Gölge Ortalaması Paradoksu denir! Çok zeki ve parlak 1 kişi hariç diğer 99 üye son derece SIRADAN olabilir, ancak bu dahiyi ortalamalarından çıkardıklarında, grubun kalanı kendi ortalamalarına baktığında aşırı düşük bir seviyede kalır. Herkes kendi dehasını farklı 'spesifik bir alanda' (A kişisi geometride, B cebirde) hesaplarsa (Asimetrik Bağımsız Değişken), matematiksel olarak HERKES genel ortalamanın üstünde olduğunu (%100 matematiksel gerçeklikle) hesaplar ve kanıtlar.",
  },
  {
    'id': 'DAHI_013',
    'category': 'Kognitif Eşik',
    'timeLimitSeconds': 35,
    'scenario': "Bir adam otelde cinayet programı izlerken kanaldaki sunucu der ki: 'Cinayeti saat tam 21:00'da, tamamen siyah giyinmiş, kukuletalı ve aşırı hızlı koşan bir hayalet-katil işledi'. Adam saate bakar vakit 21:02'dir. Pencereden dışarı bakar ve siyah kukuletalı aşırı hızlı koşan birini görür! Onu hemen polise ihbar ETMEZ. Aksine çok rahatlayıp uyur. Adamı bu kadar rahatlatan mantıksız çelişki nedir?",
    'options': [
      'Adamın kendisinde de tamamen aynısından gizli kukuleta giysisi zaten olmasıydı',
      'Televizyondaki o programın bir polisiye olay veya tamamen belgesel tarihi olması',
      'Adamın camdan baktığında kendini o siyah kukuletayla yansıtma ile görüyor olması',
      'Aşağıda hızla koşarak giden adamın aslında kendi otelinin dev gece güvenlikçisi olması',
      'Cinayet programının canli yayın olmaması, yani eskiden yaşanmış bir kaydın yayınlanması',
      'Şehrin altından kanalizasyon geçişinin üstünde karanlık gölge fırlatılamaz bir alan olması'
    ],
    'correctIndex': 4,
    'insight': "Televizyondaki program CANLI YAYIN değildir! Cinayet belgeselleri, diziler veya haber dosyaları aylar, yıllar önceki olayları anlatır. Adam haberde \"saat 21:00'da işlendi\" lafını duyup saatine bakar, dışarıdaki kukuletalıyı görür ancak TV'deki olayın GEÇMİŞTE ZATEN YAŞANMIŞ BİR KAYIT olduğunu bir saniye sonra idrak edip gülümseyerek yatağına döner. Beyin, olayların zamansal uyuşmazlığını bağlama oturtur.",
  },
  {
    'id': 'DAHI_014',
    'category': 'Miyopik Strateji',
    'timeLimitSeconds': 50,
    'scenario': "Dünya savaşı sırasında iki komutan karargahtadır. Birinci komutan der ki: 'Şifremizi kırmak için devasa bir makine ürettiler, trilyon kere trilyon ihtimali hesaplayabilir, şifremiz KESİN çözülecek!'. İkinci süper dahi komutan gülümser ve makineye DOKUNMADAN şifreyi ASLA Kırılamaz hale getirir. Ne yapar?",
    'options': [
      'Gelen tüm şifrelerin alfabeden rastgele kelime kopyaları olmasına dair zorunlu emirler verir',
      'Şifreyi bilgisayarların çökmesini sağlayacak kadar devasa uzunluktaki kelimelerden üretir',
      'Her mesaja şifrenin kendi kendini iptal ettiği sahte bir zamanlı saat veya bomba şifre koyar',
      'Hiçbir anlamı olmayan rastgele boş harf dizelerinden mesaj yollayıp makineyi kitler boğar',
      'Şifre tamamen doğru çözüldüğünde ortaya Çikmamasi gereken milyon tane mantikli yanlış üretir',
      'Savaş haritasındaki bölkelerinin koordinatlarını asimetrik harfler kullanıp ters yönlendirir'
    ],
    'correctIndex': 4,
    'insight': "Mükemmel kamuflaj yöntemi! Dahi komutan şifreyi öyle bir sistemle tasarlar ki, makine trilyon ihtimali hesapladığında sadece TEK BİR 'DOĞRU ANLAMLI' CÜMLE çıkmaz. Ortaya 'Saldırı yarın', 'Ateş atılmadı', 'Geri çekilin' gibi MİLYONLARCA tamamen mantıklı ve dilbilgisi düzgün FARKLI CÜMLE çıkar. Düşman o anlamlı milyon cümleden HANGİSİNİN asıl emir olduğunu, yani şifrenin doğrusunu ASLA ANLAYAMAZ. Şifreyi çözen değil, doğruyu bulduran yöntem yenilmiştir.",
  },
  {
    'id': 'DAHI_015',
    'category': 'Dilin Prangaları',
    'timeLimitSeconds': 30,
    'scenario': "Klasik antik masalda şeytan bilge adama sorar: 'Bana doğru olan herhangi bir gerçeği söyle, seni ve aileni derhal serbest bırakayım. Yanlış bir şey söylersen hepinizi yakarım!' Bilge adam tek bir kısa ve basit cümle kurar ve şeytan beyni alev alarak patlar, onları mecbur bırakır. Bilge adam şeytana mantıksal çıkmaz olarak NE DEMİŞTİR?",
    'options': [
      'Sen sonsuz kudret sahibi olduğun için asla bize dokunup zarar veremeyeceksin yalan mıyım',
      'Benim ve ailemin asla ateşle cayır cayır yakılmayacağımız gerçek bir doğrudan yalandır demesi',
      'Sen birazdan ne yaparsan yap beni ve çevremi sonsuza kadar bu cehennemde ateşle yakacaksın',
      'Kaderimde yazılan doğrunun senin düşünce evreninle asla çakışmayacağı tam tersi olmasıdır',
      'Ölümcül alevi içindeki kötülüğün getirdiği kibrin seni duman edip tamamen kül haline getirmesi',
      'Birazdan bizi kurtaracak olan sihrin senin kendi yok oluşundan doğan zıtlığa tekabül edişi'
    ],
    'correctIndex': 2,
    'insight': "Bilge adam: 'Sen birazdan BİZİ YAKACAKSIN!' der. Eğer şeytan bu cümleyi YANLIŞ sayıp adamları KURAL GEREĞİ yakarsa, o zaman adamın söylediği 'Bizi yakacaksın' cümlesi DOĞRU ÇIKMIŞ OLUR! Doğru çıkmış bir cümle söylediği için şeytan kuralları gereği onu Serbest bırakmak ZORUNDA KALIR. Serbest bırakırsa da cümle YANLIŞ çıkmış olur. İnanılmaz bir paradokstur.",
  },
  {
    'id': 'DAHI_016',
    'category': 'Zeka ve Ekoloji',
    'timeLimitSeconds': 40,
    'scenario': "Avrupa'nın bir şehrinde, sokak güvercinlerinin şehrin altın rengi yaldızlı tarihi heykellerini asitli dışkılarıyla çok fena tahrip ettiği fark ediliyor. Biyologlar kuşları zehirlemeyi yasaklar, plastik sahte baykuşlar korkutmaz. 9 yaşındaki çingene bir çocuk sıfır maliyetli ve %100 çevre dostu dahiyane olan tek çözümü sunar. Nedir?",
    'options': [
      'Heykellerin çevresine ayna sistemleri kurarak güvercinlerin kendilerinden fena korkmasını sağlamak',
      'Meydanın zeminine o heykellerin etrafındaki ağaçlara yaprak yapısı yapıştırıcı bol reçine ile dökmek',
      'İnsanların heykellere doğrudan yem ve ekmek parçası bırakmasını ceza ile yasaklayıp sonlandırmak',
      'Heykel etrafında her saat başı ses dalgası patlatan otomatik siren zillerinin entegre bir biçimiyle',
      'Meydanın zeminindeki uzak köşelerine onlardan daha favori yiyecekleri çok uzağa düzenli koymak',
      'Meydana bol miktarda yırtıcı kedi bırakıp sistemdeki ekolojik dengeye tamamen acımasız müdahale'
    ],
    'correctIndex': 4,
    'insight': "Çocukların en kusursuz lateral çözümü: Şehrin tamamen ters istikametindeki ÖTEKİ BOŞ MEYDANA kuşlar için BEDAVA, temiz ve devasa bir Mısır/Yem istasyonu kurarlar! Aç veya tok tüm güvercinler doğal olarak altın heykelin değil, BEDAVA VE BOL yemeğin olduğu diğer adrese uçup kamp kurar. Sorunu yasaklayıp saldırmak yerine odağını yanal cazibe ile taşımak dahiyanedir.",
  },
  {
    'id': 'DAHI_017',
    'category': 'Termodinamik Biyoloji',
    'timeLimitSeconds': 35,
    'scenario': "Kutuplarda kış uykusuna yatan dev boz ayılar, -40 derece soğukta aylarca ininin içinde donmadan uyur. Kalp atışları devasa oranda düşer. Vücutlarında yiyecekleri bitmiştir, yağları da tamamen biter. Dışarı çıkamazlar, hareket edemezler ama bahara kadar taptaze su ihtiyaçlarını VÜCUTLARININ İÇİNDEN asla kurumadan ÜRETEBİLİRLER. Biyolojik su santrali nedir?",
    'options': [
      'Topraktan veya mağaradan soludukları gizli yeraltı yüksek sularının damlacıkları',
      'Vücutlarındaki kas kütlelerini çok acımasız formda eritip tamamen proteine kaydırması',
      'Kar yağan inlerin girişindeki buzları yalamadan doğrudan kan akışlarına alabilmeleri',
      'Metabolizmalarının idrarı asla dışarı atmayıp tamamen böbrek üstü bezde geri emmesi',
      'Kanın çok yoğun asitle donmasını önleyen doğal organik zengin şuruplar üretmesiyle',
      'Birbirlerinin tüylerinden yayılan ter sıvılarını gece boyunca soluyup tekrar geri atarak'
    ],
    'correctIndex': 3,
    'insight': "Ayılar idrara (çişe) çıkmaz! Çünkü böbrekleri çalışmayı modifiye eder. Kanda ve idrarda biriken zehirli URE (Üre) maddesi böbrekten mesaneye inmek yerine, tekrar bağırsaklara emilir ve buradaki bakteriler UREYİ tamamen geri dönüştürerek proteinlere ve taptaze SU BİLEŞENİNE çevirir. Kendi atık sularını zehirsiz içme suyuna döndürerek kendi sıvı döngüsünü 6 ay boyunca sağlar.",
  },
  {
    'id': 'DAHI_018',
    'category': 'Düşüncenin Aynası',
    'timeLimitSeconds': 45,
    'scenario': "Dünya savaşı ajanı tren garında vurulacağını anlayınca cebindeki mikro-filmi (Dünyanın geleceği şifresi) gizlemesi gerekir. Çöpe atsa bulunacaktır, tuvalete dökse aranacaktır, istasyon aranmaktadır. Yanında sadece rastgele kör dilenci bir adam ve elinde bir sakızı vardır. Sakızı çöpe filmle atmaz! Adam filmi şok edici bir zeka oyunuyla yok EDEMEDEN SAKLAR. Nasış?",
    'options': [
      'Dilenci kör olduğu için onu ağzının içine direkt olarak sakızın paketine koyarak bırakır yutmaz',
      'Mikrofilmi ceketinin içine astarıyla sokup trenin dış penceresine sakız ile feci sert yapıştırarak',
      'Filmi tamamen ezip toz edip kör adamın avucundaki paralara sürüp sonsuz uzağa dağılmasına',
      'Polise ben buldum diyerek teslim etmek amaçlı polisin kendi çok yakalı cebine çok sinsi atarak',
      'Sakızı mikrofilme sarıp çiğnedikten sonra kör dilencinin metal bozuk para kutusunun dibine atarak',
      'Kendisinin kendi ayakkabısının alt tabanına çiğneyip sinsi ve çok sert ezilmiş şekilde sürtersin'
    ],
    'correctIndex': 4,
    'insight': "Filmi sakızın içine yerleştirip çiğniyor (top haline getiriyor) ve kör adamın Bozuk Para tasının DİBİNE atıveriyor. O kargaşada polisler, kendi can derdindeki çöpü, tuvaleti, duvarı, camı her yeri en ince ayrıntısına kadar ararlar... Koca Alman ordusunun komutanlarının, pislik içindeki fakir kör bir dilencinin sadaka tasına el atıp içindeki çöpleri karıştırma EMPATİSİNE sahip olmadıklarını bilir! Ve film orada güvenle sahibini bekler.",
  },
  {
    'id': 'DAHI_019',
    'category': 'Optik Düşünce Paradoksu',
    'timeLimitSeconds': 30,
    'scenario': "Modern ofisin cam kenarında çalışan patron, devasa gökdelenin o ayna kaplı parlak camlarına vuran güçlü güneş ışığının odasında yangın çıkaracak kadar sıcak bir mercek yansıması (kavurucu ısı odaklaması) yarattığını fark eder. Bina camları dıştan kavisli ve güneş saatlerce o ofise feci vuracaktır. Odayı soğutacak veya güneşlik çekecek perde YOKTUR. Sorunu hiç maliyetsiz 10 saniyede SADECE PENCEREYE BAKARAK NASIL KÖKÜNDEN İPTAL EDER?",
    'options': [
      'Güneşin odaklanma noktalarına tam ayna sistemi kurup ışığı farklı binanın çatısına fırlatır',
      'Pencere camının tam o odaklandığı kavisli dış veya iç bükey yüzeyine çok sağlam bant çeker',
      'Odaklanma aynası etkisini feci bozan camları içeriden hafif bir şekilde yavaşça biraz aralar',
      'Dışarı sarkan görevlilerle binayı tamamen çamur gibi bir madde veya mat jelatin ile kaplar',
      'Camın iç kısmına hortumla bol miktarda püskürtücü kullanarak sabunlu siyah çok köpük sıkar',
      'Güneş saat 15:00\'ı geçtiği için odak noktası masadan kayarak feci tehlikesizce uzaklaşmıştır'
    ],
    'correctIndex': 2,
    'insight': "Camları sadece birkaç santim ARALAMAK (açmak)! Kavisli modern gökdelen camları kapalıyken dev bir 'içbükey ayna veya mercek' görevi görerek dıştaki güneşi odanın tek bir masasına lazer gibi odaklar. Lakin pencereyi (alüminyum çerçevesinden) yavaşça itip menteşesinden çok hafif ARALAR ve AÇISINI BOZARSANIZ, dışbükey odaklanma eylemi saniyesinde tamamen çöker ve lazer yansıması yayılarak yok olur.",
  },
  {
    'id': 'DAHI_020',
    'category': 'Anatomi İllüzyonu',
    'timeLimitSeconds': 35,
    'scenario': "Dünya atletizm olimpiyatlarında koşu rekorları kıran bir atlet yarış sonrasında dinlenirken, kalp atışları saniyede bir vuruyor, terliyor ve solunum yolları açık. Ancak spor hekimleri onu muayene ederken, atletin KALBİNİN TAM OLARAK VÜCUDUNUN SOLUNDA OLMADIĞINI ve SAĞA %100 GEÇMEDİĞİNİ fark ederler. Anatomi mucizesi veya cerrahi hile DEĞİLSE kalp nerede atıyor?",
    'options': [
      'Sağ ile Sol akciğerlerin tam olarak altına göğüs kafesinin alt midesine tamamen çökme sendromu',
      'Yarışma sırasındaki aşırı korkunç depar ritmi yüzünden kasların geçici anatomik sağ organa inmesi',
      'İnsanın Kalbinin aslında göğüs boşluğunun solunda değil, zaten her zaman tam ortasinda olması',
      'Doping testinin aşırı iğneleri yüzünden kas sisteminin kasılıp çok büyük aort damarını yırtması',
      'Eklemlerinin feci esnekliği nedeniyle kaburgalarının onu kalbiyle beraber geriye gizlice döndürmesi',
      'Kalbin aslında sağ ve sol loblarının tamamen devasa akciğerler kadar genişleyip çok yeri sarması'
    ],
    'correctIndex': 2,
    'insight': "Tüm insanların (ve o atletin) kalbi zaten göğüs kafesinde SOLDA DEĞİLDİR, GÖĞSÜN TAM ORTASINDADIR! Göğüs kemiğinin (sternum) tam arkasında, iki akciğerin tam arasına yerleşiktir. Sadece kalbin çok güçlü kan basan sol karıncığı anatomi gereği biraz daha büyük ve sol tarafa dönüktür. Bu yüzden atışlarını hep oradan güçlü bir nabız şeklinde dışarı yansıtır. Filmlerde kurşun kalbe dendiğinde sol memeye ateş edilir ama tıp anatomi bilimi bunu reddeder.",
  }
];
