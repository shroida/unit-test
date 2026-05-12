import 'package:flutter_test/flutter_test.dart';
import 'package:unit_widget_test/counter.dart';

void main(){
  test('Counter increments', () {
    final counter = Counter();
    expect(counter.value, 0);
    counter.increment();
    expect(counter.value, 1);
  });

  test('Counter decrements', () {
    final counter = Counter();
    expect(counter.value, 0);
    counter.decrement();
    expect(counter.value, -1);
  });
}