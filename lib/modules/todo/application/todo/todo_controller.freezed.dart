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
    required TResult Function() watchAll,
    required TResult Function() watchUncompleted,
    required TResult Function(Either<TodoFailure, List<Todo?>> either)
        todosReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAll,
    TResult Function()? watchUncompleted,
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAll,
    TResult Function()? watchUncompleted,
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchUncompleted value) watchUncompleted,
    required TResult Function(_TodosReceived value) todosReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_TodosReceived value)? todosReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_TodosReceived value)? todosReceived,
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
    required TResult Function() watchAll,
    required TResult Function() watchUncompleted,
    required TResult Function(Either<TodoFailure, List<Todo?>> either)
        todosReceived,
  }) {
    return watchAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAll,
    TResult Function()? watchUncompleted,
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
  }) {
    return watchAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAll,
    TResult Function()? watchUncompleted,
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
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
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchUncompleted value) watchUncompleted,
    required TResult Function(_TodosReceived value) todosReceived,
  }) {
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_TodosReceived value)? todosReceived,
  }) {
    return watchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_TodosReceived value)? todosReceived,
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
    required TResult Function() watchAll,
    required TResult Function() watchUncompleted,
    required TResult Function(Either<TodoFailure, List<Todo?>> either)
        todosReceived,
  }) {
    return watchUncompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAll,
    TResult Function()? watchUncompleted,
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
  }) {
    return watchUncompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAll,
    TResult Function()? watchUncompleted,
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
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
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchUncompleted value) watchUncompleted,
    required TResult Function(_TodosReceived value) todosReceived,
  }) {
    return watchUncompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_TodosReceived value)? todosReceived,
  }) {
    return watchUncompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_TodosReceived value)? todosReceived,
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
    required TResult Function() watchAll,
    required TResult Function() watchUncompleted,
    required TResult Function(Either<TodoFailure, List<Todo?>> either)
        todosReceived,
  }) {
    return todosReceived(either);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAll,
    TResult Function()? watchUncompleted,
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
  }) {
    return todosReceived?.call(either);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAll,
    TResult Function()? watchUncompleted,
    TResult Function(Either<TodoFailure, List<Todo?>> either)? todosReceived,
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
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchUncompleted value) watchUncompleted,
    required TResult Function(_TodosReceived value) todosReceived,
  }) {
    return todosReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_TodosReceived value)? todosReceived,
  }) {
    return todosReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchUncompleted value)? watchUncompleted,
    TResult Function(_TodosReceived value)? todosReceived,
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
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo?> todos) loadSuccess,
    required TResult Function(TodoFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos)? loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos)? loadSuccess,
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
    required TResult Function(List<Todo?> todos) loadSuccess,
    required TResult Function(TodoFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos)? loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos)? loadSuccess,
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
    required TResult Function(List<Todo?> todos) loadSuccess,
    required TResult Function(TodoFailure failure) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos)? loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos)? loadSuccess,
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
  $Res call({List<Todo?> todos});
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
  }) {
    return _then(_$TodoSuccess(
      todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo?>,
    ));
  }
}

/// @nodoc

class _$TodoSuccess implements TodoSuccess {
  const _$TodoSuccess(final List<Todo?> todos) : _todos = todos;

  final List<Todo?> _todos;
  @override
  List<Todo?> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoState.loadSuccess(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoSuccess &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  _$$TodoSuccessCopyWith<_$TodoSuccess> get copyWith =>
      __$$TodoSuccessCopyWithImpl<_$TodoSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo?> todos) loadSuccess,
    required TResult Function(TodoFailure failure) loadFailure,
  }) {
    return loadSuccess(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos)? loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
  }) {
    return loadSuccess?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos)? loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(todos);
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
  const factory TodoSuccess(final List<Todo?> todos) = _$TodoSuccess;

  List<Todo?> get todos;
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
    required TResult Function(List<Todo?> todos) loadSuccess,
    required TResult Function(TodoFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos)? loadSuccess,
    TResult Function(TodoFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo?> todos)? loadSuccess,
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
