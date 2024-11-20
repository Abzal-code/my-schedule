import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/core/utils/helpers.dart';
import 'package:my_shedule/features/auth/presentation/widgets/custom_button.dart';
import 'package:my_shedule/features/schedule/presentation/bloc/schedule/schedule_bloc.dart';
import 'package:my_shedule/features/schedule/presentation/widgets/choose_get_events_widget.dart';
import 'package:my_shedule/features/schedule/presentation/widgets/event_list.dart';
import 'package:my_shedule/features/schedule/presentation/widgets/grabber.dart';

class EventsInfoWindow extends StatefulWidget {
  final DateTime selectedDate;
  const EventsInfoWindow({super.key, required this.selectedDate});

  @override
  State<EventsInfoWindow> createState() => _EventsInfoWindowState();
}

class _EventsInfoWindowState extends State<EventsInfoWindow> {
  double _sheetPosition = 0.5;
  final double _dragSensitivity = 600;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: _sheetPosition,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20.0),
          ),
          alignment: Alignment.center,
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
              ChooseGetEvents(
                selectedDate: DateHelper.toDateTime(widget.selectedDate),
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
                      gotEventsByDate: (events) => EventsList(
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
