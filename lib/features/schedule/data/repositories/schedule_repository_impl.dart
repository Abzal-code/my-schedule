import 'package:my_shedule/core/di.dart';
import 'package:my_shedule/core/services/firestore/firestore_service.dart';
import 'package:my_shedule/features/schedule/domain/entities/event_entity.dart';
import 'package:my_shedule/features/schedule/domain/repositories/schedule_repository.dart';

class ScheduleRepositoryImpl implements ScheduleRepository {
  final FirestoreService _storageService = sl<FirestoreService>();

  @override
  Future<void> addEvent(EventEntity schedule) async {
    await _storageService.addEvent(schedule);
  }

  @override
  Future<void> deleteEvent(String id) async {
    await _storageService.deleteEvent(id);
  }

  @override
  Stream<List<EventEntity>> getEvents() {
    return _storageService.getEvents();
  }

  @override
  Future<void> updateEvent(EventEntity schedule) {
    return _storageService.updateEvent(schedule);
  }

  @override
  Stream<List<EventEntity>> getEventsByDate(DateTime date) {
    return _storageService.getEventsByDate(date);
  }
}
