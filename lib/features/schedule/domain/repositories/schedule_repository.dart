import 'package:my_shedule/features/schedule/domain/entities/event_entity.dart';

abstract class ScheduleRepository {
  Future<void> addEvent(EventEntity schedule);
  Stream<List<EventEntity>> getEvents();
  Stream<List<EventEntity>> getEventsByDate(DateTime date);
  Future<void> deleteEvent(String id);
  Future<void> updateEvent(EventEntity schedule);
}
