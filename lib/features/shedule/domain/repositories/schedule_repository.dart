import 'package:my_shedule/features/shedule/domain/entities/schedule_entity.dart';

abstract class ScheduleRepository {
  Future<void> addSchedule(ScheduleEntity schedule);
  Future<List<ScheduleEntity>> getSchedules();
  Future<void> deleteSchedule(String id);
  Future<void> updateSchedule(ScheduleEntity schedule);
}
