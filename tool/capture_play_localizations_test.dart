import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zihin_tuzaklari/config/app_theme.dart';
import 'package:zihin_tuzaklari/data/question_bank.dart';
import 'package:zihin_tuzaklari/models/game_state.dart';
import 'package:zihin_tuzaklari/screens/home_screen.dart';
import 'package:zihin_tuzaklari/screens/quiz_screen.dart';
import 'package:zihin_tuzaklari/services/app_language.dart';

void main() {
  testWidgets('capture the actual English and Spanish game widgets', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 3;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.runAsync(() async {
      for (final (family, path) in [
        ('Roboto', r'C:\Windows\Fonts\segoeui.ttf'),
        ('Segoe UI Emoji', r'C:\Windows\Fonts\seguiemj.ttf'),
        (
          'MaterialIcons',
          r'C:\src\flutter\bin\cache\artifacts\material_fonts\MaterialIcons-Regular.otf',
        ),
      ]) {
        final data = await File(path).readAsBytes();
        await (FontLoader(
          family,
        )..addFont(Future.value(ByteData.view(data.buffer)))).load();
      }
    });
    // This file is a widget-test capture fixture outside the test/ directory.
    // ignore: invalid_use_of_visible_for_testing_member
    SharedPreferences.setMockInitialValues({});
    final messenger =
        TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
    for (final channel in [
      'xyz.luan/audioplayers.global',
      'xyz.luan/audioplayers.global/events',
    ]) {
      messenger.setMockMethodCallHandler(
        MethodChannel(channel),
        (_) async => null,
      );
    }
    messenger.setMockMethodCallHandler(
      const MethodChannel('xyz.luan/audioplayers'),
      (call) async {
        if (call.method == 'create') {
          final id = (call.arguments as Map)['playerId'];
          messenger.setMockMethodCallHandler(
            MethodChannel('xyz.luan/audioplayers/events/$id'),
            (_) async => null,
          );
        }
        return null;
      },
    );
    for (final language in ['en', 'es']) {
      await AppLanguage.instance.select(language);
      final game = GameState();
      final repaint = GlobalKey();
      Future<void> capture(Widget page, String name) async {
        await tester.pumpWidget(
          RepaintBoundary(
            key: repaint,
            child: MultiProvider(
              providers: [
                ChangeNotifierProvider<GameState>.value(value: game),
                ChangeNotifierProvider<AppLanguage>.value(
                  value: AppLanguage.instance,
                ),
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: AppTheme.lightTheme.copyWith(
                  textTheme: AppTheme.lightTheme.textTheme.apply(
                    fontFamilyFallback: const ['Segoe UI Emoji'],
                  ),
                ),
                locale: Locale(language),
                supportedLocales: const [
                  Locale('tr'),
                  Locale('en'),
                  Locale('es'),
                ],
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                home: page,
              ),
            ),
          ),
        );
        for (var i = 0; i < 15; i++) {
          await tester.pump(const Duration(milliseconds: 160));
          await tester.runAsync(
            () => Future<void>.delayed(const Duration(milliseconds: 20)),
          );
        }
        expect(tester.takeException(), isNull, reason: '$language/$name');
        await tester.runAsync(() async {
          final boundary =
              repaint.currentContext!.findRenderObject()
                  as RenderRepaintBoundary;
          final image = await boundary.toImage(pixelRatio: 3);
          final data = await image.toByteData(format: ui.ImageByteFormat.png);
          final file = File(
            'store_assets/international-20261022/$language-$name.png',
          );
          await file.parent.create(recursive: true);
          await file.writeAsBytes(data!.buffer.asUint8List());
          image.dispose();
        });
        await tester.pumpWidget(const SizedBox.shrink());
      }

      await capture(const HomeScreen(), 'home');
      final bank = QuestionBank.getAllQuestions(languageCode: language)
        ..sort((a, b) => a.id.compareTo(b.id));
      game.startGame([bank.first]);
      await capture(const QuizScreen(), 'question');
      // Provider.value does not own this fixture; no sound service is initialized.
      // The current game has no active timer. Widgets are unmounted after captures.
    }
  });
}
