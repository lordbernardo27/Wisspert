import 'package:flutter_test/flutter_test.dart';
import 'package:wisspert/app/app.dart';

void main() {
  testWidgets('Wisspert app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const WisspertApp());

    expect(find.text('Wisspert'), findsOneWidget);
  });
}

