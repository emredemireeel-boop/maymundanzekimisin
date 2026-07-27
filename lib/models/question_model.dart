/// Soru kategorileri – Radar grafik için
enum QuestionCategory {
  gameTheory,
  cognitiveBias,
  ethicalParadox,
  behavioralEconomics,
  bayesianLogic,
  strategicThinking,
}

extension QuestionCategoryExtension on QuestionCategory {
  String get title {
    switch (this) {
      case QuestionCategory.gameTheory:
        return 'Oyun Teorisi';
      case QuestionCategory.cognitiveBias:
        return 'Bilişsel Yanılgılar';
      case QuestionCategory.ethicalParadox:
        return 'Etik Paradokslar';
      case QuestionCategory.behavioralEconomics:
        return 'Davranışsal Ekonomi';
      case QuestionCategory.bayesianLogic:
        return 'Bayesyen Mantık';
      case QuestionCategory.strategicThinking:
        return 'Stratejik Düşünce';
    }
  }

  String get icon {
    switch (this) {
      case QuestionCategory.gameTheory:
        return '♟️';
      case QuestionCategory.cognitiveBias:
        return '🧠';
      case QuestionCategory.ethicalParadox:
        return '⚖️';
      case QuestionCategory.behavioralEconomics:
        return '📊';
      case QuestionCategory.bayesianLogic:
        return '🎯';
      case QuestionCategory.strategicThinking:
        return '🔮';
    }
  }

  String get color {
    switch (this) {
      case QuestionCategory.gameTheory:
        return '#7C4DFF';
      case QuestionCategory.cognitiveBias:
        return '#FF7043';
      case QuestionCategory.ethicalParadox:
        return '#26A69A';
      case QuestionCategory.bayesianLogic:
        return '#42A5F5';
      case QuestionCategory.behavioralEconomics:
        return '#FFA726';
      case QuestionCategory.strategicThinking:
        return '#AB47BC';
    }
  }
}

/// IQ Seviyesi
enum IQLevel {
  cognitiveWalker, // 0-60
  rationalObserver, // 61-120
  strategicGenius, // 121-170
  mindArchitect, // 171-200
}

extension IQLevelExtension on IQLevel {
  String get title {
    switch (this) {
      case IQLevel.cognitiveWalker:
        return 'Bilişsel Uyurgezer';
      case IQLevel.rationalObserver:
        return 'Rasyonel Gözlemci';
      case IQLevel.strategicGenius:
        return 'Stratejik Deha';
      case IQLevel.mindArchitect:
        return 'Zihin Mimarı';
    }
  }

  String get emoji {
    switch (this) {
      case IQLevel.cognitiveWalker:
        return '😴';
      case IQLevel.rationalObserver:
        return '🧐';
      case IQLevel.strategicGenius:
        return '🧠';
      case IQLevel.mindArchitect:
        return '👁️‍🗨️';
    }
  }

  String get description {
    switch (this) {
      case IQLevel.cognitiveWalker:
        return 'Zihnin henüz uyanmadı. Ama potansiyelin var, sadece biraz daha uyanman gerekiyor.';
      case IQLevel.rationalObserver:
        return 'Olayları görüyorsun ama altındaki katmanları kaçırıyorsun. Derin düşünme zamanı.';
      case IQLevel.strategicGenius:
        return 'Satranç tahtasını görebiliyorsun. Hamlelerini birkaç adım öteyi düşünerek yapıyorsun.';
      case IQLevel.mindArchitect:
        return 'Matriks\'i görebiliyorsun. Bilişsel elit kadrodasın, tebrikler.';
    }
  }

  static IQLevel fromScore(int score) {
    if (score <= 60) return IQLevel.cognitiveWalker;
    if (score <= 120) return IQLevel.rationalObserver;
    if (score <= 170) return IQLevel.strategicGenius;
    return IQLevel.mindArchitect;
  }
}

/// Soru modeli – Senaryo tabanlı, 6 seçenekli
class Question {
  final String id;
  final QuestionCategory category;
  final String scenario;
  final List<String> options;
  final int correctIndex;
  final String insight;
  final int timeLimitSeconds;

  const Question({
    required this.id,
    required this.category,
    required this.scenario,
    required this.options,
    required this.correctIndex,
    required this.insight,
    this.timeLimitSeconds = 45,
  });

  /// Zamana göre puan: hızlı cevap = max puan
  int calculatePoints(int answerTimeSeconds) {
    if (answerTimeSeconds <= 10) return 10;
    if (answerTimeSeconds <= 20) return 8;
    if (answerTimeSeconds <= 30) return 6;
    return 5;
  }

  bool checkAnswer(int selectedIndex) => selectedIndex == correctIndex;

  /// Factory: Map'ten oluştur – soru bazlı değişken süreler
  factory Question.fromMap(Map<String, dynamic> map) {
    final category = _parseCategory(map['category'] as String);
    final explicitTime = map['timeLimitSeconds'] as int?;

    // Kategori bazlı varsayılan süreler
    final defaultTime = _categoryDefaultTime(category);

    return Question(
      id: map['id'] as String,
      category: category,
      scenario: map['scenario'] as String,
      options: List<String>.from(map['options'] as List),
      correctIndex: map['correctIndex'] as int,
      insight: map['insight'] as String,
      timeLimitSeconds: explicitTime ?? defaultTime,
    );
  }

  /// Kategori bazlı varsayılan süre
  static int _categoryDefaultTime(QuestionCategory cat) {
    switch (cat) {
      case QuestionCategory.bayesianLogic:
        return 60; // Hesaplama gerektiren sorular
      case QuestionCategory.ethicalParadox:
        return 55; // Derin düşünme gerektiren
      case QuestionCategory.gameTheory:
        return 50; // Stratejik analiz
      case QuestionCategory.strategicThinking:
        return 45; // Orta seviye
      case QuestionCategory.cognitiveBias:
        return 40; // Sezgisel yanıtlar
      case QuestionCategory.behavioralEconomics:
        return 35; // Hızlı karar verme
    }
  }

  static QuestionCategory _parseCategory(String cat) {
    switch (cat) {
      case 'Oyun Teorisi':
        return QuestionCategory.gameTheory;
      case 'Bilişsel Yanılgılar':
        return QuestionCategory.cognitiveBias;
      case 'Etik Paradokslar':
        return QuestionCategory.ethicalParadox;
      case 'Davranışsal Ekonomi':
        return QuestionCategory.behavioralEconomics;
      case 'Bayesyen Mantık':
        return QuestionCategory.bayesianLogic;
      case 'Stratejik Düşünce':
        return QuestionCategory.strategicThinking;
      default:
        return QuestionCategory.strategicThinking;
    }
  }
}
