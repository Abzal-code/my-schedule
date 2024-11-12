part of 'schedule_usecases.dart';

class CreateEventUseCase implements UseCase<void, EventEntity> {
  final ScheduleRepository _repository;

  CreateEventUseCase(this._repository);

  @override
  Future<void> call(EventEntity schedule) => _repository.addEvent(schedule);
}
