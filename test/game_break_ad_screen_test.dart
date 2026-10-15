import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zihin_tuzaklari/screens/game_break_ad_screen.dart';

void main() {
  testWidgets('Results open when no interstitial is available', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: GameBreakAdScreen(
          resultBuilder: (_) =>
              const Scaffold(body: Center(child: Text('Results ready'))),
        ),
      ),
    );

    expect(find.text('Preparing results…'), findsOneWidget);
    await tester.pump(const Duration(milliseconds: 800));
    await tester.pumpAndSettle();
    expect(find.text('Results ready'), findsOneWidget);
  });
}
