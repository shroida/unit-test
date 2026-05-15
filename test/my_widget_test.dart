import 'package:flutter_test/flutter_test.dart';
import 'package:unit_widget_test/features/screens/my_widget.dart';

void main(){
  testWidgets('Test MyWidget()', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyWidget(title: 'Test Title', message: 'Test Message'));

    // Verify that our counter starts at 0.
    expect(find.text('Test Title'), findsOneWidget);
    expect(find.text('Test Message'), findsOneWidget);

  });
}