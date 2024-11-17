import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/core/di.dart';
import 'package:my_shedule/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:my_shedule/features/schedule/domain/entities/event_entity.dart';
import 'package:my_shedule/features/schedule/presentation/bloc/schedule/schedule_bloc.dart';
import 'package:my_shedule/features/schedule/presentation/widgets/create_event_dialog.dart';
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
    return Scaffold(
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: CalendarWidget(onDataChanged: _onDateSelected),
                      ),
                      const Flexible(child: EventsInfoWindow()),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void openDialog(BuildContext context, DateTime eventDate,
    {EventEntity? event}) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) => BlocProvider.value(
      value: context.read<ScheduleBloc>(),
      child: CreateEventDialog(selectedDate: eventDate, event: event),
    ),
  );
}
