import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:unit_widget_test/features/screens/login.dart';

void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Login Integration', () {
    // Test cases for login functionality
    testWidgets('should login successfully', (tester) async {
      await tester.pumpWidget(const Login());

  final emailFieldFinder =
      find.byKey(const ValueKey('emailField'));

  final passwordFieldFinder =
      find.byKey(const ValueKey('passwordField'));

  final loginButtonFinder =
      find.byKey(const ValueKey('loginButton'));

  // Enter valid credentials
  await tester.enterText(
    emailFieldFinder,
    'admin@test.com',
  );

  await tester.enterText(
    passwordFieldFinder,
    '123456',
  );

  await tester.pumpAndSettle();

  // Tap login
  await tester.tap(loginButtonFinder);

  await tester.pumpAndSettle();

  // Verify success
  expect(
    find.text('Login Success'),
    findsOneWidget,
  );

  });
   }
  );
}