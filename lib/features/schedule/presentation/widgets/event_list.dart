import 'package:flutter/material.dart';
import 'package:my_shedule/core/di.dart';
import 'package:my_shedule/core/di.dart';
import 'package:my_shedule/features/schedule/domain/entities/event_entity.dart';
import 'package:my_shedule/features/schedule/presentation/bloc/schedule/schedule_bloc.dart';
import 'package:my_shedule/features/schedule/presentation/pages/schedule_screen.dart';

class EventsList extends StatelessWidget {
  final ScrollController? scrollController;
  final List<EventEntity> events;

  const EventsList({
    super.key,
    this.scrollController,
    required this.events,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return ListView.builder(
      controller: scrollController,
      itemCount: events.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: ListTile(
            leading: const Icon(Icons.event),
            title: Text(
              events[index].title,
              style: const TextStyle(color: Colors.blue),
            ),
            subtitle: Text(events[index].description ?? '',
                style: TextStyle(color: colorScheme.surface)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () => openDialog(context, events[index].eventDate,
                      event: events[index]),
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                    onPressed: () => sl<ScheduleBloc>().add(
                          ScheduleEvent.deleteEvent(
                            events[index],
                          ),
                        ),
                    icon: const Icon(Icons.delete, color: Colors.red)),
              ],
            ),
            onTap: () => print(events[index].id),
          ),
        );
      },
    );
  }
}
