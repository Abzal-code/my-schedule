import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_shedule/core/base_bloc/base_bloc.dart';
import 'package:my_shedule/core/usecases/usecase.dart';
import 'package:my_shedule/features/schedule/domain/entities/event_entity.dart';
import 'package:my_shedule/features/schedule/domain/usecases/schedule_usecases.dart';

part 'schedule_events.dart';
part 'schedule_states.dart';
part 'schedule_bloc.freezed.dart';

class ScheduleBloc extends BaseBloc<ScheduleEvent, ScheduleState> {
  final LoadEventsUseCase _loadEventsUseCase;
  final CreateEventUseCase _createEventUseCase;
  final UpdateEventUseCase _updateEventUseCase;
  final DeleteEventUseCase _deleteEventUseCase;
  final GetEventsByDateUseCase _getEventsByDateUseCase;
  ScheduleBloc({
    required LoadEventsUseCase loadEventsUseCase,
    required CreateEventUseCase createEventUseCase,
    required UpdateEventUseCase updateEventUseCase,
    required DeleteEventUseCase deleteEventUseCase,
    required GetEventsByDateUseCase getEventsByDateUseCase,
  })  : _loadEventsUseCase = loadEventsUseCase,
        _createEventUseCase = createEventUseCase,
        _updateEventUseCase = updateEventUseCase,
        _deleteEventUseCase = deleteEventUseCase,
        _getEventsByDateUseCase = getEventsByDateUseCase,
        super(const ScheduleState.initial());

  @override
  Future<void> onEventHandler(
    ScheduleEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    await event.map(
      loadEvents: (e) => _loadEvents(e, emit),
      addEvent: (e) => _createEvent(e, emit),
      updateEvent: (e) => _updateEvent(e, emit),
      deleteEvent: (e) => _deleteEvent(e, emit),
      getEventsByDate: (e) => _getEventsByDate(e, emit),
    );
  }

  Future<void> _loadEvents(
    _LoadEvents event,
    Emitter<ScheduleState> emit,
  ) async {
    emit(const ScheduleState.loading());

    try {
      await _emitLoadedEvents(emit);
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }

  Future<void> _emitLoadedEvents(Emitter<ScheduleState> emit) async {
    try {
      await emit.forEach<List<EventEntity>>(
        _loadEventsUseCase.call(const NoParams()),
        onData: _mapEventsToState,
      );
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }

  ScheduleState _mapEventsToState(List<EventEntity> events) {
    if (events.isEmpty) {
      return const ScheduleState.empty();
    } else {
      return ScheduleState.loaded(events);
    }
  }

  Future<void> _getEventsByDate(
    _GetEventsByDate event,
    Emitter<ScheduleState> emit,
  ) async {
    emit(const ScheduleState.loading());
    try {
      await emit.forEach<List<EventEntity>>(
        _getEventsByDateUseCase.call(event.date),
        onData: _mapEventsToState,
      );
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }

  Future<void> _createEvent(
    _AddEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    try {
      await _createEventUseCase.call(event.event);
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }

  Future<void> _updateEvent(
    _UpdateEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    emit(const ScheduleState.loading());
    try {
      await _updateEventUseCase.call(event.event);
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }

  Future<void> _deleteEvent(
    _DeleteEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    try {
      await _deleteEventUseCase.call(event.event.id!);
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }
}
