import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zihin_tuzaklari/models/question_model.dart';
import 'package:zihin_tuzaklari/services/sound_service.dart';

/// Geçmiş oyun sonucu
class GameResult {
  final int score;
  final int correct;
  final int wrong;
  final int total;
  final String level;
  final DateTime date;

  GameResult({
    required this.score,
    required this.correct,
    required this.wrong,
    required this.total,
    required this.level,
    required this.date,
  });

  Map<String, dynamic> toMap() => {
    'score': score,
    'correct': correct,
    'wrong': wrong,
    'total': total,
    'level': level,
    'date': date.toIso8601String(),
  };

  factory GameResult.fromMap(Map<String, dynamic> m) => GameResult(
    score: m['score'] as int,
    correct: m['correct'] as int,
    wrong: m['wrong'] as int,
    total: m['total'] as int,
    level: m['level'] as String,
    date: DateTime.parse(m['date'] as String),
  );
}

class GameState extends ChangeNotifier {
  // ── Oyun Durumu ──
  List<Question> _questions = [];
  int _currentIndex = 0;
  int _totalScore = 0;
  int _correctCount = 0;
  int _wrongCount = 0;
  bool _isAnswered = false;
  bool _isCorrect = false;
  int _selectedIndex = -1;
  bool _isGameActive = false;
  bool _hasSavedGame = false;
  bool _magicSquareShown = false;

  // ── Zamanlayıcı ──
  Timer? _timer;
  int _timeRemaining = 45;
  int _answerTime = 0;
  double _timeProgress = 1.0;

  // ── Kategori bazlı puanlar (Radar grafik) ──
  final Map<QuestionCategory, int> _categoryScore = {};
  final Map<QuestionCategory, int> _categoryTotal = {};
  final Map<QuestionCategory, int> _categoryCorrect = {};
  final Map<QuestionCategory, int> _categorySolved = {};

  // ── İstatistikler ──
  int _totalXP = 0;
  int _gamesPlayed = 0;
  int _bestScore = 0;
  List<GameResult> _history = [];

  // ── Çözülmüş Sorular (Asla tekrar gösterilmez) ──
  Set<String> _solvedQuestions = {};

  // ── Getters ──
  List<Question> get questions => _questions;
  int get currentIndex => _currentIndex;
  int get totalScore => _totalScore;
  int get correctCount => _correctCount;
  int get wrongCount => _wrongCount;
  bool get isAnswered => _isAnswered;
  bool get isCorrect => _isCorrect;
  int get selectedIndex => _selectedIndex;
  bool get isGameActive => _isGameActive;
  bool get hasSavedGame => _hasSavedGame;
  int get timeRemaining => _timeRemaining;
  int get answerTime => _answerTime;
  double get timeProgress => _timeProgress;
  int get totalXP => _totalXP;
  int get gamesPlayed => _gamesPlayed;
  int get bestScore => _bestScore;
  List<GameResult> get history => _history;
  Map<QuestionCategory, int> get categoryScore => _categoryScore;
  Map<QuestionCategory, int> get categoryTotal => _categoryTotal;
  Map<QuestionCategory, int> get categoryCorrect => _categoryCorrect;
  Map<QuestionCategory, int> get categorySolved => _categorySolved;
  Set<String> get solvedQuestions => _solvedQuestions;
  int get solvedCount => _solvedQuestions.length;

  Question? get currentQuestion =>
      _questions.isNotEmpty && _currentIndex < _questions.length
      ? _questions[_currentIndex]
      : null;

  bool get isLastQuestion => _currentIndex >= _questions.length - 1;
  int get questionCount => _questions.length;
  int get maxScore => _questions.length * 10;
  IQLevel get iqLevel => IQLevelExtension.fromScore(_totalScore);

  double getCategoryPercentage(QuestionCategory cat) {
    final total = _categoryTotal[cat] ?? 0;
    final score = _categoryScore[cat] ?? 0;
    if (total == 0) return 0;
    return (score / total).clamp(0.0, 1.0);
  }

  String getCategoryComment(QuestionCategory cat) {
    final pct = getCategoryPercentage(cat);
    if (pct >= 0.9) return 'Olağanüstü! Bu alanda zihnin keskin.';
    if (pct >= 0.7) return 'Güçlü performans, ama daha iyisi mümkün.';
    if (pct >= 0.5) return 'Ortalama. Biraz daha derinleşmelisin.';
    if (pct >= 0.3) return 'Burada batmışsın dostum!';
    return 'Bu alan senin kör noktanız gibi görünüyor.';
  }

  // ═══════════════════════════════════════════════════════════════════
  // ── YENİ OYUN BAŞLAT ──
  // ═══════════════════════════════════════════════════════════════════
  void startGame(List<Question> questions) {
    final rng = Random();
    _questions = List.from(questions)..shuffle(rng);

    // Seçenekleri karıştır
    _questions = _questions.map((q) {
      final correctOption = q.options[q.correctIndex];
      final shuffled = List<String>.from(q.options)..shuffle(rng);
      final newIndex = shuffled.indexOf(correctOption);
      return Question(
        id: q.id,
        category: q.category,
        scenario: q.scenario,
        options: shuffled,
        correctIndex: newIndex,
        insight: q.insight,
        timeLimitSeconds: q.timeLimitSeconds,
      );
    }).toList();

    // Magic Square sorusunu ilk kez oynayanlar için 3. sıraya (index 2) zorla ekle
    if (!_magicSquareShown && _questions.length >= 3) {
      final magicIndex = _questions.indexWhere(
        (q) => q.id == 'MAGIC_SQUARE_001',
      );
      if (magicIndex != -1) {
        final mq = _questions.removeAt(magicIndex);
        _questions.insert(2, mq);
        _magicSquareShown = true;
        SharedPreferences.getInstance().then(
          (prefs) => prefs.setBool('magicSquareShown', true),
        );
      }
    }

    _currentIndex = 0;
    _totalScore = 0;
    _correctCount = 0;
    _wrongCount = 0;
    _isAnswered = false;
    _isCorrect = false;
    _selectedIndex = -1;
    _isGameActive = true;
    _categoryScore.clear();
    _categoryTotal.clear();
    _categoryCorrect.clear();
    _categorySolved.clear();

    for (final q in _questions) {
      _categoryTotal[q.category] = (_categoryTotal[q.category] ?? 0) + 10;
    }

    _startTimer();
    notifyListeners();
    _saveCurrentGame();
  }

  // ═══════════════════════════════════════════════════════════════════
  // ── KALDIĞIN YERDEN DEVAM ET ──
  // ═══════════════════════════════════════════════════════════════════
  Future<bool> resumeGame(List<Question> allQuestions) async {
    final prefs = await SharedPreferences.getInstance();
    final savedJson = prefs.getString('savedGame');
    if (savedJson == null) return false;

    try {
      final data = jsonDecode(savedJson) as Map<String, dynamic>;
      final savedIds = List<String>.from(data['questionIds'] as List);
      final savedCorrectIndices = List<int>.from(
        data['correctIndices'] as List,
      );
      final savedOptions = (data['options'] as List)
          .map((e) => List<String>.from(e as List))
          .toList();

      // Soruları kayıtlı sıraya göre yeniden oluştur
      _questions = [];
      for (int i = 0; i < savedIds.length; i++) {
        final orig = allQuestions.firstWhere(
          (q) => q.id == savedIds[i],
          orElse: () => allQuestions[0],
        );
        _questions.add(
          Question(
            id: orig.id,
            category: orig.category,
            scenario: orig.scenario,
            options: savedOptions[i],
            correctIndex: savedCorrectIndices[i],
            insight: orig.insight,
            timeLimitSeconds: orig.timeLimitSeconds,
          ),
        );
      }

      _currentIndex = data['currentIndex'] as int;
      _totalScore = data['totalScore'] as int;
      _correctCount = data['correctCount'] as int;
      _wrongCount = data['wrongCount'] as int;
      _isAnswered = false;
      _isCorrect = false;
      _selectedIndex = -1;
      _isGameActive = true;

      // Kategori totalleri yeniden hesapla
      _categoryScore.clear();
      _categoryTotal.clear();
      _categoryCorrect.clear();
      _categorySolved.clear();
      for (final q in _questions) {
        _categoryTotal[q.category] = (_categoryTotal[q.category] ?? 0) + 10;
      }

      _startTimer();
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }

  // ── Cevap Ver ──
  void submitAnswer(int index) {
    if (_isAnswered) return;
    _timer?.cancel();
    SoundService.instance.stopTickSound();
    _selectedIndex = index;
    _isAnswered = true;
    _answerTime = (currentQuestion?.timeLimitSeconds ?? 45) - _timeRemaining;
    _isCorrect = currentQuestion!.checkAnswer(index);

    final cat = currentQuestion!.category;
    _categorySolved[cat] = (_categorySolved[cat] ?? 0) + 1;

    if (_isCorrect) {
      _correctCount++;
      final points = currentQuestion!.calculatePoints(_answerTime);
      _totalScore += points;
      _categoryScore[cat] = (_categoryScore[cat] ?? 0) + points;
      _categoryCorrect[cat] = (_categoryCorrect[cat] ?? 0) + 1;
      _totalXP += points;
      SoundService.instance.playCorrect();
    } else {
      _wrongCount++;
      SoundService.instance.playWrong();
    }

    // Soruyu çözülmüş olarak işaretle
    _solvedQuestions.add(currentQuestion!.id);
    _saveSolvedQuestions();

    notifyListeners();
    _saveCurrentGame();
  }

  // ── Sonraki Soru ──
  void nextQuestion() {
    if (_currentIndex < _questions.length - 1) {
      _currentIndex++;
      _isAnswered = false;
      _isCorrect = false;
      _selectedIndex = -1;
      _startTimer();
      notifyListeners();
      _saveCurrentGame();
    }
  }

  // ── Zamanlayıcı (devre dışı — süre sınırı yok) ──
  void _startTimer() {
    _timer?.cancel();
    _timeRemaining = 9999;
    _timeProgress = 1.0;
    _answerTime = 0;
    // Timer intentionally disabled — no time limit
  }

  // ── Oyunu Bitir ──
  void endGame() {
    _timer?.cancel();
    SoundService.instance.stopTickSound();
    _isGameActive = false;
    _gamesPlayed++;
    if (_totalScore > _bestScore) _bestScore = _totalScore;

    // Geçmişe ekle
    _history.insert(
      0,
      GameResult(
        score: _totalScore,
        correct: _correctCount,
        wrong: _wrongCount,
        total: _questions.length,
        level: iqLevel.title,
        date: DateTime.now(),
      ),
    );

    _clearSavedGame();
    _saveStats();
    notifyListeners();
  }

  // ═══════════════════════════════════════════════════════════════════
  // ── KAYIT SİSTEMİ ──
  // ═══════════════════════════════════════════════════════════════════
  Future<void> _saveCurrentGame() async {
    final prefs = await SharedPreferences.getInstance();
    final data = {
      'questionIds': _questions.map((q) => q.id).toList(),
      'correctIndices': _questions.map((q) => q.correctIndex).toList(),
      'options': _questions.map((q) => q.options).toList(),
      'currentIndex': _currentIndex,
      'totalScore': _totalScore,
      'correctCount': _correctCount,
      'wrongCount': _wrongCount,
    };
    await prefs.setString('savedGame', jsonEncode(data));
    _hasSavedGame = true;
  }

  Future<void> _clearSavedGame() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('savedGame');
    _hasSavedGame = false;
  }

  // ── SharedPreferences ──
  Future<void> loadStats() async {
    final prefs = await SharedPreferences.getInstance();
    _totalXP = prefs.getInt('totalXP') ?? 0;
    _gamesPlayed = prefs.getInt('gamesPlayed') ?? 0;
    _bestScore = prefs.getInt('bestScore') ?? 0;
    _hasSavedGame = prefs.getString('savedGame') != null;
    _magicSquareShown = prefs.getBool('magicSquareShown') ?? false;

    // Çözülmüş soruları yükle
    final solvedList = prefs.getStringList('solved_questions');
    if (solvedList != null) {
      _solvedQuestions = solvedList.toSet();
    }

    // Geçmiş sonuçları yükle
    final historyJson = prefs.getString('gameHistory');
    if (historyJson != null) {
      final list = jsonDecode(historyJson) as List;
      _history = list
          .map((m) => GameResult.fromMap(m as Map<String, dynamic>))
          .toList();
    }

    await SoundService.instance.init();
    notifyListeners();
  }

  Future<void> _saveStats() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('totalXP', _totalXP);
    await prefs.setInt('gamesPlayed', _gamesPlayed);
    await prefs.setInt('bestScore', _bestScore);

    // Max 20 geçmiş kaydet
    final historyToSave = _history.take(20).toList();
    await prefs.setString(
      'gameHistory',
      jsonEncode(historyToSave.map((r) => r.toMap()).toList()),
    );
  }

  Future<void> _saveSolvedQuestions() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('solved_questions', _solvedQuestions.toList());
  }

  @override
  void dispose() {
    _timer?.cancel();
    SoundService.instance.dispose();
    super.dispose();
  }
}
