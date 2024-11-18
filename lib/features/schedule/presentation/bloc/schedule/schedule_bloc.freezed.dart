// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(EventEntity event) addEvent,
    required TResult Function(DateTime date) getEventsByDate,
    required TResult Function(EventEntity event) deleteEvent,
    required TResult Function(EventEntity event) updateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(EventEntity event)? addEvent,
    TResult? Function(DateTime date)? getEventsByDate,
    TResult? Function(EventEntity event)? deleteEvent,
    TResult? Function(EventEntity event)? updateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(EventEntity event)? addEvent,
    TResult Function(DateTime date)? getEventsByDate,
    TResult Function(EventEntity event)? deleteEvent,
    TResult Function(EventEntity event)? updateEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_GetEventsByDate value) getEventsByDate,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_GetEventsByDate value)? getEventsByDate,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_GetEventsByDate value)? getEventsByDate,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res, ScheduleEvent>;
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res, $Val extends ScheduleEvent>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadEventsImplCopyWith<$Res> {
  factory _$$LoadEventsImplCopyWith(
          _$LoadEventsImpl value, $Res Function(_$LoadEventsImpl) then) =
      __$$LoadEventsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadEventsImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$LoadEventsImpl>
    implements _$$LoadEventsImplCopyWith<$Res> {
  __$$LoadEventsImplCopyWithImpl(
      _$LoadEventsImpl _value, $Res Function(_$LoadEventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadEventsImpl implements _LoadEvents {
  const _$LoadEventsImpl();

  @override
  String toString() {
    return 'ScheduleEvent.loadEvents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadEventsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(EventEntity event) addEvent,
    required TResult Function(DateTime date) getEventsByDate,
    required TResult Function(EventEntity event) deleteEvent,
    required TResult Function(EventEntity event) updateEvent,
  }) {
    return loadEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(EventEntity event)? addEvent,
    TResult? Function(DateTime date)? getEventsByDate,
    TResult? Function(EventEntity event)? deleteEvent,
    TResult? Function(EventEntity event)? updateEvent,
  }) {
    return loadEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(EventEntity event)? addEvent,
    TResult Function(DateTime date)? getEventsByDate,
    TResult Function(EventEntity event)? deleteEvent,
    TResult Function(EventEntity event)? updateEvent,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_GetEventsByDate value) getEventsByDate,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
  }) {
    return loadEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_GetEventsByDate value)? getEventsByDate,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
  }) {
    return loadEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_GetEventsByDate value)? getEventsByDate,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents(this);
    }
    return orElse();
  }
}

abstract class _LoadEvents implements ScheduleEvent {
  const factory _LoadEvents() = _$LoadEventsImpl;
}

/// @nodoc
abstract class _$$AddEventImplCopyWith<$Res> {
  factory _$$AddEventImplCopyWith(
          _$AddEventImpl value, $Res Function(_$AddEventImpl) then) =
      __$$AddEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventEntity event});
}

/// @nodoc
class __$$AddEventImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$AddEventImpl>
    implements _$$AddEventImplCopyWith<$Res> {
  __$$AddEventImplCopyWithImpl(
      _$AddEventImpl _value, $Res Function(_$AddEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$AddEventImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity,
    ));
  }
}

/// @nodoc

class _$AddEventImpl implements _AddEvent {
  const _$AddEventImpl(this.event);

  @override
  final EventEntity event;

  @override
  String toString() {
    return 'ScheduleEvent.addEvent(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEventImplCopyWith<_$AddEventImpl> get copyWith =>
      __$$AddEventImplCopyWithImpl<_$AddEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(EventEntity event) addEvent,
    required TResult Function(DateTime date) getEventsByDate,
    required TResult Function(EventEntity event) deleteEvent,
    required TResult Function(EventEntity event) updateEvent,
  }) {
    return addEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(EventEntity event)? addEvent,
    TResult? Function(DateTime date)? getEventsByDate,
    TResult? Function(EventEntity event)? deleteEvent,
    TResult? Function(EventEntity event)? updateEvent,
  }) {
    return addEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(EventEntity event)? addEvent,
    TResult Function(DateTime date)? getEventsByDate,
    TResult Function(EventEntity event)? deleteEvent,
    TResult Function(EventEntity event)? updateEvent,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_GetEventsByDate value) getEventsByDate,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
  }) {
    return addEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_GetEventsByDate value)? getEventsByDate,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
  }) {
    return addEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_GetEventsByDate value)? getEventsByDate,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(this);
    }
    return orElse();
  }
}

abstract class _AddEvent implements ScheduleEvent {
  const factory _AddEvent(final EventEntity event) = _$AddEventImpl;

  EventEntity get event;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddEventImplCopyWith<_$AddEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEventsByDateImplCopyWith<$Res> {
  factory _$$GetEventsByDateImplCopyWith(_$GetEventsByDateImpl value,
          $Res Function(_$GetEventsByDateImpl) then) =
      __$$GetEventsByDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$GetEventsByDateImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$GetEventsByDateImpl>
    implements _$$GetEventsByDateImplCopyWith<$Res> {
  __$$GetEventsByDateImplCopyWithImpl(
      _$GetEventsByDateImpl _value, $Res Function(_$GetEventsByDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$GetEventsByDateImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GetEventsByDateImpl implements _GetEventsByDate {
  const _$GetEventsByDateImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'ScheduleEvent.getEventsByDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventsByDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventsByDateImplCopyWith<_$GetEventsByDateImpl> get copyWith =>
      __$$GetEventsByDateImplCopyWithImpl<_$GetEventsByDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(EventEntity event) addEvent,
    required TResult Function(DateTime date) getEventsByDate,
    required TResult Function(EventEntity event) deleteEvent,
    required TResult Function(EventEntity event) updateEvent,
  }) {
    return getEventsByDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(EventEntity event)? addEvent,
    TResult? Function(DateTime date)? getEventsByDate,
    TResult? Function(EventEntity event)? deleteEvent,
    TResult? Function(EventEntity event)? updateEvent,
  }) {
    return getEventsByDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(EventEntity event)? addEvent,
    TResult Function(DateTime date)? getEventsByDate,
    TResult Function(EventEntity event)? deleteEvent,
    TResult Function(EventEntity event)? updateEvent,
    required TResult orElse(),
  }) {
    if (getEventsByDate != null) {
      return getEventsByDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_GetEventsByDate value) getEventsByDate,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
  }) {
    return getEventsByDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_GetEventsByDate value)? getEventsByDate,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
  }) {
    return getEventsByDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_GetEventsByDate value)? getEventsByDate,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    required TResult orElse(),
  }) {
    if (getEventsByDate != null) {
      return getEventsByDate(this);
    }
    return orElse();
  }
}

abstract class _GetEventsByDate implements ScheduleEvent {
  const factory _GetEventsByDate(final DateTime date) = _$GetEventsByDateImpl;

  DateTime get date;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEventsByDateImplCopyWith<_$GetEventsByDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEventImplCopyWith<$Res> {
  factory _$$DeleteEventImplCopyWith(
          _$DeleteEventImpl value, $Res Function(_$DeleteEventImpl) then) =
      __$$DeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventEntity event});
}

/// @nodoc
class __$$DeleteEventImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$DeleteEventImpl>
    implements _$$DeleteEventImplCopyWith<$Res> {
  __$$DeleteEventImplCopyWithImpl(
      _$DeleteEventImpl _value, $Res Function(_$DeleteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$DeleteEventImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity,
    ));
  }
}

/// @nodoc

class _$DeleteEventImpl implements _DeleteEvent {
  const _$DeleteEventImpl(this.event);

  @override
  final EventEntity event;

  @override
  String toString() {
    return 'ScheduleEvent.deleteEvent(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      __$$DeleteEventImplCopyWithImpl<_$DeleteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(EventEntity event) addEvent,
    required TResult Function(DateTime date) getEventsByDate,
    required TResult Function(EventEntity event) deleteEvent,
    required TResult Function(EventEntity event) updateEvent,
  }) {
    return deleteEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(EventEntity event)? addEvent,
    TResult? Function(DateTime date)? getEventsByDate,
    TResult? Function(EventEntity event)? deleteEvent,
    TResult? Function(EventEntity event)? updateEvent,
  }) {
    return deleteEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(EventEntity event)? addEvent,
    TResult Function(DateTime date)? getEventsByDate,
    TResult Function(EventEntity event)? deleteEvent,
    TResult Function(EventEntity event)? updateEvent,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_GetEventsByDate value) getEventsByDate,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
  }) {
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_GetEventsByDate value)? getEventsByDate,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
  }) {
    return deleteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_GetEventsByDate value)? getEventsByDate,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class _DeleteEvent implements ScheduleEvent {
  const factory _DeleteEvent(final EventEntity event) = _$DeleteEventImpl;

  EventEntity get event;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateEventImplCopyWith<$Res> {
  factory _$$UpdateEventImplCopyWith(
          _$UpdateEventImpl value, $Res Function(_$UpdateEventImpl) then) =
      __$$UpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventEntity event});
}

/// @nodoc
class __$$UpdateEventImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$UpdateEventImpl>
    implements _$$UpdateEventImplCopyWith<$Res> {
  __$$UpdateEventImplCopyWithImpl(
      _$UpdateEventImpl _value, $Res Function(_$UpdateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$UpdateEventImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity,
    ));
  }
}

/// @nodoc

class _$UpdateEventImpl implements _UpdateEvent {
  const _$UpdateEventImpl(this.event);

  @override
  final EventEntity event;

  @override
  String toString() {
    return 'ScheduleEvent.updateEvent(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      __$$UpdateEventImplCopyWithImpl<_$UpdateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(EventEntity event) addEvent,
    required TResult Function(DateTime date) getEventsByDate,
    required TResult Function(EventEntity event) deleteEvent,
    required TResult Function(EventEntity event) updateEvent,
  }) {
    return updateEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(EventEntity event)? addEvent,
    TResult? Function(DateTime date)? getEventsByDate,
    TResult? Function(EventEntity event)? deleteEvent,
    TResult? Function(EventEntity event)? updateEvent,
  }) {
    return updateEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(EventEntity event)? addEvent,
    TResult Function(DateTime date)? getEventsByDate,
    TResult Function(EventEntity event)? deleteEvent,
    TResult Function(EventEntity event)? updateEvent,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_GetEventsByDate value) getEventsByDate,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
  }) {
    return updateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_GetEventsByDate value)? getEventsByDate,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
  }) {
    return updateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_GetEventsByDate value)? getEventsByDate,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent implements ScheduleEvent {
  const factory _UpdateEvent(final EventEntity event) = _$UpdateEventImpl;

  EventEntity get event;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(List<EventEntity> events) gotEventsByDate,
    required TResult Function() updated,
    required TResult Function() empty,
    required TResult Function(String string) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(List<EventEntity> events)? gotEventsByDate,
    TResult? Function()? updated,
    TResult? Function()? empty,
    TResult? Function(String string)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(List<EventEntity> events)? gotEventsByDate,
    TResult Function()? updated,
    TResult Function()? empty,
    TResult Function(String string)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GotEventsByDate value) gotEventsByDate,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GotEventsByDate value)? gotEventsByDate,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GotEventsByDate value)? gotEventsByDate,
    TResult Function(_Updated value)? updated,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res, ScheduleState>;
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res, $Val extends ScheduleState>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ScheduleState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(List<EventEntity> events) gotEventsByDate,
    required TResult Function() updated,
    required TResult Function() empty,
    required TResult Function(String string) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(List<EventEntity> events)? gotEventsByDate,
    TResult? Function()? updated,
    TResult? Function()? empty,
    TResult? Function(String string)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(List<EventEntity> events)? gotEventsByDate,
    TResult Function()? updated,
    TResult Function()? empty,
    TResult Function(String string)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GotEventsByDate value) gotEventsByDate,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GotEventsByDate value)? gotEventsByDate,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GotEventsByDate value)? gotEventsByDate,
    TResult Function(_Updated value)? updated,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ScheduleState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ScheduleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(List<EventEntity> events) gotEventsByDate,
    required TResult Function() updated,
    required TResult Function() empty,
    required TResult Function(String string) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(List<EventEntity> events)? gotEventsByDate,
    TResult? Function()? updated,
    TResult? Function()? empty,
    TResult? Function(String string)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(List<EventEntity> events)? gotEventsByDate,
    TResult Function()? updated,
    TResult Function()? empty,
    TResult Function(String string)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GotEventsByDate value) gotEventsByDate,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GotEventsByDate value)? gotEventsByDate,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GotEventsByDate value)? gotEventsByDate,
    TResult Function(_Updated value)? updated,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ScheduleState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EventEntity> events});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$LoadedImpl(
      null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<EventEntity> events) : _events = events;

  final List<EventEntity> _events;
  @override
  List<EventEntity> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'ScheduleState.loaded(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(List<EventEntity> events) gotEventsByDate,
    required TResult Function() updated,
    required TResult Function() empty,
    required TResult Function(String string) error,
  }) {
    return loaded(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(List<EventEntity> events)? gotEventsByDate,
    TResult? Function()? updated,
    TResult? Function()? empty,
    TResult? Function(String string)? error,
  }) {
    return loaded?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(List<EventEntity> events)? gotEventsByDate,
    TResult Function()? updated,
    TResult Function()? empty,
    TResult Function(String string)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GotEventsByDate value) gotEventsByDate,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GotEventsByDate value)? gotEventsByDate,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GotEventsByDate value)? gotEventsByDate,
    TResult Function(_Updated value)? updated,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ScheduleState {
  const factory _Loaded(final List<EventEntity> events) = _$LoadedImpl;

  List<EventEntity> get events;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GotEventsByDateImplCopyWith<$Res> {
  factory _$$GotEventsByDateImplCopyWith(_$GotEventsByDateImpl value,
          $Res Function(_$GotEventsByDateImpl) then) =
      __$$GotEventsByDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EventEntity> events});
}

/// @nodoc
class __$$GotEventsByDateImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$GotEventsByDateImpl>
    implements _$$GotEventsByDateImplCopyWith<$Res> {
  __$$GotEventsByDateImplCopyWithImpl(
      _$GotEventsByDateImpl _value, $Res Function(_$GotEventsByDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$GotEventsByDateImpl(
      null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
    ));
  }
}

/// @nodoc

class _$GotEventsByDateImpl implements _GotEventsByDate {
  const _$GotEventsByDateImpl(final List<EventEntity> events)
      : _events = events;

  final List<EventEntity> _events;
  @override
  List<EventEntity> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'ScheduleState.gotEventsByDate(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotEventsByDateImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotEventsByDateImplCopyWith<_$GotEventsByDateImpl> get copyWith =>
      __$$GotEventsByDateImplCopyWithImpl<_$GotEventsByDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(List<EventEntity> events) gotEventsByDate,
    required TResult Function() updated,
    required TResult Function() empty,
    required TResult Function(String string) error,
  }) {
    return gotEventsByDate(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(List<EventEntity> events)? gotEventsByDate,
    TResult? Function()? updated,
    TResult? Function()? empty,
    TResult? Function(String string)? error,
  }) {
    return gotEventsByDate?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(List<EventEntity> events)? gotEventsByDate,
    TResult Function()? updated,
    TResult Function()? empty,
    TResult Function(String string)? error,
    required TResult orElse(),
  }) {
    if (gotEventsByDate != null) {
      return gotEventsByDate(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GotEventsByDate value) gotEventsByDate,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return gotEventsByDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GotEventsByDate value)? gotEventsByDate,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return gotEventsByDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GotEventsByDate value)? gotEventsByDate,
    TResult Function(_Updated value)? updated,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (gotEventsByDate != null) {
      return gotEventsByDate(this);
    }
    return orElse();
  }
}

abstract class _GotEventsByDate implements ScheduleState {
  const factory _GotEventsByDate(final List<EventEntity> events) =
      _$GotEventsByDateImpl;

  List<EventEntity> get events;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotEventsByDateImplCopyWith<_$GotEventsByDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl();

  @override
  String toString() {
    return 'ScheduleState.updated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(List<EventEntity> events) gotEventsByDate,
    required TResult Function() updated,
    required TResult Function() empty,
    required TResult Function(String string) error,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(List<EventEntity> events)? gotEventsByDate,
    TResult? Function()? updated,
    TResult? Function()? empty,
    TResult? Function(String string)? error,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(List<EventEntity> events)? gotEventsByDate,
    TResult Function()? updated,
    TResult Function()? empty,
    TResult Function(String string)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GotEventsByDate value) gotEventsByDate,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GotEventsByDate value)? gotEventsByDate,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GotEventsByDate value)? gotEventsByDate,
    TResult Function(_Updated value)? updated,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements ScheduleState {
  const factory _Updated() = _$UpdatedImpl;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'ScheduleState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(List<EventEntity> events) gotEventsByDate,
    required TResult Function() updated,
    required TResult Function() empty,
    required TResult Function(String string) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(List<EventEntity> events)? gotEventsByDate,
    TResult? Function()? updated,
    TResult? Function()? empty,
    TResult? Function(String string)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(List<EventEntity> events)? gotEventsByDate,
    TResult Function()? updated,
    TResult Function()? empty,
    TResult Function(String string)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GotEventsByDate value) gotEventsByDate,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GotEventsByDate value)? gotEventsByDate,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GotEventsByDate value)? gotEventsByDate,
    TResult Function(_Updated value)? updated,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements ScheduleState {
  const factory _Empty() = _$EmptyImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String string});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? string = null,
  }) {
    return _then(_$ErrorImpl(
      null == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.string);

  @override
  final String string;

  @override
  String toString() {
    return 'ScheduleState.error(string: $string)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.string, string) || other.string == string));
  }

  @override
  int get hashCode => Object.hash(runtimeType, string);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(List<EventEntity> events) gotEventsByDate,
    required TResult Function() updated,
    required TResult Function() empty,
    required TResult Function(String string) error,
  }) {
    return error(string);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(List<EventEntity> events)? gotEventsByDate,
    TResult? Function()? updated,
    TResult? Function()? empty,
    TResult? Function(String string)? error,
  }) {
    return error?.call(string);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(List<EventEntity> events)? gotEventsByDate,
    TResult Function()? updated,
    TResult Function()? empty,
    TResult Function(String string)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(string);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_GotEventsByDate value) gotEventsByDate,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_GotEventsByDate value)? gotEventsByDate,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_GotEventsByDate value)? gotEventsByDate,
    TResult Function(_Updated value)? updated,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ScheduleState {
  const factory _Error(final String string) = _$ErrorImpl;

  String get string;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
