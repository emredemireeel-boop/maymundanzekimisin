import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zihin_tuzaklari/models/game_state.dart';
import 'package:zihin_tuzaklari/screens/home_screen.dart';
import 'package:zihin_tuzaklari/screens/quiz_screen.dart';
import 'package:zihin_tuzaklari/l10n/app_text.dart';

void main() {
  testWidgets('daily challenge opens from the home screen on a tablet', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    tester.view.physicalSize = const Size(1180, 820);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final game = GameState();
    await tester.pumpWidget(
      ChangeNotifierProvider<GameState>.value(
        value: game,
        child: const MaterialApp(locale: Locale('tr'), home: HomeScreen()),
      ),
    );
    await tester.pump(const Duration(milliseconds: 1300));

    // Keep this assertion close to the tap so a missing action is visible.
    expect(find.byType(HomeScreen), findsOneWidget);
    final daily = find.byWidgetPredicate(
      (widget) =>
          widget is AppText && widget.data == '🧬 Günün Zihin Düellosu',
    );
    await tester.ensureVisible(daily);
    await tester.pump();
    await tester.tap(daily);
    await tester.pump(const Duration(milliseconds: 500));

    expect(game.isDailyChallenge, isTrue);
    expect(tester.takeException(), isNull);
    expect(game.questionCount, 6);
    expect(find.byType(QuizScreen, skipOffstage: false), findsOneWidget);
  });
}
