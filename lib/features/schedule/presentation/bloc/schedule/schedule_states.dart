part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.initial() = _Initial;
  const factory ScheduleState.loading() = _Loading;
  const factory ScheduleState.loaded(List<EventEntity> events) = _Loaded;
  const factory ScheduleState.updated() = _Updated;
  const factory ScheduleState.empty() = _Empty;
  const factory ScheduleState.error(String string) = _Error;
}
