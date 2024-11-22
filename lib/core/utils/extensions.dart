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
