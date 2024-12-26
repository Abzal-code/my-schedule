import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/features/schedule/domain/entities/event_entity.dart';
import 'package:my_shedule/features/schedule/presentation/bloc/schedule/schedule_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  final List<EventEntity> allEvents;
  final ValueChanged<DateTime> onDataChanged;

  const CalendarWidget({
    super.key,
    required this.onDataChanged,
    required this.allEvents,
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
      child: TableCalendar(
        calendarFormat: _calendarFormat,
        daysOfWeekHeight: 46,
        rowHeight: 40,
        onFormatChanged: _onformatChanged,
        daysOfWeekStyle: _styleOfWeek,
        startingDayOfWeek: StartingDayOfWeek.monday,
        calendarStyle: _calendarStyle,
        firstDay: DateTime(2010, 10, 16),
        lastDay: DateTime(2030, 3, 14),
        focusedDay: _focusedDate,
        selectedDayPredicate: (day) => isSameDay(_selectedDate, day),
        onDaySelected: _onDateSelected,
        eventLoader: (day) => widget.allEvents
            .where((event) => isSameDay(day, event.eventDate))
            .toList(),
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
      context
          .read<ScheduleBloc>()
          .add(ScheduleEvent.getEventsByDate(selectedDate));
    }
  }

  _onformatChanged(CalendarFormat format) {
    if (_calendarFormat != format) {
      setState(() => _calendarFormat = format);
    }
  }
}
