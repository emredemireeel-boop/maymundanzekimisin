// İleri Seviye Zihin Tuzakları ve Mantık Soruları

final List<Map<String, dynamic>> questionsPart15 = [
  {
    'id': 'INT_015_001',
    'category': 'Mantık ve Matematik',
    'timeLimitSeconds': 45,
    'scenario': 'Aşağıdaki sayı dizisinin bir sonraki sayısı hangisidir?\n5 – 11 – 23 – 47 – 95 – ?',
    'options': [
      '189',
      '190',
      '191',
      '192',
      '193',
      '180'
    ],
    'correctIndex': 2,
    'insight': 'Her sayı bir öncekinden 2 kat alınıp +1 ekleniyor.\n5×2+1=11 → 11×2+1=23 → … → 95×2+1=191',
  },
  {
    'id': 'INT_015_002',
    'category': 'Olasılık',
    'timeLimitSeconds': 60,
    'scenario': 'Bir torbada 7 kırmızı ve 5 mavi bilye var. Rastgele, yerine koymadan 3 bilye çekiyorsunuz. Üçünün de kırmızı olma olasılığı hangisidir?',
    'options': [
      '7/44',
      '35/220',
      '1/5',
      '1/4',
      '7/45',
      '8/44'
    ],
    'correctIndex': 0,
    'insight': 'Kombinasyonla hesaplanır → C(7,3) / C(12,3) = 35/220 = 7/44',
  },
  {
    'id': 'INT_015_003',
    'category': 'Sözel Mantık',
    'timeLimitSeconds': 60,
    'scenario': 'Üç kişi (A, B, C) var. Biri her zaman doğru söyler, diğer ikisi her zaman yalan söyler.\n\nA der: “En az biri yalancıdır.”\nB der: “Hepimiz doğru söylüyoruz.”\nC der: “B yalancıdır.”\n\nKaç kişi doğru söylüyor?',
    'options': [
      '0',
      '1',
      '2',
      '3',
      'Hepsi aynı anda imkânsız',
      'Bilinemez'
    ],
    'correctIndex': 4,
    'insight': 'Her üç durumda da mantıksal çelişki çıkıyor (A doğruysa C yanlış, C doğruysa A yanlış, B doğruysa zaten imkânsız). Dolayısıyla böyle bir durum oluşamaz.',
  },
  {
    'id': 'INT_015_004',
    'category': 'Matematik ve Geometri',
    'timeLimitSeconds': 45,
    'scenario': 'Bir duvar saati tam 4:40’ı gösteriyor. Akrep ile yelkovan arasındaki en küçük açı kaç derecedir?',
    'options': [
      '80',
      '100',
      '110',
      '120',
      '140',
      '60'
    ],
    'correctIndex': 1,
    'insight': '4:40’ta akrep 140°, yelkovan 240° konumunda.\n|240-140| = 100°. En küçük açı 100° (360-100=260 >100).',
  },
  {
    'id': 'INT_015_005',
    'category': 'Sözel Zeka',
    'timeLimitSeconds': 30,
    'scenario': 'Aşağıdaki kelimelerden hangisi diğerlerinden tamamen farklı bir özelliğe sahiptir?',
    'options': [
      'Kayak',
      'Radar',
      'Kabak',
      'Kazak',
      'Kiraz',
      'Aba'
    ],
    'correctIndex': 4,
    'insight': 'Diğer beş kelime palindrom (tersinden aynı okunur). KİRAZ ise tersinden “ZARIK” olur → tamamen farklı.',
  },
  {
    'id': 'INT_015_006',
    'category': 'Geometri ve Görsel Zeka',
    'timeLimitSeconds': 60,
    'scenario': 'Büyük bir küpün bütün yüzleri boyanıyor. Daha sonra küp, 4×4×4 = 64 küçük eşit küpe bölünüyor. Tam olarak bir yüzü boyalı olan küçük küp sayısı kaçtır?',
    'options': [
      '8',
      '16',
      '24',
      '36',
      '48',
      '0'
    ],
    'correctIndex': 2,
    'insight': '4×4×4 küpte sadece bir yüzü boyalı küçük küpler = her büyük yüzeyde (4-2)² = 4 tane × 6 yüzey = 24.',
  },
  {
    'id': 'INT_015_007',
    'category': 'Olasılık',
    'timeLimitSeconds': 45,
    'scenario': 'İki adet altı yüzlü zar aynı anda atılıyor. Zarların üstündeki sayıların çarpımı 12 olan kaç farklı durum vardır?',
    'options': [
      '3',
      '4',
      '5',
      '6',
      '8',
      '9'
    ],
    'correctIndex': 1,
    'insight': 'Çarpım 12 olan geçerli zar çiftleri: (2,6), (3,4), (4,3), (6,2). Başka yok → 4 farklı durum.',
  },
  {
    'id': 'INT_015_008',
    'category': 'Mantık Bulmacası',
    'timeLimitSeconds': 30,
    'scenario': 'Bir adam bir fotoğrafa bakıp şöyle diyor:\n“Bu adamın babası, benim babamın tek oğlunun babasıdır.”\nFotoğraftaki adam kimdir?',
    'options': [
      'Adamın kendisi',
      'Adamın oğlu',
      'Adamın babası',
      'Adamın kardeşi',
      'Adamın amcası',
      'Fotoğrafta kimse yok'
    ],
    'correctIndex': 0,
    'insight': '"Benim babamın tek oğlu" = konuşan kişi (kendisi).\nOnun babası = konuşanın babası.\nDolayısıyla "bu adamın babası = konuşanın babası" → fotoğraftaki adam konuşanın kendisidir. (Kardeş olamaz çünkü "tek oğul" deniyor.)',
  },
  {
    'id': 'INT_015_009',
    'category': 'Fiziksel Mantık',
    'timeLimitSeconds': 40,
    'scenario': 'Kapalı bir sıcak hava balonunun içinde 100 kg kum torbası ve 1 adet kuş var. Kuş, balonun içinde kanat çırparak uçmaya başlıyor. Balonun irtifası ne olur?',
    'options': [
      'Yükselir',
      'Alçalır',
      'Aynı kalır',
      'Önce yükselir sonra alçalır',
      'Balon patlar',
      'Kuşa göre değişir'
    ],
    'correctIndex': 2,
    'insight': 'Kapalı sistem. Kuş kanat çırpsa da kendi ağırlığını balonun içindeki havaya aktarır. Toplam ağırlık değişmez → irtifa aynı kalır.',
  },
  {
    'id': 'INT_015_010',
    'category': 'Matematik ve Olasılık',
    'timeLimitSeconds': 50,
    'scenario': '1’den 100’e kadar numaralandırılmış 100 kart var. Rastgele bir kart çekiliyor. Çekilen kartın numarasının karesinin son rakamı 6 olma olasılığı kaçtır?',
    'options': [
      '1/10',
      '1/5',
      '1/4',
      '3/10',
      '2/5',
      '1/6'
    ],
    'correctIndex': 1,
    'insight': 'n²’nin son rakamı 6 olması için n’in son rakamı 4 veya 6 olmalı.\n1-100 arasında 4 ile biten 10 tane, 6 ile biten 10 tane → toplam 20 kart.\n20/100 = 1/5.',
  }
];
