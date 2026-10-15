import 'package:flutter_test/flutter_test.dart';
import 'package:zihin_tuzaklari/data/advanced_questions.dart';
import 'package:zihin_tuzaklari/data/all_questions.dart';
import 'package:zihin_tuzaklari/data/competition_questions_2026.dart';
import 'package:zihin_tuzaklari/data/question_bank.dart';

void main() {
  test('50 new questions have unique IDs, six choices and a valid answer', () {
    final additions = [...advancedQuestionsData, ...competitionQuestions2026];
    expect(advancedQuestionsData, hasLength(25));
    expect(competitionQuestions2026, hasLength(25));

    final ids = <String>{};
    for (final question in [...allQuestionsData, ...additions]) {
      final id = question['id'] as String;
      expect(ids.add(id), isTrue, reason: 'Duplicate ID: $id');
    }
    for (final question in additions) {
      final id = question['id'] as String;
      final options = question['options'] as List;
      expect(options, hasLength(6), reason: id);
      expect(options.toSet(), hasLength(6), reason: id);
      expect(question['correctIndex'], inInclusiveRange(0, 5), reason: id);
      expect((question['scenario'] as String).trim(), isNotEmpty, reason: id);
      expect((question['insight'] as String).trim(), isNotEmpty, reason: id);
    }
    expect(QuestionBank.getAllQuestions(languageCode: 'tr'), hasLength(ids.length));
  });

  test('ten weak questions are removed', () {
    final ids = QuestionBank.getAllQuestions(languageCode: 'tr').map((q) => q.id).toSet();
    for (final id in [
      'RIDDLE_012', 'RIDDLE_013', 'RIDDLE_014', 'RIDDLE_023',
      'FUN_056', 'NEW_002', 'NEW_003', 'NEW_005',
      'NEW_006', 'NEW_007',
    ]) {
      expect(ids, isNot(contains(id)));
    }
  });
}
