import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zihin_tuzaklari/main.dart';

void main() {
  testWidgets('App starts correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const ZihinTuzaklariApp());
    expect(find.text('SMARTER THAN'), findsOneWidget);
    expect(find.text('A MONKEY?'), findsOneWidget);

    await tester.pump(const Duration(seconds: 3));
    await tester.pumpWidget(const SizedBox.shrink());
  });
}
