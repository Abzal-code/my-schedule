import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

enum CalendarView { week, twoWeek, month }

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({
    super.key,
  });

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _focusedDate = DateTime.now();
  DateTime? _selectedDate;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  final DaysOfWeekStyle _styleOfWeek = const DaysOfWeekStyle(
    weekdayStyle: TextStyle(color: Colors.green),
    weekendStyle: TextStyle(color: Colors.red),
  );
  final CalendarStyle _calendarStyle = CalendarStyle(
    selectedDecoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.blue[200],
    ),
    todayDecoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.blue,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
      ),
    );
  }

  _onDateSelected(selectedDate, focusedDate) {
    print('selectedDay $selectedDate');
    if (!isSameDay(_selectedDate, selectedDate)) {
      setState(() {
        _selectedDate = selectedDate;
        _focusedDate = focusedDate;
      });
    } else {}
  }

  _onformatChanged(CalendarFormat format) {
    if (_calendarFormat != format) {
      setState(() => _calendarFormat = format);
    }
  }
}
