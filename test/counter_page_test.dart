import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_widget_test/features/screens/counter_page.dart';

void main(){
testWidgets('Counter Increment', (WidgetTester tester)async {
  // Build our app and trigger a frame
  await tester.pumpWidget(CounterPage());

  // // Verify that our counter starts at 0
  // expect(find.text('Counter Page'), findsOneWidget);


  // expect(find.text('0'), findsOneWidget);
  // expect(find.text('1'), findsNothing);

  // // tap the '+' icon and trigger a frame
  // await tester.tap(find.byIcon(Icons.add));

  // // Rebuild the widget after the state has been changed 
  // await tester.pump();

  // expect(find.text('1'), findsOneWidget);


  //----------- 

  Finder textFinder = find.text('Counter Page');
  Finder btnFinder = find.text('Add');

  expect(btnFinder, findsOneWidget);
  expect(textFinder, findsOneWidget);

  Finder textFieldFinder = find.byKey(const ValueKey('counterTextField'));

  // enter value
  await tester.enterText(textFieldFinder, '5');  
  
  
  await tester.pump();


  await tester.tap(btnFinder);


  await tester.pump();

  expect(find.text('6'), findsNWidgets( 2));
}
);


}