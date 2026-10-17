import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wisspert/app/app.dart';
import 'package:wisspert/core/config/app_config.dart';
import 'package:wisspert/core/services/app_providers.dart';

void main() {
  testWidgets('Wisspert app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          appEnvironmentProvider.overrideWithValue(
            AppEnvironment.development,
          ),
        ],
        child: const WisspertApp(),
      ),
    );

    expect(find.text('Wisspert'), findsOneWidget);
  });
}
