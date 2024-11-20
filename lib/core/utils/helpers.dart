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

  static TimeOfDay timeOfDayFromString(String timeString) {
    final parts = timeString.split(':');
    final hour = int.parse(parts[0]);
    final minute = int.parse(parts[1]);
    return TimeOfDay(hour: hour, minute: minute);
  }

  static String timeOfDayToString(TimeOfDay time) =>
      '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';

  static DateTime toDateTime(DateTime date) =>
      DateTime(date.year, date.month, date.day);
}

class StringHelper {
  /// Обрезает строку до указанного количества символов и добавляет '...' в конце, если она длиннее.
  static String truncate(
    String text,
    int maxLength,
  ) {
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}...';
  }
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
