class TimeHelper {
  static String getTimeOfTheDay() {
    final hour = DateTime.now().hour;

    if (hour >= 5 && hour < 12) {
      return "Morning";
    }  else if (hour >= 17 && hour < 21) {
      return "Evening";
    } else {
      return "Night";
    }
  }
} 