import 'package:flutter/material.dart';
import 'package:my_shedule/features/schedule/domain/entities/event_entity.dart';

class EventsList extends StatelessWidget {
  final ScrollController scrollController;
  final List<EventEntity> events;

  const EventsList({
    super.key,
    required this.scrollController,
    required this.events,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return ListView.builder(
      controller: scrollController,
      itemCount: events.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(
            'Item $index',
            style: TextStyle(color: colorScheme.surface),
          ),
        );
      },
    );
  }
}
