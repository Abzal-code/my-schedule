import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/features/schedule/presentation/bloc/schedule/schedule_bloc.dart';
import 'package:my_shedule/features/schedule/presentation/widgets/event_list.dart';
import 'package:my_shedule/features/schedule/presentation/widgets/grabber.dart';

class EventsInfoWindow extends StatefulWidget {
  const EventsInfoWindow({super.key});

  @override
  State<EventsInfoWindow> createState() => _EventsInfoWindowState();
}

class _EventsInfoWindowState extends State<EventsInfoWindow> {
  double _sheetPosition = 0.5;
  final double _dragSensitivity = 600;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return DraggableScrollableSheet(
      initialChildSize: _sheetPosition,
      builder: (BuildContext context, ScrollController scrollController) {
        return ColoredBox(
          color: colorScheme.secondary,
          child: Column(
            children: <Widget>[
              Grabber(
                onVerticalDragUpdate: (DragUpdateDetails details) {
                  setState(() {
                    _sheetPosition -= details.delta.dy / _dragSensitivity;
                    if (_sheetPosition < 0.25) {
                      _sheetPosition = 0.25;
                    }
                    if (_sheetPosition > 1.0) {
                      _sheetPosition = 1.0;
                    }
                  });
                },
              ),
              Flexible(
                child: BlocBuilder<ScheduleBloc, ScheduleState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loaded: (events) => EventsList(
                        scrollController: scrollController,
                        events: events,
                      ),
                      empty: () => const Center(
                        child: Text(
                          'No events',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      orElse: () => Container(
                        color: Colors.red,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
