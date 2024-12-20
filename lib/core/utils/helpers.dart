// lib/core/utils/helpers.dart

import 'package:flutter/material.dart';

class DateHelper {
  /// Форматирует дату в строку по указанному шаблону.
  static String formatDate(
    DateTime date, {
    String format = 'dd.MM.yyyy',
  }) =>
      '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year.toString().padLeft(4, '0')}';

  static String formatTime(
    DateTime date, {
    String format = 'HH:mm',
  }) =>
      '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';

  /// Форматирует дату в строку по указанному шаблону.
  static String formatDateTime(
    DateTime date, {
    String format = 'dd/MM/yyyy HH:mm:ss',
  }) =>
      '${formatDate(date, format: format)} ${formatTime(date, format: format)}';

  static DateTime toDateTime(DateTime date) =>
      DateTime(date.year, date.month, date.day);

  static List<DateTime> sortDateTimes(List<DateTime> dateTimes) {
    dateTimes.sort((DateTime a, DateTime b) => a.compareTo(b));
    return dateTimes;
  }

  static List<TimeOfDay> sortTimeOfDays(List<TimeOfDay> timeOfDays) {
    timeOfDays.sort((TimeOfDay a, TimeOfDay b) => a.compareTo(b));
    return timeOfDays;
  }
}

extension on TimeOfDay {
  compareTo(TimeOfDay b) {
    if (hour < b.hour) {
      return -1;
    } else if (hour > b.hour) {
      return 1;
    } else {
      return minute.compareTo(b.minute);
    }
  }
}

class TimeHelper {
  static TimeOfDay timeOfDayFromString(String timeString) {
    final List<String> parts = timeString.split(':');
    final int hour = int.parse(parts[0]);
    final int minute = int.parse(parts[1]);
    return TimeOfDay(hour: hour, minute: minute);
  }

  static String timeOfDayToString(TimeOfDay time) =>
      '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
}

class MessageHelper {
  /// Возвращает сообщение об ошибке.
  static displayError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
