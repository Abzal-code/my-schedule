part of 'schedule_usecases.dart';


class CombinedEvents {
  final List<EventEntity> allEvents;
  final List<EventEntity> filteredEvents;

  CombinedEvents({required this.allEvents, required this.filteredEvents});
}

class GetCombinedEventUseCase extends UseCaseStream<CombinedEvents, DateTime> {
  final ScheduleRepository _repository;
  final BehaviorSubject<DateTime> _selectedDateSubject = BehaviorSubject<DateTime>.seeded(DateTime.now());

  GetCombinedEventUseCase(this._repository);

  @override
  Stream<CombinedEvents> call(DateTime params) {
    _selectedDateSubject.add(params);
    final allEventsStream = _repository.getEvents();
    final filteredEventsStream = _selectedDateSubject.switchMap((date) {
      return _repository.getEventsByDate(date);
    });

    return Rx.combineLatest2<List<EventEntity>, List<EventEntity>, CombinedEvents>(
      allEventsStream,
      filteredEventsStream,
      (all, filtered) => CombinedEvents(allEvents: all, filteredEvents: filtered),
    );
  }
}

