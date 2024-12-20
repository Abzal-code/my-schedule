import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_shedule/core/base_bloc/base_bloc.dart';
import 'package:my_shedule/features/schedule/domain/entities/event_entity.dart';
import 'package:my_shedule/features/schedule/domain/usecases/schedule_usecases.dart';

part 'schedule_events.dart';
part 'schedule_states.dart';
part 'schedule_bloc.freezed.dart';

class ScheduleBloc extends BaseBloc<ScheduleEvent, ScheduleState> {
  final GetCombinedEventUseCase _getCombinedEventUseCase;
  final CreateEventUseCase _createEventUseCase;
  final UpdateEventUseCase _updateEventUseCase;
  final DeleteEventUseCase _deleteEventUseCase;

  late final StreamSubscription _subscription;

  ScheduleBloc({
    required GetCombinedEventUseCase getCombinedEventUseCase,
    required CreateEventUseCase createEventUseCase,
    required UpdateEventUseCase updateEventUseCase,
    required DeleteEventUseCase deleteEventUseCase,
  })  : _getCombinedEventUseCase = getCombinedEventUseCase,
        _createEventUseCase = createEventUseCase,
        _updateEventUseCase = updateEventUseCase,
        _deleteEventUseCase = deleteEventUseCase,
        super(const ScheduleState.loading()) {
    _subscription = _getCombinedEventUseCase(DateTime.now()).listen(
      (combined) {
        if (combined.filteredEvents.isEmpty) {
          emit(ScheduleState.empty(combined.allEvents));
        } else {
          emit(ScheduleState.loaded(
              combined.filteredEvents, combined.allEvents));
        }
      },
      onError: (error, stackTrace) {
        emit(ScheduleState.error(error.toString()));
      },
    );
  }

  @override
  Future<void> onEventHandler(
    ScheduleEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    await event.map(
      addEvent: (e) => _onAddEvent(e, emit),
      updateEvent: (e) => _onUpdateEvent(e, emit),
      deleteEvent: (e) => _onDeleteEvent(e, emit),
      getEventsByDate: (e) => _onGetEventsByDate(e, emit),
    );
  }

  Future<void> _onGetEventsByDate(
    _GetEventsByDate event,
    Emitter<ScheduleState> emit,
  ) async {
    _getCombinedEventUseCase(event.date);
  }

  Future<void> _onAddEvent(
    _AddEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    try {
      await _createEventUseCase(event.event);
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }

  Future<void> _onUpdateEvent(
    _UpdateEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    try {
      await _updateEventUseCase(event.event);
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }

  Future<void> _onDeleteEvent(
    _DeleteEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    try {
      await _deleteEventUseCase(event.event.id!);
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
