import 'dart:math';

import 'package:zihin_tuzaklari/models/question_model.dart';
import 'package:zihin_tuzaklari/data/all_questions.dart';
import 'package:zihin_tuzaklari/data/advanced_questions.dart';
import 'package:zihin_tuzaklari/data/competition_questions_2026.dart';
import 'package:zihin_tuzaklari/data/questions_en.dart';
import 'package:zihin_tuzaklari/data/questions_es.dart';
import 'package:zihin_tuzaklari/services/app_language.dart';

/// Tüm soruları birleştir
class QuestionBank {
  QuestionBank._();

  static List<Map<String, dynamic>> _dataFor(String languageCode) {
    if (languageCode == 'en') return questionsEnData;
    if (languageCode == 'es') return questionsEsData;
    return [
      ...allQuestionsData,
      ...advancedQuestionsData,
      ...competitionQuestions2026,
    ];
  }

  static List<Question> getAllQuestions({String? languageCode}) {
    final questions = _dataFor(
      languageCode ?? AppLanguage.instance.code,
    ).map((m) => Question.fromMap(m)).toList();
    questions.shuffle(Random());
    return questions;
  }

  /// Çözülmemiş soruları getir (solved_questions setinde olmayanlar)
  static List<Question> getUnsolvedQuestions(Set<String> solvedIds) {
    final all = getAllQuestions();
    return all.where((q) => !solvedIds.contains(q.id)).toList();
  }

  static int get totalQuestions => _dataFor(AppLanguage.instance.code).length;
}
