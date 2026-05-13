class TimeHelper {

  static String getTimeOfTheDay({DateTime? dateTime}) {

    final hour = dateTime?.hour ?? DateTime(2026, 1, 1, 8).hour;

    if (hour >= 5 && hour < 12) {
      return "Morning";
    } else if (hour >= 17 && hour < 21) {
      return "Evening";
    } else {
      return "Night";
    }

  }

}