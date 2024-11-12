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
  ScheduleBloc({
    required LoadEventsUseCase loadEventsUseCase,
    required CreateEventUseCase createEventUseCase,
    required UpdateEventUseCase updateEventUseCase,
    required DeleteEventUseCase deleteEventUseCase,
  })  : _loadEventsUseCase = loadEventsUseCase,
        _createEventUseCase = createEventUseCase,
        _updateEventUseCase = updateEventUseCase,
        _deleteEventUseCase = deleteEventUseCase,
        super(const ScheduleState.initial());

  @override
  Future<void> onEventHandler(
      ScheduleEvent event, Emitter<ScheduleState> emit) {
    return event.map(
      loadEvents: (e) async => await _loadEvents(e, emit),
      addEvent: (e) async => await _createEvent(e, emit),
      updateEvent: (e) async => await _updateEvent(e, emit),
      deleteEvent: (e) async => await _deleteEvent(e, emit),
    );
  }

  Future<void> _loadEvents(
      _LoadEvents event, Emitter<ScheduleState> emit) async {
    emit(const ScheduleState.loading());
    await emit.forEach<List<EventEntity>>(
      _loadEventsUseCase.call(const NoParams()),
      onData: (events) => events.isEmpty
          ? const ScheduleState.empty()
          : ScheduleState.loaded(events),
      onError: (e, stackTrace) => ScheduleState.error(e.toString()),
    );
  }

  Future<void> _createEvent(
      _AddEvent event, Emitter<ScheduleState> emit) async {
    try {
      emit(const ScheduleState.loading());
      await _createEventUseCase.call(event.event);
      emit(const ScheduleState.updated());
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }

  Future<void> _updateEvent(
      _UpdateEvent event, Emitter<ScheduleState> emit) async {
    try {
      emit(const ScheduleState.loading());
      await _updateEventUseCase.call(event.event);
      emit(const ScheduleState.updated());
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }

  Future<void> _deleteEvent(
      _DeleteEvent event, Emitter<ScheduleState> emit) async {
    try {
      emit(const ScheduleState.loading());
      await _deleteEventUseCase.call(event.event.id!);
      emit(const ScheduleState.updated());
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }
}
