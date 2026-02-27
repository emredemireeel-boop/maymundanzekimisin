// Maymundan Zeki Misin? – Part 19: FUN_001 – FUN_025
// Kullanýcýnýn Talebi: Eðlenceli, þaþýrtmacalý, özgün ve zor yanal düþünce sorularý

final List<Map<String, dynamic>> questionsPart19 = [
{
    'id': 'FUN_0061',
    'category': 'Olasýlýk Stratejisi',
    'scenario': 'Bir teknoloji þirketinde A, B ve C adlý üç kýdemli yazýlýmcý tek bir "Baþ Mühendis" kadrosu için yarýþýyor. Kurallar gereði en yüksek performans puanýný alan kiþi bu koltuða oturacaktýr. Ýnsan Kaynaklarý’ndan sýzan kesin bilgilere göre; B’nin puaný en yüksek olan deðildir. Ayrýca C’nin puaný kesinlikle B’den daha yüksektir. A’nýn performans dosyasý ise henüz sisteme girilmemiþtir. Bu verilere göre, A’nýn Baþ Mühendis olma ihtimali nedir?',
    'options': [
      '1/2',
      '1/3',
      '1/6',
      '2/3',
      '1/4',
      'Olasýlýk hesaplanamaz'
    ],
    'correctIndex': 1,
    'insight': 'Tüm sýralama olasýlýklarýný (ABC, ACB, BAC, BCA, CAB, CBA) ele alalým. B birinci olamaz (BAC ve BCA elendi). C, B’den büyük olmalý (ABC elendi). Geriye sadece ACB, CAB ve CBA kalýr. A’nýn en yüksek puaný aldýðý (birinci olduðu) sadece tek bir durum (ACB) kaldýðý için ihtimal 1/3\'tür.'
  },
  {
    'id': 'FUN_0062',
    'category': 'Stratejik Ters Köþe',
    'scenario': 'Gizli bir ajansýn çift taraflý ajaný olduðunuzdan þüpheleniliyor. Þefiniz, masaya iki kapalý zarf koyuyor: Birinde "AKLANDI", diðerinde "TASFÝYE" yazmasý gerekiyor. Ancak þefin size tuzak kurduðunu ve ikisine de "TASFÝYE" yazdýðýný biliyorsunuz. Þefe hile yaptýðýný söylerseniz anýnda suçlu sayýlacaksýnýz. Kurtulmak için ne yaparsýnýz?',
    'options': [
      'Zarflarýn ikisini de ayný anda açýp hileyi kanýtlarým',
      'Þansýmý deneyip zarflardan birini seçip okurum',
      'Bir zarfý seçip içeriðini kimse görmeden imha ederim ve kalan zarfýn açýlmasýný beklerim',
      'Zarflarý açmayý reddedip sessiz kalma hakkýmý kullanýrým',
      'Þefe bir anlaþma teklif edip zarflardan birini deðiþtirmesini isterim',
      'Masadaki zarflarýn yerini çok hýzlýca deðiþtirip þefin kafasýný karýþtýrýrým'
    ],
    'correctIndex': 2,
    'insight': 'Eðer seçtiðiniz zarfý anýnda yok ederseniz, masada kalan diðer zarf mecburen "diðer seçenek" olarak kabul edilir. Kalan zarfta "TASFÝYE" yazdýðýna göre, imha ettiðiniz zarfýn (hükümsüz kalsanýz da) "AKLANDI" olduðu mantýken kabul edilmek zorundadýr.'
  },
  {
    'id': 'FUN_0063',
    'category': 'Sosyal Mantýk / Çýkarým',
    'scenario': 'Bir sistem odasýnda iki üst düzey yazýlýmcý (A ve B) mahsur kalmýþtýr. Çýkýþ için paneldeki þifre ekranýna kendi sýrtlarýndaki çip rengini girmeleri gerekir. Toplamda 3 Mavi, 2 Sarý çip vardýr. Biri A’nýn sýrtýna, biri B’ninkine takýlýr, biri de terminal masasýna býrakýlýr. A, arkadaþý B’nin sýrtýnda MAVÝ, masada ise SARI çip olduðunu görür. B bir süre sessizce düþünür. A bu sessizliði fark edince "Benim çipim Mavi!" diyerek kapýyý açar. A nasýl bu kadar emindir?',
    'options': [
      'Masadaki çip sarý olduðu için kendisininki kesin mavitedir',
      'Arkadaþý B sessiz kaldýðýna göre kendi çipi sarý olamaz',
      'Mavi çiplerin sayýsý daha fazla olduðu için þansýný denemiþtir',
      'Arkadaþý B’nin sýrtýndaki mavi çip ona ipucu vermiþtir',
      'Masadaki ve B’deki çiplerin toplamý 3 etmediði için hesaplamýþtýr',
      'Kendi çipini terminal ekranýndaki yansýmadan görmüþtür'
    ],
    'correctIndex': 1,
    'insight': 'A þöyle düþünür: "Eðer benim çipim Sarý olsaydý, B hem benim sýrtýmdaki sarýyý hem de masadaki sarýyý görecekti. Toplam 2 sarý olduðu için kendi çipinin kesinlikle Mavi olduðunu saniyeler içinde anlayýp söyleyecekti. B sustuðuna göre, bende sarý görmüyor demektir. O halde benimki Mavidir."'
  },
  {
    'id': 'FUN_0064',
    'category': 'Matematiksel Mantýk',
    'scenario': 'Plutos finans panelinde "Döngüsel Sayýlar" adýnda bir güvenlik algoritmasý kullanýlýyor. Bu kurala göre bir sayýnýn; rakamlarýnýn çarpýmý ile rakamlarýnýn toplamý toplandýðýnda, çýkan sonuç sayýnýn kendisine eþit olmalýdýr. Aþaðýdaki iþlem kodlarýndan hangisi bu kurala uyan bir "Güvenli Sayý"dýr?',
    'options': [
      '28',
      '39',
      '45',
      '54',
      '61',
      '72'
    ],
    'correctIndex': 1,
    'insight': 'Bu durumun matematiksel bir sýrrý vardýr: Ýki basamaklý bir sayýya \$10x + y\$ dersek; denklem \$xy + (x + y) = 10x + y\$ olur. Burada \$y\$ deðerleri birbirini götürür ve \$xy + x = 10x\$ kalýr. Denklemi sadeleþtirdiðimizde \$xy = 9x\$ ve buradan \$y = 9\$ sonucuna ulaþýrýz. Yani birler basamaðý 9 olan tüm iki basamaklý sayýlar bu kuralý saðlar.'
  },
  {
    'id': 'FUN_0065',
    'category': 'Sistem Mantýðý',
    'scenario': 'Bir sistemde iki farklý güvenlik protokolü çalýþmaktadýr. "Alfa Protokolü" Pazartesi, Salý ve Çarþamba günleri hatalý veri üretirken; "Beta Protokolü" Perþembe, Cuma ve Cumartesi günleri hatalý veri üretmektedir. Diðer günlerde her ikisi de kusursuz çalýþýr. Bir denetim sýrasýnda þu konuþma geçer:\nAlfa: "Dün hatalý veri üretiyordum."\nBeta: "Ben de."\nBu denetim hangi gün yapýlmýþtýr?',
    'options': [
      'Pazartesi',
      'Çarþamba',
      'Pazar',
      'Perþembe',
      'Cuma',
      'Salý'
    ],
    'correctIndex': 3,
    'insight': 'Perþembe günü; Alfa doðru söyleme günündedir ve dün (Çarþamba) gerçekten hata yaptýðýný dürüstçe söyler. Beta ise o gün (Perþembe) hata yapma günündedir; dün (Çarþamba) aslýnda hatasýz olmasýna raðmen kurallarý gereði bugün yalan söyler ve "dün hata yapýyordum" der. Ýkisinin de bu cümleyi ayný anda kurabileceði tek gün Perþembe’dir.'
  },
  {
    'id': 'FUN_0066',
    'category': 'Dikkat ve Algý',
    'scenario': 'Eski teknolojiye meraklý bir koleksiyoncusunuz. Gece saat tam 20:00’de uyumaya karar veriyorsunuz ve baþucunuzdaki 12 saatlik kadraný olan mekanik kurmalý saatinizi sabah 09:00’da çalacak þekilde ayarlýyorsunuz. Dijital cihazlarýnýzýn hepsi kapalý. Bu durumda alarm çalana kadar kaç saat uyumuþ olursunuz?',
    'options': [
      '13 saat',
      '11 saat',
      '1 saat',
      '9 saat',
      '12 saat',
      'Saat kurulamaz'
    ],
    'correctIndex': 2,
    'insight': 'Mekanik ve analog saatler gece-gündüz (AM/PM) ayrýmý yapmazlar, sadece 12 saatlik bir döngüye sahiptirler. Siz saati akþam 20:00’de kurduðunuzda, saat akrebi ilk kez 9’un üzerine geldiði an (yani sadece 1 saat sonra, 21:00’de) alarm çalacaktýr.'
  },
  {
    'id': 'FUN_0067',
    'category': 'Geometrik Mantýk',
    'scenario': 'Her biri 50 metre yüksekliðinde olan iki direk arasýna 80 metre uzunluðunda bir ip asýlmýþtýr. Ýpin orta noktasý (en alçak kýsmý) yerden tam olarak 10 metre yüksekliktedir. Bu durumda iki direk arasýndaki mesafe kaç metredir?',
    'options': [
      '40 metre',
      '20 metre',
      '10 metre',
      '0 metre',
      '5 metre',
      'Trigonometri olmadan çözülemez'
    ],
    'correctIndex': 3,
    'insight': 'Hesap yapmaya gerek yok! Direkler 50m, ipin en alt noktasý 10m ise, ip 40m aþaðý inmiþ demektir. Ýp toplam 80m olduðuna göre, 40m inip tekrar 40m çýkmýþtýr. Ýpin iki ucu arasýnda hiç yatay mesafe kalmamýþtýr, yani direkler birbirine yapýþýktýr (0 metre).'
  },
  {
    'id': 'FUN_0068',
    'category': 'Algoritmik Düþünme',
    'scenario': 'Bir kaleye girmek isteyen casus, kapýdaki nöbetçiyi izler. Nöbetçi gelen birine "ALTI" der, o kiþi "4" diyerek içeri girer. Diðerine "ON" der, o kiþi "2" diyerek içeri girer. Casus kapýya gider, nöbetçi ona "SEKÝZ" der. Casus ne derse içeri girebilir?',
    'options': [
      '4',
      '16',
      '5',
      '8',
      '2',
      '0'
    ],
    'correctIndex': 2,
    'insight': 'Beyin hemen "yarýya bölme" veya "matematiksel dizi" arar. Ancak þifre kelimenin harf sayýsýdýr! ALTI (4 harf), ON (2 harf). Dolayýsýyla SEKÝZ kelimesi 5 harfli olduðu için doðru cevap 5\'tir.'
  },
  {
    'id': 'FUN_0069',
    'category': 'Dikkat / Paradoks',
    'scenario': 'Büyük bir maratonda koþuyorsunuz. Müthiþ bir atak yaparak, o ana kadar yarýþýn "sonuncusu" olan kiþiyi geride býraktýnýz. Þu anki konumunuz nedir?',
    'options': [
      'Sondan ikinciyim',
      'Sonuncuyum',
      'Birinciyim',
      'Sýralama deðiþmez',
      'Bu durum imkansýzdýr',
      'Grup lideriyim'
    ],
    'correctIndex': 4,
    'insight': 'Dikkat testi! Eðer bir yarýþta birini geçiyorsanýz, geçtiðiniz kiþinin arkasýnda en azýndan SÝZ varsýnýz demektir. Bu durumda geçtiðiniz kiþi "sonuncu" olamaz. Mantýken bir yarýþta "sonuncuyu" geçemezsiniz, çünkü onu geçtiðiniz anda o artýk sonuncu deðildir.'
  },
  {
    'id': 'FUN_0070',
    'category': 'Sistem Mantýðý',
    'scenario': 'Plutos veri merkezinde 1000 adet tamamen boþ "Sunucu Slotu" bulunmaktadýr. Bu veri merkezinin artýk "boþ" olmadýðýný söyleyebilmemiz için içine en az kaç adet sunucu yerleþtirmeniz gerekir?',
    'options': [
      '1000',
      '501',
      '1',
      '100',
      '2',
      'Hiçbiri'
    ],
    'correctIndex': 2,
    'insight': 'Mantýksal bir taným sorusu: Ýçine sadece 1 adet sunucu yerleþtirdiðiniz an, o veri merkezi artýk "boþ" olma özelliðini kaybeder. Beyin genellikle slotlarýn doluluk oranýna veya yarýsýna (501) odaklanýr, ancak "boþ deðil" ifadesi için tek bir veri giriþi yeterlidir.'
  },
  {
    'id': 'FUN_0074',
    'category': 'Operasyonel Mantýk',
    'scenario': 'Acil bir durumda 3 farklý hastaya müdahale etmeniz gerekiyor ancak elinizde sadece 2 çift steril eldiven var. Her hastanýn enfeksiyon riski birbirinden farklýdýr. Kendinizi ve hastalarý çapraz bulaþmadan tamamen koruyarak bu 3 müdahaleyi nasýl yaparsýnýz?',
    'options': [
      'Bir çifti ters çevirip kullanýrým',
      'Eldivenleri dezenfekte edip tekrar kullanýrým',
      'Ýlk iki eldiveni üst üste takar, her hastadan sonra bir katmaný çýkarýrým',
      'Eldivenleri kesip parça parça kullanýrým',
      'Mümkün deðildir, bir hasta feda edilir',
      'Eldiven takmadan hýzlýca müdahale ederim'
    ],
    'correctIndex': 2,
    'insight': 'Çözüm "katmanlama" mantýðýndadýr: Ýki çift eldiveni (A ve B) üst üste takarsýnýz. 1. hastaya AB ile bakarsýnýz. 2. hastaya geçince üstteki B çiftini çýkarýp sadece A ile bakarsýnýz. 3. hastaya geçince çýkardýðýnýz B çiftini "ters çevirerek" A\'nýn üzerine tekrar takarsýnýz. Böylece hiçbir hastanýn dokusu diðerine veya size temas etmez.'
  },
  {
    'id': 'FUN_0075',
    'category': 'Gözlemsel Mantýk',
    'scenario': 'Büyük bir vadide gitar çalýyorsunuz. Karþýdaki dev kayalýklara bir akor vuruyorsunuz ve yankýsýný tam 2 saniye sonra duyuyorsunuz. Ses hýzý yaklaþýk 340 m/s olduðuna göre, karþýdaki kayalýklar sizden kaç metre uzaktadýr?',
    'options': [
      '680 metre',
      '340 metre',
      '170 metre',
      '1360 metre',
      'Yanký süresi mesafeyi vermez',
      'Havanýn nemine göre deðiþir'
    ],
    'correctIndex': 1,
    'insight': 'Klasik bir hesaplama tuzaðý! Sesin size geri dönmesi için kayalýklara "gidip" tekrar "dönmesi" gerekir. Yani 2 saniyelik süre, yolun iki katýdýr. Ses 2 saniyede 680 metre yol alýr, ancak kayalýklar bunun yarýsý kadar (340 metre) uzaðýnýzdadýr.'
  },  
  {
    'id': 'FUN_0076',
    'category': 'Fiziksel Algý',
    'scenario': 'Bir odada 10 kiþi birbirini ve odayý tamamen görecek þekilde duruyor. Odaya bir elma koyuyorsunuz; 9 kiþi elmayý görüyor ama 1 kiþi elmayý kesinlikle göremiyor. Elma tam olarak nerededir?',
    'options': [
      'Odanýn tam köþesindedir',
      'Birinin cebindedir',
      'Görmeyen kiþinin baþýnýn üzerindedir',
      'Iþýðýn vurmadýðý karanlýk noktadadýr',
      'Yerdeki bir deliðin içindedir',
      'Herkesin arkasýndaki bir raf üzerindedir'
    ],
    'correctIndex': 2,
    'insight': 'Kiþi kendi baþýnýn üstünü (ayna olmadan) doðrudan göremez. Diðer 9 kiþi ise odaya hakim olduklarý için elmayý rahatça fark eder.'
  },
  {
    'id': 'FUN_0077',
    'category': 'Vücut Mantýðý',
    'scenario': 'Sað elinizle tutabildiðiniz halde, sol elinizle asla tutamayacaðýnýz, vücudunuzdaki o tek nokta neresidir?',
    'options': [
      'Sað kulaðýnýz',
      'Sol dirseðiniz',
      'Sýrtýnýzýn tam ortasý',
      'Sað omzunuz',
      'Sað avucunuzun içi',
      'Sol topuðunuz'
    ],
    'correctIndex': 1,
    'insight': 'Fiziksel bir kýsýtlama: Sol eliniz, kendi eklemi olan sol dirseði kavrayamaz. Sað elinizle her yeri tutsanýz da sol eliniz için sol dirseðiniz "yasaklý bölge"dir.'
  },
  {
    'id': 'FUN_0078',
    'category': 'Kavramsal Þaþýrtmaca',
    'scenario': 'Bir adam "1960" yýlýnda doðmuþ olmasýna raðmen bugün sadece 25 yaþýndadýr. Kimlikte bir hata yok, biyolojik bir mucize de yok. Bu nasýl mümkün olabilir?',
    'options': [
      'Artýk yýl olan 29 Þubat\'ta doðmuþtur',
      'Doðduðu yer bir hastanenin 1960 numaralý odasýdýr',
      'Adam bir astronottur ve uzayda zaman yavaþlamýþtýr',
      '1960 bir tarih deðil, bir rakým deðeridir',
      'Nüfus cüzdaný geç çýkartýlmýþtýr',
      'Adam aslýnda bir yapay zekadýr'
    ],
    'correctIndex': 1,
    'insight': 'Beyin "1960" ifadesini gördüðü an onu bir takvim yýlý olarak kodlar. Ancak bu sadece bir oda numarasý veya sokak numarasý olabilir. Sayýsal verilerin her zaman "zaman" ifade etmediðini gösteren güzel bir örnek.'
  },
  {
    'id': 'FUN_0079',
    'category': 'Doða Mantýðý',
    'scenario': 'Bir adam nehrin bir kýyýsýnda, köpeði ise karþý kýyýsýndadýr. Adam köpeðini çaðýrýr. Köpek nehri geçer, hiç ýslanmaz, köprü veya tekne kullanmaz. Köpek karþýya nasýl geçmiþtir?',
    'options': [
      'Çok hýzlý koþtuðu için suyun üzerinden sekmiþtir',
      'Nehir kurumuþ bir yataða sahiptir',
      'Nehir donmuþtur ve köpek buzun üzerinden yürümüþtür',
      'Köpek aslýnda uçabilen bir cinstir',
      'Nehir aslýnda çok dardýr, üzerinden atlamýþtýr',
      'Adam köpeði kucaðýna alýp geçirmiþtir'
    ],
    'correctIndex': 2,
    'insight': 'Mevsimsel veri! Nehrin "su" formunda olmasý gerekmez. Kýþ mevsiminde donmuþ bir nehir, fiziksel bir yol gibidir. Beyin genelde nehri hep akýþkan bir sývý olarak hayal eder.'
  },
  {
    'id': 'FUN_0080',
    'category': 'Stratejik Mantýk',
    'scenario': 'Yaþlý bir adam mirasýný iki oðlundan hangisinin atý daha "YAVAÞ" ise ona býrakacaðýný açýklar. Ýki kardeþ atlarýna biner ve bitiþ çizgisine gitmemek için günlerce ovada beklerler. Sonunda bilge bir adama danýþýrlar. Bilge adam onlara sadece iki kelime söyler ve kardeþler atlarýna atladýklarý gibi bitiþ çizgisine doðru dolu dizgin (en hýzlý þekilde) yarýþmaya baþlarlar. Bilge adam ne demiþtir?',
    'options': [
      'Atlarý vurun',
      'Atlarý deðiþtirin',
      'Yarýþý iptal edin',
      'Geri geri gidin',
      'Atlarý besleyin',
      'Mirasý paylaþýn'
    ],
    'correctIndex': 1,
    'insight': 'Kardeþler atlarý deðiþtirdiðinde, artýk bindikleri at rakibinin atýdýr. Kendi atlarýnýn "en son" gelmesini saðlamak için, altlarýndaki (rakibin) atý en hýzlý þekilde bitiþe ulaþtýrmaya çalýþýrlar. Sadece iki kelimelik bir aksiyon, tüm motivasyonu tersine çevirir.'
  },
  {
    'id': 'FUN_0082',
    'category': 'Matematiksel Algý',
    'scenario': 'Kalabalýk bir ailede; Ali "Benim erkek kardeþlerimin sayýsý, kýz kardeþlerimin sayýsýna eþit" diyor. Ali\'nin kýz kardeþi Ayþe ise "Benim erkek kardeþlerimin sayýsý, kýz kardeþlerimin sayýsýnýn tam iki katý" diyor. Bu ailede toplam kaç çocuk vardýr?',
    'options': [
      '5',
      '6',
      '7',
      '8',
      '9',
      '10'
    ],
    'correctIndex': 2,
    'insight': 'Denklem þöyledir: Ali\'nin kendisine bakarsak, kendisi hariç kardeþleri eþitse ailede \$n\$ kýz, \$n+1\$ erkek vardýr. Ayþe için ise durum: \$n+1\$ erkek kardeþ, \$n-1\$ kýz kardeþin iki katýdýr. \$n+1 = 2(n-1)\$ denkleminden \$n=3\$ çýkar. 3 kýz + 4 erkek = 7 çocuk.'
  },
  {
    'id': 'FUN_0083',
    'category': 'Üst Düzey Mantýk',
    'scenario': 'Bir yol ayrýmýndasýnýz. Biri ölüme, diðeri yaþama gider. Yolun baþýnda iki ikiz kardeþ duruyor. Biri her zaman DOÐRU, diðeri her zaman YALAN söylüyor. Hangisinin dürüst olduðunu bilmiyorsunuz. Yaþam yolunu bulmak için kardeþlerden sadece birine, sadece BÝR soru sorma hakkýnýz var. Ne sorarsýnýz?',
    'options': [
      'Yaþam yolu hangisi?',
      'Diðer kardeþe sorsaydým yaþam yolu hangisi derdi?',
      'Sen dürüst müsün?',
      'Kardeþin yalan söyler mi?',
      'Doðru yol saðda mý?',
      'Hangi yoldan geldin?'
    ],
    'correctIndex': 1,
    'insight': 'Bu soru bir "Mantýksal Deðil (NOT)" kapýsýdýr. Dürüst olana sorsan, yalancýnýn yanlýþ yolu göstereceðini bildiði için sana YANLIÞ yolu söyler. Yalancýya sorsan, dürüstün doðru yolu söyleyeceðini bildiði için sana yine YANLIÞ yolu söyler. Ýkisi de ayný (yanlýþ) yolu göstereceði için, sen diðer yolu seçerek kurtulursun.'
  },
  {
    'id': 'FUN_0084',
    'category': 'Felsefi Mantýk',
    'scenario': 'Acýmasýz bir gardiyan, bir köpriden geçmek isteyenleri sorgular. Kural þudur: Bir cümle kuracaksýnýz. Eðer cümleniz DOÐRU ise asýlacaksýnýz, eðer YALAN ise kafanýz kesilecek. Gardiyaný çaresiz býrakýp köprüden güvenle geçmek için ne söylemelisiniz?',
    'options': [
      'Ben yalan söylüyorum.',
      'Beni birazdan kafamý keserek öldüreceksiniz.',
      'Siz dürüst bir insansýnýz.',
      'Bugün hava çok güzel.',
      'Beni asmayacaksýnýz.',
      'Sessiz kalmayý tercih ediyorum.'
    ],
    'correctIndex': 1,
    'insight': 'Bu bir "Yalancý Paradoksu"dur. Eðer gardiyan sizi asarsa, cümleniz "Yalan" olmuþ olur ama yalan söyleyeni asmamasý (kafasýný kesmesi) gerekiyordu. Eðer kafanýzý keserse, cümleniz "Doðru" olmuþ olur ama doðru söyleyeni kesmemesi (asmasý) gerekiyordu. Gardiyan hiçbir kuralý uygulayamayacaðý için sizi serbest býrakmak zorunda kalýr.'
  },
  {
    'id': 'FUN_0085',
    'category': 'Yanal Düþünme',
    'scenario': 'Eski bir kralýn bir gözü kör ve bir bacaðý topaldýr (savaþta kaybetmiþtir). Kral, tüm ressamlardan görkemli bir portresini yapmalarýný ister. Ancak bir kuralý vardýr: "Yalan söylemeyeceksiniz (yani beni saðlam çizmeyeceksiniz) ama beni çirkin veya aciz de göstermeyeceksiniz." Ressam kralý nasýl çizmelidir?',
    'options': [
      'Kralý arkasý dönük þekilde çizer.',
      'Kralý bir perdenin arkasýnda gölge olarak çizer.',
      'Kralý at üzerinde, profilden (saðlam tarafý görünecek þekilde) bir avcý gibi niþan alýrken çizer.',
      'Sadece kralýn yüzünün saðlam kýsmýný yakýndan çizer.',
      'Kralý tahtýnda otururken ama dizlerine bir örtü serili þekilde çizer.',
      'Kralýn kusurlarýný altýn kaplama protezlerle çizer.'
    ],
    'correctIndex': 2,
    'insight': 'Zekice bir perspektif kullanýmý: Kral at üzerindeyken topal bacaðý diðer tarafta kalýr; niþan alýrken ise bir gözünü kapatmasý (kör gözü) son derece doðal ve kahramanca görünür. Gerçekten taviz vermeden kusuru bir yeteneðe dönüþtürür.'
  },
  {
    'id': 'FUN_0086',
    'category': 'Fiziksel Mantýk',
    'scenario': 'Küçük bir yapay havuzun içinde bir sandalýn üzerindesiniz. Sandalýn içinde de çok aðýr, devasa bir kaya parçasý var. Kayayý kucaðýnýza alýp havuzun içine býrakýyorsunuz (kaya dibe batýyor). Havuzdaki su seviyesi nasýl deðiþir?',
    'options': [
      'Su seviyesi yükselir.',
      'Su seviyesi düþer.',
      'Su seviyesi deðiþmez.',
      'Önce yükselir, sonra eski haline döner.',
      'Kayanýn hacmine göre deðiþir.',
      'Sandalýn aðýrlýðýna göre deðiþir.'
    ],
    'correctIndex': 1,
    'insight': 'Kaya sandalda dururken, kendi "AÐIRLIÐI" kadar suyu yerinden oynatýr (çünkü sandal batmamak için o kadar su iter). Ancak kaya suya atýldýðýnda sadece kendi "HACMÝ" kadar suyu yerinden oynatýr. Kayanýn yoðunluðu sudan fazla olduðu için (battýðý için), aðýrlýðýna oranla hacmi daha küçüktür. Bu yüzden su seviyesi düþer!'
  },
  {
    'id': 'FUN_0087',
    'category': 'Biliþsel Haritalama',
    'scenario': 'Bir adam bir duvardaki portreye bakarak þöyle der: "Benim erkek veya kýz kardeþim yok. Fakat bu gördüðüm adamýn babasý, babamýn oðludur." Duvardaki portre kime aittir?',
    'options': [
      'Kendi portresidir.',
      'Babasýnýn portresidir.',
      'Oðlunun portresidir.',
      'Torununun portresidir.',
      'Amcasýnýn portresidir.',
      'Yeðeninin portresidir.'
    ],
    'correctIndex': 2,
    'insight': 'Adým adým çözelim: "Babamýn oðlu" kimdir? (Kardeþi olmadýðýna göre kendisidir). Cümleyi tekrar okuyalým: "Bu adamýn babasý, BENÝM." Eðer resimdeki adamýn babasý "Ben" isem, resimdeki adam benim OÐLUMDUR.'
  },
  {
    'id': 'FUN_0088',
    'category': 'Matematiksel Mantýk',
    'scenario': 'Bir araç A noktasýndan B noktasýna saatte tam 30 km hýzla gidiyor. Bu aracýn gidiþ-dönüþ tüm yolculuk boyunca ortalama hýzýnýn saatte tam 60 km olmasý için, B noktasýndan A noktasýna saatte kaç km hýzla dönmesi gerekir?',
    'options': [
      '90 km/sa',
      '120 km/sa',
      '180 km/sa',
      'Ýmkansýzdýr, dönmesine gerek yoktur',
      '60 km/sa',
      'Hýzýný her dakika iki katýna çýkarmalýdýr'
    ],
    'correctIndex': 3,
    'insight': 'Fiziksel bir imkansýzlýk! Ortalama hýzýn 60 km/sa olmasý için, aracýn tüm yolu (gidiþ+dönüþ) 30 km/sa hýzla sadece GÝTTÝÐÝ sürede tamamlamýþ olmasý gerekir. Yani dönüþ için hiç "zamaný" kalmamýþtýr. Iþýk hýzýnda bile dönse ortalama hýz 60\'a asla ulaþamaz. Beyin genelde \$(30+90)/2 = 60\$ yanýlgýsýna düþer.'
  },
  {
    'id': 'FUN_0089',
    'category': 'Stratejik Analiz',
    'scenario': 'Bir antikacýda 40 kg aðýrlýðýnda tek parça bir taþ vardý. Taþ kazayla 4 parçaya bölündü. Ancak bu 4 parça o kadar özel aðýrlýklara sahip ki; iki kefeli bir terazi kullanarak bu parçalarla 1 kg\'dan 40 kg\'a kadar olan BÜTÜN tam sayý aðýrlýklarý ölçebiliyorsunuz. Bu 4 parçanýn aðýrlýklarý nedir?',
    'options': [
      '10, 10, 10, 10',
      '1, 2, 4, 33',
      '1, 3, 9, 27',
      '5, 10, 10, 15',
      '1, 10, 14, 15',
      '8, 10, 10, 12'
    ],
    'correctIndex': 2,
    'insight': 'Bu, 3’ün kuvvetleri kuralýdýr (\$3^0, 3^1, 3^2, 3^3\$). Ýki kefeli terazide aðýrlýklarý birbirine ekleyebilir veya birini diðer kefeye koyarak (çýkartma yaparak) farký bulabilirsiniz. Örneðin 2 kg ölçmek için bir kefeye 3, diðerine 1 koyarsýnýz. Bu 4 sayý ile 1\'den 40\'a kadar her kombinasyon yapýlabilir.'
  },
  {
    'id': 'FUN_0090',
    'category': 'Temporal (Zamansal) Mantýk',
    'scenario': 'Elinizde iki adet fitil (ip) var. Her bir fitilin tamamen yanýp bitmesi tam 60 dakika sürüyor. Ancak fitiller homojen deðil; yani bazý kýsýmlarý hýzlý, bazý kýsýmlarý yavaþ yanabiliyor (yarýsý 30 dakikada yanmayabilir). Sadece bir çakmak kullanarak bu iki fitille tam olarak 45 dakikayý nasýl ölçersiniz?',
    'options': [
      'Fitillerden birini dörtte üç boyundan keserim',
      'Birini iki ucundan, diðerini tek ucundan ayný anda yakarým',
      'Ýkisini de ayný anda yakýp birinin sönmesini beklerim',
      'Fitilleri birbirine baðlayýp orta noktadan yakarým',
      'Birini yakýp bitince diðerini ikiye bölüp yakarým',
      'Bu fitillerle hassas ölçüm yapýlamaz'
    ],
    'correctIndex': 1,
    'insight': 'Müthiþ bir mantýk: 1. fitili iki ucundan, 2. fitili tek ucundan yakarsýnýz. Ýki ucu yanan fitil tam 30 dakikada biter. O an 2. fitilin de 30 dakikalýk kýsmý yanmýþtýr. Hemen 2. fitilin diðer ucunu da yakarsanýz, kalan 30 dakikalýk kýsým 15 dakikada biter. Toplam = 30 + 15 = 45 dakika.'
  },
  {
    'id': 'FUN_0091',
    'category': 'Fiziksel Sezgi',
    'scenario': 'Bir uçak rüzgarsýz bir havada A þehrinden B þehrine gidip geri dönüyor. Baþka bir gün, A\'dan B\'ye doðru sürekli ve sabit hýzla esen bir rüzgar varken ayný yolculuðu yapýyor. Rüzgarlý gündeki toplam gidiþ-dönüþ süresi, rüzgarsýz güne göre nasýl deðiþir?',
    'options': [
      'Süre kýsalýr (Rüzgar bir yönde hýzlandýrýr)',
      'Süre uzar (Rüzgarýn geciktirmesi, hýzlandýrmasýndan daha etkilidir)',
      'Süre ayný kalýr (Giderken kazanýlan zaman dönerken kaybedilir)',
      'Uçaðýn motor gücüne göre kýsalabilir veya uzayabilir',
      'Sadece rüzgar hýzý uçak hýzýndan fazlaysa deðiþir',
      'Sadece kalkýþ yönüne baðlý olarak deðiþir'
    ],
    'correctIndex': 1,
    'insight': 'Havacýlýk paradoksu: Rüzgar uçaðý yavaþlattýðýnda, uçaðýn o yolda (rüzgara karþý) geçirdiði süre uzar. Rüzgar arkadan estiðinde kazandýðý "zaman", karþýdan estiðinde kaybettiði "zamaný" asla telafi edemez. Çünkü yavaþ gidilen yolda daha fazla vakit harcanýr, rüzgarýn olumsuz etkisi daha uzun süre uçaða etki eder.'
  },
  {
    'id': 'FUN_0092',
    'category': 'Görsel Algý / Ters Köþe',
    'scenario': 'Kilitli bir odada, masanýn üzerinde duran 53 adet "Bisiklet" (Bicycle) ve yanýnda ölü bir adam bulunuyor. Odada baþka hiçbir eþya, iz veya ipucu yok. Bu adam neden ölmüþ olabilir?',
    'options': [
      'Bisikletlerin altýnda kalarak ezilmiþtir',
      'Aþýrý egzersizden kalp krizi geçirmiþtir',
      'Oyun sýrasýnda hile yaptýðý için vurulmuþtur',
      'Havasýzlýktan boðulmuþtur',
      'Bisiklet kazasý yapmýþtýr',
      'Zehirlenmiþtir'
    ],
    'correctIndex': 2,
    'insight': 'Ters köþe noktasý þudur: "Bicycle" dünyanýn en ünlü oyun kaðýdý markasýdýr. Bir destede 52 kaðýt olur. Eðer masada 53 tane "Bicycle" varsa, bu adam hile yapmýþ (desteye fazladan kart atmýþ) demektir. "Bisiklet" kelimesi burada bir nesneyi deðil, oyun kartlarýný temsil eder.'
  },
  {
    'id': 'FUN_0093',
    'category': 'Hýz ve Mesafe',
    'scenario': 'Ankara\'dan Ýstanbul\'a saatte 100 km hýzla bir tren kalkýyor. Ayný anda Ýstanbul\'dan Ankara\'ya saatte 150 km hýzla baþka bir tren kalkýyor. Bu iki tren karþýlaþtýklarý o tek saniyede, hangisi Ankara\'ya daha yakýndýr?',
    'options': [
      'Ankara\'dan kalkan tren',
      'Ýstanbul\'dan kalkan tren',
      'Hýzlý olan tren',
      'Her ikisi de eþit mesafededir',
      'Rüzgarýn yönüne göre deðiþir',
      'Raylarýn uzunluðuna baðlýdýr'
    ],
    'correctIndex': 3,
    'insight': 'Harika bir dikkat testi! Ýki tren karþýlaþtýklarý anda ayný noktadadýrlar. Dolayýsýyla her ikisinin de Ankara\'ya (veya herhangi bir þehre) olan uzaklýðý o an için tamamen eþittir. Hýz verileri beyni matematiksel bir tuzaða çekmek için verilmiþtir.'
  },
  {
    'id': 'FUN_0094',
    'category': 'Matematiksel Mantýk',
    'scenario': 'Bir müþteri 20 TL\'lik bir ürün alýr ve 100 TL verir. Esnafta bozuk yoktur, yandaki komþusuna gider ve 100 TL\'yi bozdurur. Müþteriye 80 TL para üstünü ve ürünü verir. Az sonra komþu gelir ve "Bu 100 TL sahte!" diyerek parayý iade eder. Esnaf, komþusuna 100 TL gerçek para verir. Esnafýn toplam zararý ne kadardýr?',
    'options': [
      '200 TL',
      '180 TL',
      '120 TL',
      '100 TL',
      '80 TL',
      '20 TL'
    ],
    'correctIndex': 3,
    'insight': 'Kafa karýþtýrýcýdýr ama cevap net: 100 TL. Esnaf komþusundan aldýðý 100 TL\'nin 80\'ini müþteriye verdi, 20\'si kendinde kaldý. Sonra komþusuna kendi cebinden 100 TL verdi. Sonuçta esnafýn cebinden çýkan; müþteriye giden 80 TL nakit ve 20 TL\'lik üründür. Komþuyla olan alýþveriþi nötrdür (al-ver).'
  },
  {
    'id': 'FUN_0096',
    'category': 'Sözel Mantýk',
    'scenario': 'Öyle bir yer hayal edin ki; orada "Dün" her zaman "Yarýn"dan sonra gelir. "Cumartesi" ise "Cuma"dan çok daha öncedir. Hatta "Gelecek" bile "Geçmiþ"in gerisindedir. Bu gizemli yer neresidir?',
    'options': [
      'Paralel bir evren',
      'Bir sözlük',
      'Bir rüya alemi',
      'Karadeliklerin içi',
      'Geriye doðru akan bir nehir',
      'Bozuk bir saat'
    ],
    'correctIndex': 1,
    'insight': 'Cevap bir sözlüktür! Sözlükte kelimeler alfabetik sýraya göre dizilir. "D" harfi "Y"den sonra gelmez ama sözlükte "Dün" kelimesi, "Yarýn"dan çok daha önce yer alýr. (Not: Türkçe sözlükte D-Y, C-C, G-G sýralamasýna göre bu mantýk kusursuz iþler).'
  },
  {
    'id': 'FUN_0097',
    'category': 'Mekansal Algý',
    'scenario': 'Önünüzde bir engel var. Ne üzerinden atlayabiliyorsunuz, ne altýndan geçebiliyorsunuz, ne de yanýndan dolaþabiliyorsunuz. Engel tamamen aþýlmaz görünüyor. Ancak siz hiçbir alet kullanmadan, sadece bir adým atarak bu engeli geçiyorsunuz. Bu engel nedir?',
    'options': [
      'Görünmez bir duvar',
      'Bir gölge',
      'Kendi eþiðiniz (kapý eþiði)',
      'Bir çizgi (yerdeki bir çizgi)',
      'Bir ayna',
      'Bir cam bölme'
    ],
    'correctIndex': 3,
    'insight': 'Mantýk basit ama etkili: Yere çizilmiþ bir çizginin (veya bir sýnýrýn) altýndan geçemez, üzerinden atlayamaz (çünkü hacmi yoktur) veya yanýndan dolaþamazsýnýz (çünkü sonsuz bir düzlem gibi düþünülür). Ancak sadece bir adým atarak üzerinden geçip "öbür tarafa" geçebilirsiniz.'
  },
  {
    'id': 'FUN_0098',
    'category': 'Sosyal Mantýk',
    'scenario': 'Bir adam elindeki fotoðrafa bakarak þunlarý söyler: "Benim ne erkek ne de kýz kardeþim var (tek çocuðum). Ama bu fotoðraftaki kiþinin babasý, benim babamýn oðludur." Adam fotoðrafta kime bakmaktadýr?',
    'options': [
      'Kendi babasýna',
      'Kendi oðluna',
      'Kendi çocukluðuna',
      'Yeðenine',
      'Amcasýna',
      'Torununa'
    ],
    'correctIndex': 1,
    'insight': 'Kilit nokta "Babamýn oðlu" ifadesidir. Adam tek çocuk olduðu için "Babamýn oðlu" bizzat kendisidir. Cümleyi buna göre sadeleþtirirsek: "Fotoðraftaki kiþinin babasý BENÝM." Eðer resimdeki kiþinin babasý o adamsa, resimdeki de adamýn oðludur.'
  },
  {
    'id': 'FUN_0099',
    'category': 'Saf Mantýk',
    'scenario': 'Bir insanýn, o anki durumuyla ilgili söyleyebileceði tek bir kelime vardýr ki, o kelime söylendiði anda otomatik olarak "yalan" haline gelir. Bu kelime/durum nedir?',
    'options': [
      'Dürüstüm',
      'Yalan söylüyorum',
      'Uyuyorum',
      'Ölüyüm',
      'Sessizim',
      'Unuttum'
    ],
    'correctIndex': 2,
    'insight': 'Eðer bir kiþi "Uyuyorum" diyebiliyorsa, o kiþi uyanýktýr. Dolayýsýyla bu kelimeyi telaffuz ettiði anda durumun kendisi (uyku hali) ortadan kalktýðý için beyan otomatik olarak yalan olur. "Sessizim" de benzerdir ama uyku daha temel bir biyolojik paradokstur.'
  },
  {
    'id': 'FUN_0100',
    'category': 'Zamanlama Mantýðý',
    'scenario': 'Ýki adam bir bara girer ve ikisi de ayný zehirli içkiden (bol buzlu viski) sipariþ eder. Birinci adam içkisini 5 saniyede bitirip masadan kalkar. Ýkinci adam ise içkisini keyif yaparak yavaþ yavaþ içer. Bir süre sonra yavaþ içen adam ölür, hýzlý içen adam ise sapasaðlamdýr. Her iki içki de ayný oranda zehirli olduðuna göre hýzlý içen adam nasýl kurtulmuþtur?',
    'options': [
      'Hýzlý içtiði için panzehir etkisi yapmýþtýr',
      'Vücudu zehre karþý baðýþýklýk kazanmýþtýr',
      'Zehir aslýnda buzlarýn içindedir',
      'Ýkinci adamýn bardaðýna sonradan zehir eklenmiþtir',
      'Hýzlý içen adam gizlice kusmuþtur',
      'Alkol zehrin etkisini nötralize etmiþtir'
    ],
    'correctIndex': 2,
    'insight': 'Müthiþ bir fiziksel mantýk! Zehir içkinin kendisinde deðil, buzlarýn içindedir. Hýzlý içen adam buzlar erimeden içkisini bitirdiði için zehir suya karýþmamýþtýr. Yavaþ içen adam ise buzlarýn erimesine izin verdiði için zehirli suyu içmiþ olur.'
  },
  {
    'id': 'FUN_0101',
    'category': 'Stratejik Davranýþ',
    'scenario': 'Kýsýtlý bir bölgeye giden bir köprünün baþýnda bir nöbetçi durmaktadýr. Köprüyü geçmek tam 5 dakika sürmektedir. Nöbetçi her 4 dakikada bir kulübesinden dýþarý çýkýp köprüye bakar ve üzerinde birini görürse onu geldiði yöne geri gönderir. Bir adamýn bu köprüyü geçmesi gerekiyor ve saklanacak hiçbir yer yok. Adam köprüyü nasýl geçebilir?',
    'options': [
      'Köprünün altýndan tutunarak ilerler',
      'Nöbetçiye rüþvet teklif eder',
      'Nöbetçi çýkýnca 4 dakika yürür, o içeri girince geri kalan yolu koþar',
      '3 dakika yürüdükten sonra arkasýný döner ve geldiði yöne doðru yürümeye baþlar',
      'Nöbetçinin uyumasýný bekler',
      'Çok hýzlý koþarak 4 dakikada bitirmeye çalýþýr'
    ],
    'correctIndex': 3,
    'insight': 'Psikolojik bir yanýltma! Adam 3 dakika boyunca ileri doðru yürür, nöbetçinin çýkmasýna az kala arkasýný döner ve baþlangýç noktasýna doðru yürüyormuþ gibi yapar. Nöbetçi dýþarý çýktýðýnda adamý köprüye "girmeye çalýþan" biri deðil, "karþý taraftan gelip buraya girmeye çalýþan" biri sanýr ve kural gereði onu geldiði yöne (yani adamýn gitmek istediði asýl yöne) geri gönderir.'
  },
  {
    'id': 'FUN_0102',
    'category': 'Karar Mekanizmasý',
    'scenario': 'Bir kral, bir bilgeye "Benden ne dilersen dile, kabul edeceðim. Ancak bir þartým var: Sen ne istersen, en büyük düþmanýna tam iki katýný vereceðim" der. Bilge adam biraz düþünür ve öyle bir þey diler ki; hem dileði kabul olur hem de düþmaný periþan olur. Bilge ne dilemiþtir?',
    'options': [
      'Bana bir ton altýn ver',
      'Düþmanýmýn tüm mallarýný bana ver',
      'Benim bir gözümü çýkar',
      'Beni ülkenin yarýsýna kral yap',
      'Düþmanýmý hapse at',
      'Bana ölümsüzlük ver'
    ],
    'correctIndex': 2,
    'insight': 'Stratejik fedakarlýk! Bilge adam "Benim bir gözümü çýkar" dediðinde, kralýn kuralý gereði düþmanýnýn "iki gözü" birden çýkarýlýr. Bilge tek gözüyle yaþamaya devam edebilirken, düþmaný tamamen kör olur. Haset ve rekabet üzerine kurulu sistemleri kilitleyen karanlýk ama kusursuz bir mantýktýr.'
  },
  {
    'id': 'FUN_0103',
    'category': 'Algýsal Engel',
    'scenario': 'Bir gece tüm þehirde elektrikler kesilir. Bir adam odasýnda oturmaktadýr; lamba yok, mum yok, ay ýþýðý yok, fener yok. Oda zifiri karanlýktýr. Buna raðmen adam elindeki kitabý hiçbir zorluk çekmeden akýcý bir þekilde okumaya devam eder. Bu nasýl mümkün olabilir?',
    'options': [
      'Gözleri karanlýða çok iyi alýþmýþtýr',
      'Kitap fosforlu harflerle yazýlmýþtýr',
      'Adam aslýnda bir yapay zekadýr',
      'Adam kördür ve Braille alfabesiyle okuyordur',
      'Adam rüya görmektedir',
      'Güneþ gözlüðü takmaktadýr'
    ],
    'correctIndex': 3,
    'insight': 'Zihinsel kör nokta! Okuma eylemini sadece "gözle" yapýlan bir eylem olarak kodladýðýmýz için ýþýða ihtiyaç duyarýz. Ancak görme engelli bir birey için "okumak" dokunma duyusuna (Braille/Kabartma alfabe) dayalýdýr ve ýþýða ihtiyaç duymaz.'
  },
  {
    'id': 'FUN_0104',
    'category': 'Temporal Mantýk',
    'scenario': 'Aralarýnda sadece birkaç dakika farkla doðan iki öz kardeþten; resmi kayýtlara göre küçük olaný, büyük olanýndan tam 2 gün sonra doðmuþ gibi görünmektedir. Anneleri aynýdýr, hastane kayýtlarý doðrudur ve herhangi bir teknik hata yoktur. Bu durum nasýl mümkün olabilir?',
    'options': [
      'Biri kýþ, diðeri yaz saatine geçiþte doðmuþtur',
      'Doðumlar uluslararasý tarih deðiþtirme çizgisini geçen bir gemide olmuþtur',
      'Biri 31 Aralýk’ta, diðeri 1 Ocak’ta doðmuþtur',
      'Anneleri iki farklý ülkede doðum yapmýþtýr',
      'Yapay bir zaman dondurma iþlemi uygulanmýþtýr',
      'Biri artýk yýl olan 29 Þubat\'ta doðmuþtur'
    ],
    'correctIndex': 1,
    'insight': 'Eðer bir gemi Batý’dan Doðu’ya doðru Tarih Deðiþtirme Çizgisi’ni tam o an geçiyorsa; ilk çocuk çizginin batýsýnda (örneðin Cumartesi gecesi) doðarken, ikinci çocuk çizginin doðusunda (Cuma gecesi) doðabilir. Ancak gemi ters yöne gidiyorsa, aradaki dakika farký bir anda resmi kayýtlarda 2 güne kadar çýkabilir. Bu, zamanýn akýþýnýn deðil, "resmi zamanýn" coðrafi konumla nasýl manipüle edildiðini gösterir.'
  },
  {
    'id': 'FUN_0105',
    'category': 'Fiziksel Algý',
    'scenario': 'Bir geminin ambarý tamamen doludur ve gemi batma sýnýrýna çok yakýn bir derinlikte yüzmektedir. Ambarýn içinden bir miktar yük (örneðin demir bloklar) çýkarýlýp denize atýlmasýna raðmen, gemi yükselmek yerine daha hýzlý bir þekilde batmaya baþlar. Hiçbir sýzýntý veya delik yoktur. Bu nasýl mümkün olabilir?',
    'options': [
      'Geminin dengesi bozulduðu için yan yatmýþtýr',
      'Atýlan yükler geminin altýna çarpmýþtýr',
      'Yükler atýldýðý anda deniz seviyesi yükselmiþtir',
      'Gemi aslýnda bir buzdaðýna çarpmýþtýr',
      'Gemi bir "Vakum" odasý içinde bulunmaktadýr',
      'Gemi batmakta olan bir kum havuzundadýr'
    ],
    'correctIndex': 0,
    'insight': 'Bu bir denge (stabilite) meselesidir. Geminin alt kýsmýndaki (safra) aðýrlýklarý çýkarýrsanýz, geminin aðýrlýk merkezi su seviyesinin çok üstüne çýkar. Gemi toplamda "hafiflemiþ" olsa da, denge noktasýný kaybettiði için alabora olur (yan yatar) ve su alarak batar. Yani bazen hafiflemek, hayatta kalmaya yetmez; denge (fiziksel ve mental) daha önemlidir.'
  },
  {
    'id': 'FUN_0106',
    'category': 'Gözlemsel Mantýk',
    'scenario': 'Onu ne kadar çok alýrsanýz, geride o kadar çok býrakýrsýnýz. Bahsedilen bu "þey" nedir?',
    'options': [
      'Zaman',
      'Nefes',
      'Adým (Ayak izi)',
      'Bilgi',
      'Para',
      'Hata'
    ],
    'correctIndex': 2,
    'insight': 'Bu bir "eylem-sonuç" paradoksudur. Siz "adým attýkça" (yani adýmlarý kendinize aldýkça), arkanýzda o kadar çok "ayak izi" býrakýrsýnýz. Beyin genellikle soyut kavramlara (zaman, bilgi) odaklanýrken, en temel fiziksel eylemin yarattýðý boþluðu (izi) gözden kaçýrýr.'
  },
  {
    'id': 'FUN_0107',
    'category': 'Saf Mantýk',
    'scenario': 'Öyle kýrýlgan bir þeydir ki; ismini telaffuz ettiðiniz anda onu bozmuþ ve yok etmiþ olursunuz. Bahsedilen nedir?',
    'options': [
      'Sýr',
      'Cam',
      'Güven',
      'Sessizlik',
      'Huzur',
      'Gelecek'
    ],
    'correctIndex': 3,
    'insight': 'Sessizlik, tanýmý gereði sesin yokluðudur. "Sessizlik" kelimesini söylediðiniz anda bir ses dalgasý yaratmýþ olursunuz ve böylece o anki sessizliði bozarsýnýz. Bir þeyin varlýðýný sadece ondan bahsetmeyerek koruyabildiðiniz tek durumdur.'
  }
];

