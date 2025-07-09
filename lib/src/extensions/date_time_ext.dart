extension DateTimeExtensions on DateTime {
  /// Returns today's date with time set to midnight (00:00:00)
  static DateTime today() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  /// Returns `true` if the given date is the same as this date (ignores time)
  static bool isSameDate(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  /// Returns `true` if this date is today (ignores time)
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Returns `true` if this date is in the same day as the given date (ignores time)
  bool isSameDayAs(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  /// Returns `true` if this date is tomorrow (ignores time)
  bool get isTomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return year == tomorrow.year &&
        month == tomorrow.month &&
        day == tomorrow.day;
  }

  /// Returns `true` if this date is yesterday (ignores time)
  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return year == yesterday.year &&
        month == yesterday.month &&
        day == yesterday.day;
  }

  /// Returns `true` if this date is in the future (ignores time)
  bool get isFuture {
    final now = DateTime.now();
    return isAfter(now);
  }

  /// Returns `true` if this date is in the past (ignores time)
  bool get isPast {
    final now = DateTime.now();
    return isBefore(now);
  }

  /// Returns `true` if this date is in the same month as the given date (ignores time)
  bool isSameMonthAs(DateTime other) {
    final thisYear = year;
    final thisMonth = month;
    final otherYear = other.year;
    final otherMonth = other.month;
    return thisYear == otherYear && thisMonth == otherMonth;
  }

  /// Returns `true` if this date is in the same year as the given date (ignores time)
  bool isSameYearAs(DateTime other) {
    final thisYear = year;
    final otherYear = other.year;
    return thisYear == otherYear;
  }

  /// Returns a new DateTime with time removed (00:00:00)
  DateTime get withoutTime => DateTime(year, month, day);
}
