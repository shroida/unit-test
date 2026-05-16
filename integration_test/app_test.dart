void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('full app test', (WidgetTester tester) async {

    app.main(); 

    await tester.pumpAndSettle();

    expect(find.text('Home'), findsOneWidget);
  });
}