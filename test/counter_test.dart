import 'package:flutter_test/flutter_test.dart';
import 'package:unit_widget_test/counter.dart';

void main(){
  group('Test Counter Increnment and Decrenment', (){
    final counter = Counter();
    counter.value = 7;
 test('Counter increments', () {
    expect(counter.value, 7);
    counter.increment();
    expect(counter.value, 8 );
  });

  test('Counter decrements', () {
    expect(counter.value, 8);
    counter.decrement();
    expect(counter.value, 7);
  });
  });

}