import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        actions: [
          IconButton(
            onPressed: () => context.read<AuthBloc>().add(
                  const AuthEvent.signOut(),
                ),
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            tooltip: 'Logout',
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TableCalendar(
                  rowHeight: 45,
                  onFormatChanged: (format) => print(format),
                  availableCalendarFormats: const {
                    CalendarFormat.month: 'Month',
                    CalendarFormat.twoWeeks: '2 weeks',
                    CalendarFormat.week: 'Week'
                  },
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  // calendarStyle: const CalendarStyle(
                  //   outsideTextStyle: TextStyle(
                  //     color: Colors.white,
                  //   ),
                  //   weekendTextStyle: TextStyle(
                  //     color: Colors.amber,
                  //   ),
                  // ),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),
              ),
            )),
      ),
    );
  }
}
