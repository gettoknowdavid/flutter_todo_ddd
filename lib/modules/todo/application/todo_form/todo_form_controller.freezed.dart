// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_form_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String desc) descChanged,
    required TResult Function(Todo todo) edit,
    required TResult Function(Option<Todo> initialOption) initialized,
    required TResult Function(bool isDone) isDoneChanged,
    required TResult Function() saved,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(Category? category) categoryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoDescChanged value) descChanged,
    required TResult Function(_TodoEdit value) edit,
    required TResult Function(_TodoFormInitialized value) initialized,
    required TResult Function(_TodoIsDoneChanged value) isDoneChanged,
    required TResult Function(_TodoSaved value) saved,
    required TResult Function(_TodoTimeChanged value) timeChanged,
    required TResult Function(_TodoTitleChanged value) titleChanged,
    required TResult Function(_TodoCategoryChanged value) categoryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoFormEventCopyWith<$Res> {
  factory $TodoFormEventCopyWith(
          TodoFormEvent value, $Res Function(TodoFormEvent) then) =
      _$TodoFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoFormEventCopyWithImpl<$Res>
    implements $TodoFormEventCopyWith<$Res> {
  _$TodoFormEventCopyWithImpl(this._value, this._then);

  final TodoFormEvent _value;
  // ignore: unused_field
  final $Res Function(TodoFormEvent) _then;
}

/// @nodoc
abstract class _$$_TodoDescChangedCopyWith<$Res> {
  factory _$$_TodoDescChangedCopyWith(
          _$_TodoDescChanged value, $Res Function(_$_TodoDescChanged) then) =
      __$$_TodoDescChangedCopyWithImpl<$Res>;
  $Res call({String desc});
}

/// @nodoc
class __$$_TodoDescChangedCopyWithImpl<$Res>
    extends _$TodoFormEventCopyWithImpl<$Res>
    implements _$$_TodoDescChangedCopyWith<$Res> {
  __$$_TodoDescChangedCopyWithImpl(
      _$_TodoDescChanged _value, $Res Function(_$_TodoDescChanged) _then)
      : super(_value, (v) => _then(v as _$_TodoDescChanged));

  @override
  _$_TodoDescChanged get _value => super._value as _$_TodoDescChanged;

  @override
  $Res call({
    Object? desc = freezed,
  }) {
    return _then(_$_TodoDescChanged(
      desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TodoDescChanged implements _TodoDescChanged {
  const _$_TodoDescChanged(this.desc);

  @override
  final String desc;

  @override
  String toString() {
    return 'TodoFormEvent.descChanged(desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoDescChanged &&
            const DeepCollectionEquality().equals(other.desc, desc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(desc));

  @JsonKey(ignore: true)
  @override
  _$$_TodoDescChangedCopyWith<_$_TodoDescChanged> get copyWith =>
      __$$_TodoDescChangedCopyWithImpl<_$_TodoDescChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String desc) descChanged,
    required TResult Function(Todo todo) edit,
    required TResult Function(Option<Todo> initialOption) initialized,
    required TResult Function(bool isDone) isDoneChanged,
    required TResult Function() saved,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(Category? category) categoryChanged,
  }) {
    return descChanged(desc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
  }) {
    return descChanged?.call(desc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
    required TResult orElse(),
  }) {
    if (descChanged != null) {
      return descChanged(desc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoDescChanged value) descChanged,
    required TResult Function(_TodoEdit value) edit,
    required TResult Function(_TodoFormInitialized value) initialized,
    required TResult Function(_TodoIsDoneChanged value) isDoneChanged,
    required TResult Function(_TodoSaved value) saved,
    required TResult Function(_TodoTimeChanged value) timeChanged,
    required TResult Function(_TodoTitleChanged value) titleChanged,
    required TResult Function(_TodoCategoryChanged value) categoryChanged,
  }) {
    return descChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
  }) {
    return descChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) {
    if (descChanged != null) {
      return descChanged(this);
    }
    return orElse();
  }
}

abstract class _TodoDescChanged implements TodoFormEvent {
  const factory _TodoDescChanged(final String desc) = _$_TodoDescChanged;

  String get desc;
  @JsonKey(ignore: true)
  _$$_TodoDescChangedCopyWith<_$_TodoDescChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TodoEditCopyWith<$Res> {
  factory _$$_TodoEditCopyWith(
          _$_TodoEdit value, $Res Function(_$_TodoEdit) then) =
      __$$_TodoEditCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$_TodoEditCopyWithImpl<$Res> extends _$TodoFormEventCopyWithImpl<$Res>
    implements _$$_TodoEditCopyWith<$Res> {
  __$$_TodoEditCopyWithImpl(
      _$_TodoEdit _value, $Res Function(_$_TodoEdit) _then)
      : super(_value, (v) => _then(v as _$_TodoEdit));

  @override
  _$_TodoEdit get _value => super._value as _$_TodoEdit;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_$_TodoEdit(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$_TodoEdit implements _TodoEdit {
  const _$_TodoEdit(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoFormEvent.edit(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoEdit &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$$_TodoEditCopyWith<_$_TodoEdit> get copyWith =>
      __$$_TodoEditCopyWithImpl<_$_TodoEdit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String desc) descChanged,
    required TResult Function(Todo todo) edit,
    required TResult Function(Option<Todo> initialOption) initialized,
    required TResult Function(bool isDone) isDoneChanged,
    required TResult Function() saved,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(Category? category) categoryChanged,
  }) {
    return edit(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
  }) {
    return edit?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoDescChanged value) descChanged,
    required TResult Function(_TodoEdit value) edit,
    required TResult Function(_TodoFormInitialized value) initialized,
    required TResult Function(_TodoIsDoneChanged value) isDoneChanged,
    required TResult Function(_TodoSaved value) saved,
    required TResult Function(_TodoTimeChanged value) timeChanged,
    required TResult Function(_TodoTitleChanged value) titleChanged,
    required TResult Function(_TodoCategoryChanged value) categoryChanged,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _TodoEdit implements TodoFormEvent {
  const factory _TodoEdit(final Todo todo) = _$_TodoEdit;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$_TodoEditCopyWith<_$_TodoEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TodoFormInitializedCopyWith<$Res> {
  factory _$$_TodoFormInitializedCopyWith(_$_TodoFormInitialized value,
          $Res Function(_$_TodoFormInitialized) then) =
      __$$_TodoFormInitializedCopyWithImpl<$Res>;
  $Res call({Option<Todo> initialOption});
}

/// @nodoc
class __$$_TodoFormInitializedCopyWithImpl<$Res>
    extends _$TodoFormEventCopyWithImpl<$Res>
    implements _$$_TodoFormInitializedCopyWith<$Res> {
  __$$_TodoFormInitializedCopyWithImpl(_$_TodoFormInitialized _value,
      $Res Function(_$_TodoFormInitialized) _then)
      : super(_value, (v) => _then(v as _$_TodoFormInitialized));

  @override
  _$_TodoFormInitialized get _value => super._value as _$_TodoFormInitialized;

  @override
  $Res call({
    Object? initialOption = freezed,
  }) {
    return _then(_$_TodoFormInitialized(
      initialOption == freezed
          ? _value.initialOption
          : initialOption // ignore: cast_nullable_to_non_nullable
              as Option<Todo>,
    ));
  }
}

/// @nodoc

class _$_TodoFormInitialized implements _TodoFormInitialized {
  const _$_TodoFormInitialized(this.initialOption);

  @override
  final Option<Todo> initialOption;

  @override
  String toString() {
    return 'TodoFormEvent.initialized(initialOption: $initialOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoFormInitialized &&
            const DeepCollectionEquality()
                .equals(other.initialOption, initialOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialOption));

  @JsonKey(ignore: true)
  @override
  _$$_TodoFormInitializedCopyWith<_$_TodoFormInitialized> get copyWith =>
      __$$_TodoFormInitializedCopyWithImpl<_$_TodoFormInitialized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String desc) descChanged,
    required TResult Function(Todo todo) edit,
    required TResult Function(Option<Todo> initialOption) initialized,
    required TResult Function(bool isDone) isDoneChanged,
    required TResult Function() saved,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(Category? category) categoryChanged,
  }) {
    return initialized(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
  }) {
    return initialized?.call(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoDescChanged value) descChanged,
    required TResult Function(_TodoEdit value) edit,
    required TResult Function(_TodoFormInitialized value) initialized,
    required TResult Function(_TodoIsDoneChanged value) isDoneChanged,
    required TResult Function(_TodoSaved value) saved,
    required TResult Function(_TodoTimeChanged value) timeChanged,
    required TResult Function(_TodoTitleChanged value) titleChanged,
    required TResult Function(_TodoCategoryChanged value) categoryChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _TodoFormInitialized implements TodoFormEvent {
  const factory _TodoFormInitialized(final Option<Todo> initialOption) =
      _$_TodoFormInitialized;

  Option<Todo> get initialOption;
  @JsonKey(ignore: true)
  _$$_TodoFormInitializedCopyWith<_$_TodoFormInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TodoIsDoneChangedCopyWith<$Res> {
  factory _$$_TodoIsDoneChangedCopyWith(_$_TodoIsDoneChanged value,
          $Res Function(_$_TodoIsDoneChanged) then) =
      __$$_TodoIsDoneChangedCopyWithImpl<$Res>;
  $Res call({bool isDone});
}

/// @nodoc
class __$$_TodoIsDoneChangedCopyWithImpl<$Res>
    extends _$TodoFormEventCopyWithImpl<$Res>
    implements _$$_TodoIsDoneChangedCopyWith<$Res> {
  __$$_TodoIsDoneChangedCopyWithImpl(
      _$_TodoIsDoneChanged _value, $Res Function(_$_TodoIsDoneChanged) _then)
      : super(_value, (v) => _then(v as _$_TodoIsDoneChanged));

  @override
  _$_TodoIsDoneChanged get _value => super._value as _$_TodoIsDoneChanged;

  @override
  $Res call({
    Object? isDone = freezed,
  }) {
    return _then(_$_TodoIsDoneChanged(
      isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TodoIsDoneChanged implements _TodoIsDoneChanged {
  const _$_TodoIsDoneChanged(this.isDone);

  @override
  final bool isDone;

  @override
  String toString() {
    return 'TodoFormEvent.isDoneChanged(isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoIsDoneChanged &&
            const DeepCollectionEquality().equals(other.isDone, isDone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isDone));

  @JsonKey(ignore: true)
  @override
  _$$_TodoIsDoneChangedCopyWith<_$_TodoIsDoneChanged> get copyWith =>
      __$$_TodoIsDoneChangedCopyWithImpl<_$_TodoIsDoneChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String desc) descChanged,
    required TResult Function(Todo todo) edit,
    required TResult Function(Option<Todo> initialOption) initialized,
    required TResult Function(bool isDone) isDoneChanged,
    required TResult Function() saved,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(Category? category) categoryChanged,
  }) {
    return isDoneChanged(isDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
  }) {
    return isDoneChanged?.call(isDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
    required TResult orElse(),
  }) {
    if (isDoneChanged != null) {
      return isDoneChanged(isDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoDescChanged value) descChanged,
    required TResult Function(_TodoEdit value) edit,
    required TResult Function(_TodoFormInitialized value) initialized,
    required TResult Function(_TodoIsDoneChanged value) isDoneChanged,
    required TResult Function(_TodoSaved value) saved,
    required TResult Function(_TodoTimeChanged value) timeChanged,
    required TResult Function(_TodoTitleChanged value) titleChanged,
    required TResult Function(_TodoCategoryChanged value) categoryChanged,
  }) {
    return isDoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
  }) {
    return isDoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) {
    if (isDoneChanged != null) {
      return isDoneChanged(this);
    }
    return orElse();
  }
}

abstract class _TodoIsDoneChanged implements TodoFormEvent {
  const factory _TodoIsDoneChanged(final bool isDone) = _$_TodoIsDoneChanged;

  bool get isDone;
  @JsonKey(ignore: true)
  _$$_TodoIsDoneChangedCopyWith<_$_TodoIsDoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TodoSavedCopyWith<$Res> {
  factory _$$_TodoSavedCopyWith(
          _$_TodoSaved value, $Res Function(_$_TodoSaved) then) =
      __$$_TodoSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TodoSavedCopyWithImpl<$Res> extends _$TodoFormEventCopyWithImpl<$Res>
    implements _$$_TodoSavedCopyWith<$Res> {
  __$$_TodoSavedCopyWithImpl(
      _$_TodoSaved _value, $Res Function(_$_TodoSaved) _then)
      : super(_value, (v) => _then(v as _$_TodoSaved));

  @override
  _$_TodoSaved get _value => super._value as _$_TodoSaved;
}

/// @nodoc

class _$_TodoSaved implements _TodoSaved {
  const _$_TodoSaved();

  @override
  String toString() {
    return 'TodoFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TodoSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String desc) descChanged,
    required TResult Function(Todo todo) edit,
    required TResult Function(Option<Todo> initialOption) initialized,
    required TResult Function(bool isDone) isDoneChanged,
    required TResult Function() saved,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(Category? category) categoryChanged,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoDescChanged value) descChanged,
    required TResult Function(_TodoEdit value) edit,
    required TResult Function(_TodoFormInitialized value) initialized,
    required TResult Function(_TodoIsDoneChanged value) isDoneChanged,
    required TResult Function(_TodoSaved value) saved,
    required TResult Function(_TodoTimeChanged value) timeChanged,
    required TResult Function(_TodoTitleChanged value) titleChanged,
    required TResult Function(_TodoCategoryChanged value) categoryChanged,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _TodoSaved implements TodoFormEvent {
  const factory _TodoSaved() = _$_TodoSaved;
}

/// @nodoc
abstract class _$$_TodoTimeChangedCopyWith<$Res> {
  factory _$$_TodoTimeChangedCopyWith(
          _$_TodoTimeChanged value, $Res Function(_$_TodoTimeChanged) then) =
      __$$_TodoTimeChangedCopyWithImpl<$Res>;
  $Res call({DateTime time});
}

/// @nodoc
class __$$_TodoTimeChangedCopyWithImpl<$Res>
    extends _$TodoFormEventCopyWithImpl<$Res>
    implements _$$_TodoTimeChangedCopyWith<$Res> {
  __$$_TodoTimeChangedCopyWithImpl(
      _$_TodoTimeChanged _value, $Res Function(_$_TodoTimeChanged) _then)
      : super(_value, (v) => _then(v as _$_TodoTimeChanged));

  @override
  _$_TodoTimeChanged get _value => super._value as _$_TodoTimeChanged;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$_TodoTimeChanged(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_TodoTimeChanged implements _TodoTimeChanged {
  const _$_TodoTimeChanged(this.time);

  @override
  final DateTime time;

  @override
  String toString() {
    return 'TodoFormEvent.timeChanged(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoTimeChanged &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_TodoTimeChangedCopyWith<_$_TodoTimeChanged> get copyWith =>
      __$$_TodoTimeChangedCopyWithImpl<_$_TodoTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String desc) descChanged,
    required TResult Function(Todo todo) edit,
    required TResult Function(Option<Todo> initialOption) initialized,
    required TResult Function(bool isDone) isDoneChanged,
    required TResult Function() saved,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(Category? category) categoryChanged,
  }) {
    return timeChanged(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
  }) {
    return timeChanged?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
    required TResult orElse(),
  }) {
    if (timeChanged != null) {
      return timeChanged(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoDescChanged value) descChanged,
    required TResult Function(_TodoEdit value) edit,
    required TResult Function(_TodoFormInitialized value) initialized,
    required TResult Function(_TodoIsDoneChanged value) isDoneChanged,
    required TResult Function(_TodoSaved value) saved,
    required TResult Function(_TodoTimeChanged value) timeChanged,
    required TResult Function(_TodoTitleChanged value) titleChanged,
    required TResult Function(_TodoCategoryChanged value) categoryChanged,
  }) {
    return timeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
  }) {
    return timeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) {
    if (timeChanged != null) {
      return timeChanged(this);
    }
    return orElse();
  }
}

abstract class _TodoTimeChanged implements TodoFormEvent {
  const factory _TodoTimeChanged(final DateTime time) = _$_TodoTimeChanged;

  DateTime get time;
  @JsonKey(ignore: true)
  _$$_TodoTimeChangedCopyWith<_$_TodoTimeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TodoTitleChangedCopyWith<$Res> {
  factory _$$_TodoTitleChangedCopyWith(
          _$_TodoTitleChanged value, $Res Function(_$_TodoTitleChanged) then) =
      __$$_TodoTitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$$_TodoTitleChangedCopyWithImpl<$Res>
    extends _$TodoFormEventCopyWithImpl<$Res>
    implements _$$_TodoTitleChangedCopyWith<$Res> {
  __$$_TodoTitleChangedCopyWithImpl(
      _$_TodoTitleChanged _value, $Res Function(_$_TodoTitleChanged) _then)
      : super(_value, (v) => _then(v as _$_TodoTitleChanged));

  @override
  _$_TodoTitleChanged get _value => super._value as _$_TodoTitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$_TodoTitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TodoTitleChanged implements _TodoTitleChanged {
  const _$_TodoTitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'TodoFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoTitleChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_TodoTitleChangedCopyWith<_$_TodoTitleChanged> get copyWith =>
      __$$_TodoTitleChangedCopyWithImpl<_$_TodoTitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String desc) descChanged,
    required TResult Function(Todo todo) edit,
    required TResult Function(Option<Todo> initialOption) initialized,
    required TResult Function(bool isDone) isDoneChanged,
    required TResult Function() saved,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(Category? category) categoryChanged,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
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
    required TResult Function(_TodoDescChanged value) descChanged,
    required TResult Function(_TodoEdit value) edit,
    required TResult Function(_TodoFormInitialized value) initialized,
    required TResult Function(_TodoIsDoneChanged value) isDoneChanged,
    required TResult Function(_TodoSaved value) saved,
    required TResult Function(_TodoTimeChanged value) timeChanged,
    required TResult Function(_TodoTitleChanged value) titleChanged,
    required TResult Function(_TodoCategoryChanged value) categoryChanged,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TodoTitleChanged implements TodoFormEvent {
  const factory _TodoTitleChanged(final String title) = _$_TodoTitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$$_TodoTitleChangedCopyWith<_$_TodoTitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TodoCategoryChangedCopyWith<$Res> {
  factory _$$_TodoCategoryChangedCopyWith(_$_TodoCategoryChanged value,
          $Res Function(_$_TodoCategoryChanged) then) =
      __$$_TodoCategoryChangedCopyWithImpl<$Res>;
  $Res call({Category? category});

  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_TodoCategoryChangedCopyWithImpl<$Res>
    extends _$TodoFormEventCopyWithImpl<$Res>
    implements _$$_TodoCategoryChangedCopyWith<$Res> {
  __$$_TodoCategoryChangedCopyWithImpl(_$_TodoCategoryChanged _value,
      $Res Function(_$_TodoCategoryChanged) _then)
      : super(_value, (v) => _then(v as _$_TodoCategoryChanged));

  @override
  _$_TodoCategoryChanged get _value => super._value as _$_TodoCategoryChanged;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$_TodoCategoryChanged(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ));
  }

  @override
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$_TodoCategoryChanged implements _TodoCategoryChanged {
  const _$_TodoCategoryChanged(this.category);

  @override
  final Category? category;

  @override
  String toString() {
    return 'TodoFormEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoCategoryChanged &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$_TodoCategoryChangedCopyWith<_$_TodoCategoryChanged> get copyWith =>
      __$$_TodoCategoryChangedCopyWithImpl<_$_TodoCategoryChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String desc) descChanged,
    required TResult Function(Todo todo) edit,
    required TResult Function(Option<Todo> initialOption) initialized,
    required TResult Function(bool isDone) isDoneChanged,
    required TResult Function() saved,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(Category? category) categoryChanged,
  }) {
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
  }) {
    return categoryChanged?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String desc)? descChanged,
    TResult Function(Todo todo)? edit,
    TResult Function(Option<Todo> initialOption)? initialized,
    TResult Function(bool isDone)? isDoneChanged,
    TResult Function()? saved,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(Category? category)? categoryChanged,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoDescChanged value) descChanged,
    required TResult Function(_TodoEdit value) edit,
    required TResult Function(_TodoFormInitialized value) initialized,
    required TResult Function(_TodoIsDoneChanged value) isDoneChanged,
    required TResult Function(_TodoSaved value) saved,
    required TResult Function(_TodoTimeChanged value) timeChanged,
    required TResult Function(_TodoTitleChanged value) titleChanged,
    required TResult Function(_TodoCategoryChanged value) categoryChanged,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoDescChanged value)? descChanged,
    TResult Function(_TodoEdit value)? edit,
    TResult Function(_TodoFormInitialized value)? initialized,
    TResult Function(_TodoIsDoneChanged value)? isDoneChanged,
    TResult Function(_TodoSaved value)? saved,
    TResult Function(_TodoTimeChanged value)? timeChanged,
    TResult Function(_TodoTitleChanged value)? titleChanged,
    TResult Function(_TodoCategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _TodoCategoryChanged implements TodoFormEvent {
  const factory _TodoCategoryChanged(final Category? category) =
      _$_TodoCategoryChanged;

  Category? get category;
  @JsonKey(ignore: true)
  _$$_TodoCategoryChangedCopyWith<_$_TodoCategoryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoFormState {
  Todo get todo => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  bool get isEdit => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Option<Either<TodoFailure, Unit>> get option =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoFormStateCopyWith<TodoFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoFormStateCopyWith<$Res> {
  factory $TodoFormStateCopyWith(
          TodoFormState value, $Res Function(TodoFormState) then) =
      _$TodoFormStateCopyWithImpl<$Res>;
  $Res call(
      {Todo todo,
      bool showErrors,
      bool isEdit,
      bool loading,
      Option<Either<TodoFailure, Unit>> option});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$TodoFormStateCopyWithImpl<$Res>
    implements $TodoFormStateCopyWith<$Res> {
  _$TodoFormStateCopyWithImpl(this._value, this._then);

  final TodoFormState _value;
  // ignore: unused_field
  final $Res Function(TodoFormState) _then;

  @override
  $Res call({
    Object? todo = freezed,
    Object? showErrors = freezed,
    Object? isEdit = freezed,
    Object? loading = freezed,
    Object? option = freezed,
  }) {
    return _then(_value.copyWith(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      isEdit: isEdit == freezed
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Either<TodoFailure, Unit>>,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc
abstract class _$$_TodoFormStateCopyWith<$Res>
    implements $TodoFormStateCopyWith<$Res> {
  factory _$$_TodoFormStateCopyWith(
          _$_TodoFormState value, $Res Function(_$_TodoFormState) then) =
      __$$_TodoFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Todo todo,
      bool showErrors,
      bool isEdit,
      bool loading,
      Option<Either<TodoFailure, Unit>> option});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$_TodoFormStateCopyWithImpl<$Res>
    extends _$TodoFormStateCopyWithImpl<$Res>
    implements _$$_TodoFormStateCopyWith<$Res> {
  __$$_TodoFormStateCopyWithImpl(
      _$_TodoFormState _value, $Res Function(_$_TodoFormState) _then)
      : super(_value, (v) => _then(v as _$_TodoFormState));

  @override
  _$_TodoFormState get _value => super._value as _$_TodoFormState;

  @override
  $Res call({
    Object? todo = freezed,
    Object? showErrors = freezed,
    Object? isEdit = freezed,
    Object? loading = freezed,
    Object? option = freezed,
  }) {
    return _then(_$_TodoFormState(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      isEdit: isEdit == freezed
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Either<TodoFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_TodoFormState implements _TodoFormState {
  const _$_TodoFormState(
      {required this.todo,
      required this.showErrors,
      required this.isEdit,
      required this.loading,
      required this.option});

  @override
  final Todo todo;
  @override
  final bool showErrors;
  @override
  final bool isEdit;
  @override
  final bool loading;
  @override
  final Option<Either<TodoFailure, Unit>> option;

  @override
  String toString() {
    return 'TodoFormState(todo: $todo, showErrors: $showErrors, isEdit: $isEdit, loading: $loading, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoFormState &&
            const DeepCollectionEquality().equals(other.todo, todo) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality().equals(other.isEdit, isEdit) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.option, option));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(todo),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(isEdit),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(option));

  @JsonKey(ignore: true)
  @override
  _$$_TodoFormStateCopyWith<_$_TodoFormState> get copyWith =>
      __$$_TodoFormStateCopyWithImpl<_$_TodoFormState>(this, _$identity);
}

abstract class _TodoFormState implements TodoFormState {
  const factory _TodoFormState(
          {required final Todo todo,
          required final bool showErrors,
          required final bool isEdit,
          required final bool loading,
          required final Option<Either<TodoFailure, Unit>> option}) =
      _$_TodoFormState;

  @override
  Todo get todo;
  @override
  bool get showErrors;
  @override
  bool get isEdit;
  @override
  bool get loading;
  @override
  Option<Either<TodoFailure, Unit>> get option;
  @override
  @JsonKey(ignore: true)
  _$$_TodoFormStateCopyWith<_$_TodoFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
