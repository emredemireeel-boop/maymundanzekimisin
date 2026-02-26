import 'package:flutter_test/flutter_test.dart';
import 'package:zihin_tuzaklari/main.dart';

void main() {
  testWidgets('App starts correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const ZihinTuzaklariApp());
    expect(find.text('ZİHİN TUZAKLARI'), findsOneWidget);
  });
}
