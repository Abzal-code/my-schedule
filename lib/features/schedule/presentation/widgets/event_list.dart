import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/core/utils/helpers.dart';
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
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) => Divider(
        color: Colors.white.withOpacity(0.5),
      ),
      controller: scrollController,
      itemCount: events.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: ListTile(
            leading: Icon(
              Icons.event,
              color: Colors.white.withOpacity(0.5),
            ),
            title: Text(
              events[index].title,
              style: TextStyle(
                color: colorScheme.surface,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Text(
                  '${events[index].eventDate}',
                  style: TextStyle(
                    color: colorScheme.surface,
                    fontSize: 12,
                  ),
                ),
                Text(
                  ' | ${events[index].getTimeOnString}',
                  style: TextStyle(
                    color: colorScheme.surface,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  onPressed: () => openDialog(context, events[index].eventDate,
                      event: events[index]),
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () => context.read<ScheduleBloc>().add(
                        ScheduleEvent.deleteEvent(
                          events[index],
                        ),
                      ),
                  icon: const Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
            onTap: () => print(events[index].id),
          ),
        );
      },
    );
  }
}
