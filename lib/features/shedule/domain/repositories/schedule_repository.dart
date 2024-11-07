import 'package:my_shedule/features/shedule/domain/entities/event_entity.dart';

abstract class ScheduleRepository {
  Future<void> addEvent(EventEntity schedule);
  Stream<List<EventEntity>> getEvents();
  Future<void> deleteEvent(String id);
  Future<void> updateEvent(EventEntity schedule);
}
