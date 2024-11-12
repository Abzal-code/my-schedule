part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.loadEvents() = _LoadEvents;
  const factory ScheduleEvent.addEvent(EventEntity event) = _AddEvent;
  const factory ScheduleEvent.deleteEvent(EventEntity event) = _DeleteEvent;
  const factory ScheduleEvent.updateEvent(EventEntity event) = _UpdateEvent;
}
