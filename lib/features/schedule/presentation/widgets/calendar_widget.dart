import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  final ValueChanged<DateTime> onDataChanged;

  const CalendarWidget({
    super.key,
    required this.onDataChanged,
  });

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _focusedDate = DateTime.now();
  DateTime? _selectedDate;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  final DaysOfWeekStyle _styleOfWeek = const DaysOfWeekStyle(
    weekdayStyle: TextStyle(color: Colors.white60),
    weekendStyle: TextStyle(color: Colors.white30),
  );
  final CalendarStyle _calendarStyle = CalendarStyle(
    selectedDecoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white.withOpacity(0.5),
    ),
    todayDecoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white.withOpacity(0.2),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20.0),
      ),
      alignment: Alignment.center,
      child: TableCalendar(
        calendarFormat: _calendarFormat,
        daysOfWeekHeight: 46,
        rowHeight: 40,
        onFormatChanged: _onformatChanged,
        daysOfWeekStyle: _styleOfWeek,
        startingDayOfWeek: StartingDayOfWeek.monday,
        calendarStyle: _calendarStyle,
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: _focusedDate,
        selectedDayPredicate: (day) => isSameDay(_selectedDate, day),
        onDaySelected: _onDateSelected,
      ),
    );
  }

  _onDateSelected(selectedDate, focusedDate) {
    if (!isSameDay(_selectedDate, selectedDate)) {
      setState(() {
        _selectedDate = selectedDate;
        _focusedDate = focusedDate;
      });
      widget.onDataChanged(selectedDate);
    }
  }

  _onformatChanged(CalendarFormat format) {
    if (_calendarFormat != format) {
      setState(() => _calendarFormat = format);
    }
  }
}
