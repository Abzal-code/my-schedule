// lib/core/utils/helpers.dart

import 'package:flutter/material.dart';

class DateHelper {
  /// Форматирует дату в строку по указанному шаблону.
  static String formatDate(
    DateTime date, {
    String format = 'yyyy-MM-dd',
  }) {
    // Используем пакет intl для форматирования дат.
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }
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
