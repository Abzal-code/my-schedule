import 'package:flutter/material.dart';

extension TimePickerExtensions on BuildContext {
  Future<TimeOfDay?> showCustomTimePicker({
    required bool use24HourFormat,
    TimeOfDay? initialTime,
  }) {
    return showTimePicker(
      context: this,
      initialTime: initialTime ?? TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(alwaysUse24HourFormat: use24HourFormat),
          child: child!,
        );
      },
    );
  }
}

extension DateTimeExtensions on DateTime {
  DateTime get startOfDay => DateTime(year, month, day, 0, 0, 0, 0, 0);
  DateTime get endOfDay => startOfDay.add(const Duration(days: 1));
}

extension StringExtensions on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String truncate(int maxLength) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength)}...';
  }
}
