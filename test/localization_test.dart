import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zihin_tuzaklari/data/question_bank.dart';
import 'package:zihin_tuzaklari/services/app_language.dart';
import 'package:zihin_tuzaklari/l10n/ui_translations.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('translated screens retain the monkey, brain and other icon labels', () {
    for (final code in ['en', 'es']) {
      for (final icon in ['🐒', '🧠', '🧬', '💡']) {
        expect(localizeUi(icon, code), icon);
      }
    }
    expect(localizeUi('Cevabı Göster', 'es'), 'Ver respuesta');
  });

  test('English and Spanish puzzles preserve their answers', () {
    final turkish = {
      for (final question in QuestionBank.getAllQuestions(languageCode: 'tr'))
        question.id: question,
    };
    final english = QuestionBank.getAllQuestions(languageCode: 'en');
    final spanish = QuestionBank.getAllQuestions(languageCode: 'es');

    expect(english, hasLength(50));
    expect(spanish, hasLength(50));
    expect(english.map((q) => q.id).toSet(), spanish.map((q) => q.id).toSet());

    for (final localized in [english, spanish]) {
      for (final question in localized) {
        final source = turkish[question.id];
        expect(source, isNotNull, reason: question.id);
        expect(question.options, hasLength(6), reason: question.id);
        expect(question.options.toSet(), hasLength(6), reason: question.id);
        expect(
          question.correctIndex,
          source!.correctIndex,
          reason: question.id,
        );
        expect(question.scenario.trim(), isNotEmpty, reason: question.id);
        expect(question.insight.trim(), isNotEmpty, reason: question.id);
      }
    }
  });

  test('manual language selection is stored', () async {
    SharedPreferences.setMockInitialValues({});
    await AppLanguage.instance.select('es');
    expect(AppLanguage.instance.code, 'es');
    final preferences = await SharedPreferences.getInstance();
    expect(preferences.getString('app_language'), 'es');
  });
}
