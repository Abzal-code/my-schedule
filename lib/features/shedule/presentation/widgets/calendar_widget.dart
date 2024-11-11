import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

enum CalendarView { week, twoWeek, month }

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({
    super.key,
  });

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
          // calendarFormat: ,
          daysOfWeekHeight: 46,
          rowHeight: 45,
          onFormatChanged: (format) => print(format),
          // availableCalendarFormats: const {
          //   CalendarFormat.month: 'Month',
          //   CalendarFormat.twoWeeks: '2 weeks',
          //   CalendarFormat.week: 'Week'
          // },
          startingDayOfWeek: StartingDayOfWeek.monday,
          calendarStyle: const CalendarStyle(),
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),
        ),
      ),
    );
  }
}
