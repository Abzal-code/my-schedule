part of 'schedule_usecases.dart';

class GetEventsByDateUseCase
    extends UseCaseStream<List<EventEntity>, DateTime> {
  final ScheduleRepository _repository;
  GetEventsByDateUseCase(this._repository);

  @override
  Stream<List<EventEntity>> call(DateTime params) {
    return _repository.getEventsByDate(params);
  }
}
