import 'package:my_shedule/features/shedule/domain/entities/schedule_entity.dart';

abstract class ScheduleRepository {
  Future<void> addSchedule(EventEntity schedule);
  Future<List<EventEntity>> getSchedules();
  Future<void> deleteSchedule(String id);
  Future<void> updateSchedule(EventEntity schedule);
}
