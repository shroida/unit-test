import 'package:flutter_test/flutter_test.dart';
import 'package:unit_widget_test/features/util/time_helper.dart';

void main() {

  group('TimeHelper Tests', () {

    test('returns Morning', () {

      expect(
        TimeHelper.getTimeOfTheDay(
          dateTime: DateTime(2026, 1, 1, 8),
        ),
        "Morning",
      );

    });

    test('returns Evening', () {

      expect(
        TimeHelper.getTimeOfTheDay(
          dateTime: DateTime(2026, 1, 1, 18),
        ),
        "Evening",
      );

    });

    test('returns Night', () {

      expect(
        TimeHelper.getTimeOfTheDay(
          dateTime: DateTime(2026, 1, 1, 2),
        ),
        "Night",
      );

    });

  });

}