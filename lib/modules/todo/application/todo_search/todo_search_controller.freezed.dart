// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_search_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoSearchEvent {
  String get title => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoSearchEventCopyWith<TodoSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoSearchEventCopyWith<$Res> {
  factory $TodoSearchEventCopyWith(
          TodoSearchEvent value, $Res Function(TodoSearchEvent) then) =
      _$TodoSearchEventCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$TodoSearchEventCopyWithImpl<$Res>
    implements $TodoSearchEventCopyWith<$Res> {
  _$TodoSearchEventCopyWithImpl(this._value, this._then);

  final TodoSearchEvent _value;
  // ignore: unused_field
  final $Res Function(TodoSearchEvent) _then;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$TitleChangedCopyWith<$Res>
    implements $TodoSearchEventCopyWith<$Res> {
  factory _$$TitleChangedCopyWith(
          _$TitleChanged value, $Res Function(_$TitleChanged) then) =
      __$$TitleChangedCopyWithImpl<$Res>;
  @override
  $Res call({String title});
}

/// @nodoc
class __$$TitleChangedCopyWithImpl<$Res>
    extends _$TodoSearchEventCopyWithImpl<$Res>
    implements _$$TitleChangedCopyWith<$Res> {
  __$$TitleChangedCopyWithImpl(
      _$TitleChanged _value, $Res Function(_$TitleChanged) _then)
      : super(_value, (v) => _then(v as _$TitleChanged));

  @override
  _$TitleChanged get _value => super._value as _$TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$TitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChanged implements TitleChanged {
  const _$TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'TodoSearchEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$TitleChangedCopyWith<_$TitleChanged> get copyWith =>
      __$$TitleChangedCopyWithImpl<_$TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TitleChanged implements TodoSearchEvent {
  const factory TitleChanged(final String title) = _$TitleChanged;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$TitleChangedCopyWith<_$TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoSearchState {
  String get title => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  List<Todo?> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoSearchStateCopyWith<TodoSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoSearchStateCopyWith<$Res> {
  factory $TodoSearchStateCopyWith(
          TodoSearchState value, $Res Function(TodoSearchState) then) =
      _$TodoSearchStateCopyWithImpl<$Res>;
  $Res call({String title, bool loading, bool showError, List<Todo?> todos});
}

/// @nodoc
class _$TodoSearchStateCopyWithImpl<$Res>
    implements $TodoSearchStateCopyWith<$Res> {
  _$TodoSearchStateCopyWithImpl(this._value, this._then);

  final TodoSearchState _value;
  // ignore: unused_field
  final $Res Function(TodoSearchState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? loading = freezed,
    Object? showError = freezed,
    Object? todos = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo?>,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoSearchStateCopyWith<$Res>
    implements $TodoSearchStateCopyWith<$Res> {
  factory _$$_TodoSearchStateCopyWith(
          _$_TodoSearchState value, $Res Function(_$_TodoSearchState) then) =
      __$$_TodoSearchStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, bool loading, bool showError, List<Todo?> todos});
}

/// @nodoc
class __$$_TodoSearchStateCopyWithImpl<$Res>
    extends _$TodoSearchStateCopyWithImpl<$Res>
    implements _$$_TodoSearchStateCopyWith<$Res> {
  __$$_TodoSearchStateCopyWithImpl(
      _$_TodoSearchState _value, $Res Function(_$_TodoSearchState) _then)
      : super(_value, (v) => _then(v as _$_TodoSearchState));

  @override
  _$_TodoSearchState get _value => super._value as _$_TodoSearchState;

  @override
  $Res call({
    Object? title = freezed,
    Object? loading = freezed,
    Object? showError = freezed,
    Object? todos = freezed,
  }) {
    return _then(_$_TodoSearchState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo?>,
    ));
  }
}

/// @nodoc

class _$_TodoSearchState implements _TodoSearchState {
  const _$_TodoSearchState(
      {required this.title,
      required this.loading,
      required this.showError,
      required final List<Todo?> todos})
      : _todos = todos;

  @override
  final String title;
  @override
  final bool loading;
  @override
  final bool showError;
  final List<Todo?> _todos;
  @override
  List<Todo?> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoSearchState(title: $title, loading: $loading, showError: $showError, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoSearchState &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.showError, showError) &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(showError),
      const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  _$$_TodoSearchStateCopyWith<_$_TodoSearchState> get copyWith =>
      __$$_TodoSearchStateCopyWithImpl<_$_TodoSearchState>(this, _$identity);
}

abstract class _TodoSearchState implements TodoSearchState {
  const factory _TodoSearchState(
      {required final String title,
      required final bool loading,
      required final bool showError,
      required final List<Todo?> todos}) = _$_TodoSearchState;

  @override
  String get title;
  @override
  bool get loading;
  @override
  bool get showError;
  @override
  List<Todo?> get todos;
  @override
  @JsonKey(ignore: true)
  _$$_TodoSearchStateCopyWith<_$_TodoSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
