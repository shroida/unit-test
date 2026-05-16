import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:unit_widget_test/main.dart' as app;

void main() {

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('counter flow test', (tester) async {

    app.main();

    await tester.pumpAndSettle();

    // Enter value
    await tester.enterText(
      find.byKey(const ValueKey('counterTextField')),
      '5',
    );

    await tester.pumpAndSettle();

    // Tap Add
    await tester.tap(find.text('Add'));

    await tester.pumpAndSettle();

    // Verify counter value
    final counterText = tester.widget<Text>(
      find.byKey(const ValueKey('counterValue')),
    );

    expect(counterText.data, '6');
  });
}