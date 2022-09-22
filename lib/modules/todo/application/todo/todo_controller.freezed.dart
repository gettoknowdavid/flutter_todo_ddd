// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<TodoFailure, List<Todo?>> either)
        todosReceived,
    required TResult Function() watchAll,
    required TResult Function() watchDone,
    required TResult Function() watchToday,
    required TResult Function() watchUncompleted,
    required TResult Function() watchUpcoming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodosReceived value) todosReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchDone value) watchDone,
    required TResult Function(_WatchToday value) watchToday,
    required TResult Function(_WatchUncompleted value) watchUncompleted,
    required TResult Function(_WatchUpcoming value) watchUpcoming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res> implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  final TodoEvent _value;
  // ignore: unused_field
  final $Res Function(TodoEvent) _then;
}

/// @nodoc
abstract class _$$_TodosReceivedCopyWith<$Res> {
  factory _$$_TodosReceivedCopyWith(
          _$_TodosReceived value, $Res Function(_$_TodosReceived) then) =
      __$$_TodosReceivedCopyWithImpl<$Res>;
  $Res call({Either<TodoFailure, List<Todo?>> either});
}

/// @nodoc
class __$$_TodosReceivedCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$$_TodosReceivedCopyWith<$Res> {
  __$$_TodosReceivedCopyWithImpl(
      _$_TodosReceived _value, $Res Function(_$_TodosReceived) _then)
      : super(_value, (v) => _then(v as _$_TodosReceived));

  @override
  _$_TodosReceived get _value => super._value as _$_TodosReceived;

  @override
  $Res call({
    Object? either = freezed,
  }) {
    return _then(_$_TodosReceived(
      either == freezed
          ? _value.either
          : either // ignore: cast_nullable_to_non_nullable
              as Either<TodoFailure, List<Todo?>>,
    ));
  }
}

/// @nodoc

class _$_TodosReceived implements _TodosReceived {
  const _$_TodosReceived(this.either);

  @override
  final Either<TodoFailure, List<Todo?>> either;

  @override
  String toString() {
    return 'TodoEvent.todosReceived(either: $either)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodosReceived &&
            const DeepCollectionEquality().equals(other.either, either));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(either));

  @JsonKey(ignore: true)
  @override
  _$$_TodosReceivedCopyWith<_$_TodosReceived> get copyWith =>
      __$$_TodosReceivedCopyWithImpl<_$_TodosReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<TodoFailure, List<Todo?>> either)
        todosReceived,
    required TResult Function() watchAll,
    required TResult Function() watchDone,
    required TResult Function() watchToday,
    required TResult Function() watchUncompleted,
    required TResult Function() watchUpcoming,
  }) {
    return todosReceived(either);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
  }) {
    return todosReceived?.call(either);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
    required TResult orElse(),
  }) {
    if (todosReceived != null) {
      return todosReceived(either);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodosReceived value) todosReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchDone value) watchDone,
    required TResult Function(_WatchToday value) watchToday,
    required TResult Function(_WatchUncompleted value) watchUncompleted,
    required TResult Function(_WatchUpcoming value) watchUpcoming,
  }) {
    return todosReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
  }) {
    return todosReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
    required TResult orElse(),
  }) {
    if (todosReceived != null) {
      return todosReceived(this);
    }
    return orElse();
  }
}

abstract class _TodosReceived implements TodoEvent {
  const factory _TodosReceived(final Either<TodoFailure, List<Todo?>> either) =
      _$_TodosReceived;

  Either<TodoFailure, List<Todo?>> get either;
  @JsonKey(ignore: true)
  _$$_TodosReceivedCopyWith<_$_TodosReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WatchAllCopyWith<$Res> {
  factory _$$_WatchAllCopyWith(
          _$_WatchAll value, $Res Function(_$_WatchAll) then) =
      __$$_WatchAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchAllCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$$_WatchAllCopyWith<$Res> {
  __$$_WatchAllCopyWithImpl(
      _$_WatchAll _value, $Res Function(_$_WatchAll) _then)
      : super(_value, (v) => _then(v as _$_WatchAll));

  @override
  _$_WatchAll get _value => super._value as _$_WatchAll;
}

/// @nodoc

class _$_WatchAll implements _WatchAll {
  const _$_WatchAll();

  @override
  String toString() {
    return 'TodoEvent.watchAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<TodoFailure, List<Todo?>> either)
        todosReceived,
    required TResult Function() watchAll,
    required TResult Function() watchDone,
    required TResult Function() watchToday,
    required TResult Function() watchUncompleted,
    required TResult Function() watchUpcoming,
  }) {
    return watchAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
  }) {
    return watchAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodosReceived value) todosReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchDone value) watchDone,
    required TResult Function(_WatchToday value) watchToday,
    required TResult Function(_WatchUncompleted value) watchUncompleted,
    required TResult Function(_WatchUpcoming value) watchUpcoming,
  }) {
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
  }) {
    return watchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements TodoEvent {
  const factory _WatchAll() = _$_WatchAll;
}

/// @nodoc
abstract class _$$_WatchDoneCopyWith<$Res> {
  factory _$$_WatchDoneCopyWith(
          _$_WatchDone value, $Res Function(_$_WatchDone) then) =
      __$$_WatchDoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchDoneCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$$_WatchDoneCopyWith<$Res> {
  __$$_WatchDoneCopyWithImpl(
      _$_WatchDone _value, $Res Function(_$_WatchDone) _then)
      : super(_value, (v) => _then(v as _$_WatchDone));

  @override
  _$_WatchDone get _value => super._value as _$_WatchDone;
}

/// @nodoc

class _$_WatchDone implements _WatchDone {
  const _$_WatchDone();

  @override
  String toString() {
    return 'TodoEvent.watchDone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<TodoFailure, List<Todo?>> either)
        todosReceived,
    required TResult Function() watchAll,
    required TResult Function() watchDone,
    required TResult Function() watchToday,
    required TResult Function() watchUncompleted,
    required TResult Function() watchUpcoming,
  }) {
    return watchDone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
  }) {
    return watchDone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
    required TResult orElse(),
  }) {
    if (watchDone != null) {
      return watchDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodosReceived value) todosReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchDone value) watchDone,
    required TResult Function(_WatchToday value) watchToday,
    required TResult Function(_WatchUncompleted value) watchUncompleted,
    required TResult Function(_WatchUpcoming value) watchUpcoming,
  }) {
    return watchDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
  }) {
    return watchDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
    required TResult orElse(),
  }) {
    if (watchDone != null) {
      return watchDone(this);
    }
    return orElse();
  }
}

abstract class _WatchDone implements TodoEvent {
  const factory _WatchDone() = _$_WatchDone;
}

/// @nodoc
abstract class _$$_WatchTodayCopyWith<$Res> {
  factory _$$_WatchTodayCopyWith(
          _$_WatchToday value, $Res Function(_$_WatchToday) then) =
      __$$_WatchTodayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchTodayCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$$_WatchTodayCopyWith<$Res> {
  __$$_WatchTodayCopyWithImpl(
      _$_WatchToday _value, $Res Function(_$_WatchToday) _then)
      : super(_value, (v) => _then(v as _$_WatchToday));

  @override
  _$_WatchToday get _value => super._value as _$_WatchToday;
}

/// @nodoc

class _$_WatchToday implements _WatchToday {
  const _$_WatchToday();

  @override
  String toString() {
    return 'TodoEvent.watchToday()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchToday);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<TodoFailure, List<Todo?>> either)
        todosReceived,
    required TResult Function() watchAll,
    required TResult Function() watchDone,
    required TResult Function() watchToday,
    required TResult Function() watchUncompleted,
    required TResult Function() watchUpcoming,
  }) {
    return watchToday();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
  }) {
    return watchToday?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
    required TResult orElse(),
  }) {
    if (watchToday != null) {
      return watchToday();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodosReceived value) todosReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchDone value) watchDone,
    required TResult Function(_WatchToday value) watchToday,
    required TResult Function(_WatchUncompleted value) watchUncompleted,
    required TResult Function(_WatchUpcoming value) watchUpcoming,
  }) {
    return watchToday(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
  }) {
    return watchToday?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
    required TResult orElse(),
  }) {
    if (watchToday != null) {
      return watchToday(this);
    }
    return orElse();
  }
}

abstract class _WatchToday implements TodoEvent {
  const factory _WatchToday() = _$_WatchToday;
}

/// @nodoc
abstract class _$$_WatchUncompletedCopyWith<$Res> {
  factory _$$_WatchUncompletedCopyWith(
          _$_WatchUncompleted value, $Res Function(_$_WatchUncompleted) then) =
      __$$_WatchUncompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchUncompletedCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res>
    implements _$$_WatchUncompletedCopyWith<$Res> {
  __$$_WatchUncompletedCopyWithImpl(
      _$_WatchUncompleted _value, $Res Function(_$_WatchUncompleted) _then)
      : super(_value, (v) => _then(v as _$_WatchUncompleted));

  @override
  _$_WatchUncompleted get _value => super._value as _$_WatchUncompleted;
}

/// @nodoc

class _$_WatchUncompleted implements _WatchUncompleted {
  const _$_WatchUncompleted();

  @override
  String toString() {
    return 'TodoEvent.watchUncompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchUncompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<TodoFailure, List<Todo?>> either)
        todosReceived,
    required TResult Function() watchAll,
    required TResult Function() watchDone,
    required TResult Function() watchToday,
    required TResult Function() watchUncompleted,
    required TResult Function() watchUpcoming,
  }) {
    return watchUncompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
  }) {
    return watchUncompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
    required TResult orElse(),
  }) {
    if (watchUncompleted != null) {
      return watchUncompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodosReceived value) todosReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchDone value) watchDone,
    required TResult Function(_WatchToday value) watchToday,
    required TResult Function(_WatchUncompleted value) watchUncompleted,
    required TResult Function(_WatchUpcoming value) watchUpcoming,
  }) {
    return watchUncompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
  }) {
    return watchUncompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
    required TResult orElse(),
  }) {
    if (watchUncompleted != null) {
      return watchUncompleted(this);
    }
    return orElse();
  }
}

abstract class _WatchUncompleted implements TodoEvent {
  const factory _WatchUncompleted() = _$_WatchUncompleted;
}

/// @nodoc
abstract class _$$_WatchUpcomingCopyWith<$Res> {
  factory _$$_WatchUpcomingCopyWith(
          _$_WatchUpcoming value, $Res Function(_$_WatchUpcoming) then) =
      __$$_WatchUpcomingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchUpcomingCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$$_WatchUpcomingCopyWith<$Res> {
  __$$_WatchUpcomingCopyWithImpl(
      _$_WatchUpcoming _value, $Res Function(_$_WatchUpcoming) _then)
      : super(_value, (v) => _then(v as _$_WatchUpcoming));

  @override
  _$_WatchUpcoming get _value => super._value as _$_WatchUpcoming;
}

/// @nodoc

class _$_WatchUpcoming implements _WatchUpcoming {
  const _$_WatchUpcoming();

  @override
  String toString() {
    return 'TodoEvent.watchUpcoming()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchUpcoming);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<TodoFailure, List<Todo?>> either)
        todosReceived,
    required TResult Function() watchAll,
    required TResult Function() watchDone,
    required TResult Function() watchToday,
    required TResult Function() watchUncompleted,
    required TResult Function() watchUpcoming,
  }) {
    return watchUpcoming();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
  }) {
    return watchUpcoming?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    TResult Function()? watchAll,
    TResult Function()? watchDone,
    TResult Function()? watchToday,
    TResult Function()? watchUncompleted,
    TResult Function()? watchUpcoming,
    required TResult orElse(),
  }) {
    if (watchUpcoming != null) {
      return watchUpcoming();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodosReceived value) todosReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchDone value) watchDone,
    required TResult Function(_WatchToday value) watchToday,
    required TResult Function(_WatchUncompleted value) watchUncompleted,
    required TResult Function(_WatchUpcoming value) watchUpcoming,
  }) {
    return watchUpcoming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
  }) {
    return watchUpcoming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodosReceived value)? todosReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchDone value)? watchDone,
    TResult Function(_WatchToday value)? watchToday,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_WatchUpcoming value)? watchUpcoming,
    required TResult orElse(),
  }) {
    if (watchUpcoming != null) {
      return watchUpcoming(this);
    }
    return orElse();
  }
}

abstract class _WatchUpcoming implements TodoEvent {
  const factory _WatchUpcoming() = _$_WatchUpcoming;
}

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo?> todos, int allTodosLength,
            int doneTodosLength, int todayTodosLength, int upcomingTodosLength)
        loadSuccess,
    required TResult Function(TodoFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos, int allTodosLength, int doneTodosLength,
            int todayTodosLength, int upcomingTodosLength)?
        loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos, int allTodosLength, int doneTodosLength,
            int todayTodosLength, int upcomingTodosLength)?
        loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitial value) initial,
    required TResult Function(TodoLoading value) loading,
    required TResult Function(TodoSuccess value) loadSuccess,
    required TResult Function(TodoFailed value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoSuccess value)? loadSuccess,
    TResult Function(TodoFailed value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoSuccess value)? loadSuccess,
    TResult Function(TodoFailed value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;
}

/// @nodoc
abstract class _$$TodoInitialCopyWith<$Res> {
  factory _$$TodoInitialCopyWith(
          _$TodoInitial value, $Res Function(_$TodoInitial) then) =
      __$$TodoInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoInitialCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$$TodoInitialCopyWith<$Res> {
  __$$TodoInitialCopyWithImpl(
      _$TodoInitial _value, $Res Function(_$TodoInitial) _then)
      : super(_value, (v) => _then(v as _$TodoInitial));

  @override
  _$TodoInitial get _value => super._value as _$TodoInitial;
}

/// @nodoc

class _$TodoInitial implements TodoInitial {
  const _$TodoInitial();

  @override
  String toString() {
    return 'TodoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo?> todos, int allTodosLength,
            int doneTodosLength, int todayTodosLength, int upcomingTodosLength)
        loadSuccess,
    required TResult Function(TodoFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos, int allTodosLength, int doneTodosLength,
            int todayTodosLength, int upcomingTodosLength)?
        loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos, int allTodosLength, int doneTodosLength,
            int todayTodosLength, int upcomingTodosLength)?
        loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
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
    required TResult Function(TodoInitial value) initial,
    required TResult Function(TodoLoading value) loading,
    required TResult Function(TodoSuccess value) loadSuccess,
    required TResult Function(TodoFailed value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoSuccess value)? loadSuccess,
    TResult Function(TodoFailed value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoSuccess value)? loadSuccess,
    TResult Function(TodoFailed value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TodoInitial implements TodoState {
  const factory TodoInitial() = _$TodoInitial;
}

/// @nodoc
abstract class _$$TodoLoadingCopyWith<$Res> {
  factory _$$TodoLoadingCopyWith(
          _$TodoLoading value, $Res Function(_$TodoLoading) then) =
      __$$TodoLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoLoadingCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$$TodoLoadingCopyWith<$Res> {
  __$$TodoLoadingCopyWithImpl(
      _$TodoLoading _value, $Res Function(_$TodoLoading) _then)
      : super(_value, (v) => _then(v as _$TodoLoading));

  @override
  _$TodoLoading get _value => super._value as _$TodoLoading;
}

/// @nodoc

class _$TodoLoading implements TodoLoading {
  const _$TodoLoading();

  @override
  String toString() {
    return 'TodoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo?> todos, int allTodosLength,
            int doneTodosLength, int todayTodosLength, int upcomingTodosLength)
        loadSuccess,
    required TResult Function(TodoFailure failure) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos, int allTodosLength, int doneTodosLength,
            int todayTodosLength, int upcomingTodosLength)?
        loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos, int allTodosLength, int doneTodosLength,
            int todayTodosLength, int upcomingTodosLength)?
        loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
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
    required TResult Function(TodoInitial value) initial,
    required TResult Function(TodoLoading value) loading,
    required TResult Function(TodoSuccess value) loadSuccess,
    required TResult Function(TodoFailed value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoSuccess value)? loadSuccess,
    TResult Function(TodoFailed value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoSuccess value)? loadSuccess,
    TResult Function(TodoFailed value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodoLoading implements TodoState {
  const factory TodoLoading() = _$TodoLoading;
}

/// @nodoc
abstract class _$$TodoSuccessCopyWith<$Res> {
  factory _$$TodoSuccessCopyWith(
          _$TodoSuccess value, $Res Function(_$TodoSuccess) then) =
      __$$TodoSuccessCopyWithImpl<$Res>;
  $Res call(
      {List<Todo?> todos,
      int allTodosLength,
      int doneTodosLength,
      int todayTodosLength,
      int upcomingTodosLength});
}

/// @nodoc
class __$$TodoSuccessCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$$TodoSuccessCopyWith<$Res> {
  __$$TodoSuccessCopyWithImpl(
      _$TodoSuccess _value, $Res Function(_$TodoSuccess) _then)
      : super(_value, (v) => _then(v as _$TodoSuccess));

  @override
  _$TodoSuccess get _value => super._value as _$TodoSuccess;

  @override
  $Res call({
    Object? todos = freezed,
    Object? allTodosLength = freezed,
    Object? doneTodosLength = freezed,
    Object? todayTodosLength = freezed,
    Object? upcomingTodosLength = freezed,
  }) {
    return _then(_$TodoSuccess(
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo?>,
      allTodosLength: allTodosLength == freezed
          ? _value.allTodosLength
          : allTodosLength // ignore: cast_nullable_to_non_nullable
              as int,
      doneTodosLength: doneTodosLength == freezed
          ? _value.doneTodosLength
          : doneTodosLength // ignore: cast_nullable_to_non_nullable
              as int,
      todayTodosLength: todayTodosLength == freezed
          ? _value.todayTodosLength
          : todayTodosLength // ignore: cast_nullable_to_non_nullable
              as int,
      upcomingTodosLength: upcomingTodosLength == freezed
          ? _value.upcomingTodosLength
          : upcomingTodosLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TodoSuccess implements TodoSuccess {
  const _$TodoSuccess(
      {required final List<Todo?> todos,
      required this.allTodosLength,
      required this.doneTodosLength,
      required this.todayTodosLength,
      required this.upcomingTodosLength})
      : _todos = todos;

  final List<Todo?> _todos;
  @override
  List<Todo?> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final int allTodosLength;
  @override
  final int doneTodosLength;
  @override
  final int todayTodosLength;
  @override
  final int upcomingTodosLength;

  @override
  String toString() {
    return 'TodoState.loadSuccess(todos: $todos, allTodosLength: $allTodosLength, doneTodosLength: $doneTodosLength, todayTodosLength: $todayTodosLength, upcomingTodosLength: $upcomingTodosLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoSuccess &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality()
                .equals(other.allTodosLength, allTodosLength) &&
            const DeepCollectionEquality()
                .equals(other.doneTodosLength, doneTodosLength) &&
            const DeepCollectionEquality()
                .equals(other.todayTodosLength, todayTodosLength) &&
            const DeepCollectionEquality()
                .equals(other.upcomingTodosLength, upcomingTodosLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(allTodosLength),
      const DeepCollectionEquality().hash(doneTodosLength),
      const DeepCollectionEquality().hash(todayTodosLength),
      const DeepCollectionEquality().hash(upcomingTodosLength));

  @JsonKey(ignore: true)
  @override
  _$$TodoSuccessCopyWith<_$TodoSuccess> get copyWith =>
      __$$TodoSuccessCopyWithImpl<_$TodoSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo?> todos, int allTodosLength,
            int doneTodosLength, int todayTodosLength, int upcomingTodosLength)
        loadSuccess,
    required TResult Function(TodoFailure failure) loadFailure,
  }) {
    return loadSuccess(todos, allTodosLength, doneTodosLength, todayTodosLength,
        upcomingTodosLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos, int allTodosLength, int doneTodosLength,
            int todayTodosLength, int upcomingTodosLength)?
        loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
  }) {
    return loadSuccess?.call(todos, allTodosLength, doneTodosLength,
        todayTodosLength, upcomingTodosLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos, int allTodosLength, int doneTodosLength,
            int todayTodosLength, int upcomingTodosLength)?
        loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(todos, allTodosLength, doneTodosLength,
          todayTodosLength, upcomingTodosLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitial value) initial,
    required TResult Function(TodoLoading value) loading,
    required TResult Function(TodoSuccess value) loadSuccess,
    required TResult Function(TodoFailed value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoSuccess value)? loadSuccess,
    TResult Function(TodoFailed value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoSuccess value)? loadSuccess,
    TResult Function(TodoFailed value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class TodoSuccess implements TodoState {
  const factory TodoSuccess(
      {required final List<Todo?> todos,
      required final int allTodosLength,
      required final int doneTodosLength,
      required final int todayTodosLength,
      required final int upcomingTodosLength}) = _$TodoSuccess;

  List<Todo?> get todos;
  int get allTodosLength;
  int get doneTodosLength;
  int get todayTodosLength;
  int get upcomingTodosLength;
  @JsonKey(ignore: true)
  _$$TodoSuccessCopyWith<_$TodoSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoFailedCopyWith<$Res> {
  factory _$$TodoFailedCopyWith(
          _$TodoFailed value, $Res Function(_$TodoFailed) then) =
      __$$TodoFailedCopyWithImpl<$Res>;
  $Res call({TodoFailure failure});

  $TodoFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$TodoFailedCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$$TodoFailedCopyWith<$Res> {
  __$$TodoFailedCopyWithImpl(
      _$TodoFailed _value, $Res Function(_$TodoFailed) _then)
      : super(_value, (v) => _then(v as _$TodoFailed));

  @override
  _$TodoFailed get _value => super._value as _$TodoFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$TodoFailed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as TodoFailure,
    ));
  }

  @override
  $TodoFailureCopyWith<$Res> get failure {
    return $TodoFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$TodoFailed implements TodoFailed {
  const _$TodoFailed(this.failure);

  @override
  final TodoFailure failure;

  @override
  String toString() {
    return 'TodoState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoFailed &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$TodoFailedCopyWith<_$TodoFailed> get copyWith =>
      __$$TodoFailedCopyWithImpl<_$TodoFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo?> todos, int allTodosLength,
            int doneTodosLength, int todayTodosLength, int upcomingTodosLength)
        loadSuccess,
    required TResult Function(TodoFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos, int allTodosLength, int doneTodosLength,
            int todayTodosLength, int upcomingTodosLength)?
        loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos, int allTodosLength, int doneTodosLength,
            int todayTodosLength, int upcomingTodosLength)?
        loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitial value) initial,
    required TResult Function(TodoLoading value) loading,
    required TResult Function(TodoSuccess value) loadSuccess,
    required TResult Function(TodoFailed value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoSuccess value)? loadSuccess,
    TResult Function(TodoFailed value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitial value)? initial,
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoSuccess value)? loadSuccess,
    TResult Function(TodoFailed value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class TodoFailed implements TodoState {
  const factory TodoFailed(final TodoFailure failure) = _$TodoFailed;

  TodoFailure get failure;
  @JsonKey(ignore: true)
  _$$TodoFailedCopyWith<_$TodoFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
