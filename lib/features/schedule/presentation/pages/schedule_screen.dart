import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/core/di.dart';
import 'package:my_shedule/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:my_shedule/features/schedule/presentation/bloc/schedule/schedule_bloc.dart';
import 'package:my_shedule/features/schedule/presentation/pages/create_event_screen.dart';
import 'package:my_shedule/features/schedule/presentation/widgets/animated_background.dart';
import 'package:my_shedule/features/schedule/presentation/widgets/calendar_widget.dart';
import 'package:my_shedule/features/schedule/presentation/widgets/events_info_window.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  DateTime _selectedDate = DateTime.now();

  void _onDateSelected(DateTime selectedDate) {
    setState(() {
      _selectedDate = selectedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ScheduleBloc>()
        ..add(
          const ScheduleEvent.loadEvents(),
        ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white.withOpacity(0.5),
          onPressed: () => openDialog(context, _selectedDate),
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onPressed: () => context.read<AuthBloc>().add(
                    const AuthEvent.signOut(),
                  ),
            ),
          ],
        ),
        body: Stack(
          children: [
            // Анимация фона
            const Positioned.fill(child: AnimatedGradientDemo()),
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CalendarWidget(onDataChanged: _onDateSelected),
                        const Flexible(child: EventsInfoWindow()),
                        // const EventsInfoWindow()
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void openDialog(BuildContext context, DateTime eventDate) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(
        'Create Event',
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
      content: CreateEventScreen(
        selectedDate: eventDate,
      ),
      // actions: <Widget>[
      //   TextButton(
      //     style: TextButton.styleFrom(
      //       textStyle: Theme.of(context).textTheme.labelLarge,
      //     ),
      //     child: const Text('Accept'),
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //   ),
      // ],
    ),
  );
}
