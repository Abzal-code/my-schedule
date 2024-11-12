part of 'schedule_usecases.dart';

class DeleteEventUseCase implements UseCase<void, String> {
  final ScheduleRepository _repository;
  DeleteEventUseCase(this._repository);
  @override
  Future<void> call(String id) => _repository.deleteEvent(id);
}
