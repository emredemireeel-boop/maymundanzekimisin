import 'package:zihin_tuzaklari/models/question_model.dart';
import 'package:zihin_tuzaklari/data/all_questions.dart';

/// Tüm soruları birleştir
class QuestionBank {
  QuestionBank._();

  static List<Question> getAllQuestions() {
    return allQuestionsData.map((m) => Question.fromMap(m)).toList();
  }

  /// Çözülmemiş soruları getir (solved_questions setinde olmayanlar)
  static List<Question> getUnsolvedQuestions(Set<String> solvedIds) {
    final all = getAllQuestions();
    return all.where((q) => !solvedIds.contains(q.id)).toList();
  }

  static int get totalQuestions => allQuestionsData.length;
}
