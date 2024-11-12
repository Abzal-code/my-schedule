part of 'schedule_usecases.dart';

class UpdateEventUseCase implements UseCase<void, EventEntity> {
  final ScheduleRepository repository;

  UpdateEventUseCase(this.repository);

  @override
  Future<void> call(EventEntity params) async {
    await repository.updateEvent(params);
  }
}
