import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_shedule/core/di.dart';
import 'package:my_shedule/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:my_shedule/features/schedule/presentation/bloc/schedule/schedule_bloc.dart';
import 'package:my_shedule/features/schedule/presentation/widgets/calendar_widget.dart';
import 'package:my_shedule/features/schedule/presentation/widgets/events_info_window.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ScheduleBloc>()
        ..add(
          const ScheduleEvent.loadEvents(),
        ),
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.push('/schedule/create_event'),
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text(
            'My Schedule',
            style: TextStyle(color: Colors.white),
          ),
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
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Stack(
              children: [
                CalendarWidget(),
                SizedBox(
                  height: 20,
                ),
                EventsInfoWindow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
