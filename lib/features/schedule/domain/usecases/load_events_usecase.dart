part of 'schedule_usecases.dart';

class LoadEventsUseCase extends UseCaseStream<List<EventEntity>, NoParams> {
  final ScheduleRepository _repository;

  LoadEventsUseCase(this._repository);

  @override
  Stream<List<EventEntity>> call(NoParams params) {
    return _repository.getEvents();
  }
}
