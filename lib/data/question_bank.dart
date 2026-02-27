import 'package:zihin_tuzaklari/models/question_model.dart';
import 'package:zihin_tuzaklari/data/questions_part2.dart';
import 'package:zihin_tuzaklari/data/questions_part3.dart';
import 'package:zihin_tuzaklari/data/questions_part4.dart';
import 'package:zihin_tuzaklari/data/questions_part5.dart';
import 'package:zihin_tuzaklari/data/questions_part6.dart';
import 'package:zihin_tuzaklari/data/questions_part7.dart';
import 'package:zihin_tuzaklari/data/questions_part8.dart';
import 'package:zihin_tuzaklari/data/questions_part9.dart';
import 'package:zihin_tuzaklari/data/questions_part10.dart';
import 'package:zihin_tuzaklari/data/questions_part11.dart';
import 'package:zihin_tuzaklari/data/questions_part12.dart';
import 'package:zihin_tuzaklari/data/questions_part13.dart';
import 'package:zihin_tuzaklari/data/questions_part14.dart';
import 'package:zihin_tuzaklari/data/questions_part15.dart';
import 'package:zihin_tuzaklari/data/questions_part16.dart';
import 'package:zihin_tuzaklari/data/questions_part17.dart';
import 'package:zihin_tuzaklari/data/questions_part18.dart';
import 'package:zihin_tuzaklari/data/questions_part19.dart';

/// Tüm soruları birleştir
class QuestionBank {
  QuestionBank._();

  static List<Question> getAllQuestions() {
    final allMaps = [
      ...questionsPart2,
      ...questionsPart3,
      ...questionsPart4,
      ...questionsPart5,
      ...questionsPart6,
      ...questionsPart7,
      ...questionsPart8,
      ...questionsPart9,
      ...questionsPart10,
      ...questionsPart11,
      ...questionsPart12,
      ...questionsPart13,
      ...questionsPart14,
      ...questionsPart15,
      ...questionsPart16,
      ...questionsPart17,
      ...questionsPart18,
      ...questionsPart19,
    ];
    return allMaps.map((m) => Question.fromMap(m)).toList();
  }

  /// Çözülmemiş soruları getir (solved_questions setinde olmayanlar)
  static List<Question> getUnsolvedQuestions(Set<String> solvedIds) {
    final all = getAllQuestions();
    final unsolved = all.where((q) => !solvedIds.contains(q.id)).toList();
    return unsolved.isEmpty ? all : unsolved; // Tümü çözüldüyse yeniden başla
  }

  static int get totalQuestions =>
      questionsPart2.length +
      questionsPart3.length +
      questionsPart4.length +
      questionsPart5.length +
      questionsPart6.length +
      questionsPart7.length +
      questionsPart8.length +
      questionsPart9.length +
      questionsPart10.length +
      questionsPart11.length +
      questionsPart12.length +
      questionsPart13.length +
      questionsPart14.length +
      questionsPart15.length +
      questionsPart16.length +
      questionsPart17.length +
      questionsPart18.length +
      questionsPart19.length;
}

