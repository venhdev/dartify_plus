extension DateTimeExtensions on DateTime {
  /// Returns today's date with time set to midnight (00:00:00)
  static DateTime today() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  /// Returns `true` if this date is today (ignores time)
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Returns a new DateTime with time removed (00:00:00)
  DateTime get withoutTime => DateTime(year, month, day);
}
