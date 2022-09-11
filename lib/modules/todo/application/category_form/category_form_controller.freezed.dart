// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_form_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Category> initialOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() categoryAddPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Category> initialOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? categoryAddPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Category> initialOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? categoryAddPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_CategoryAddPressed value) categoryAddPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_CategoryAddPressed value)? categoryAddPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_CategoryAddPressed value)? categoryAddPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFormEventCopyWith<$Res> {
  factory $CategoryFormEventCopyWith(
          CategoryFormEvent value, $Res Function(CategoryFormEvent) then) =
      _$CategoryFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryFormEventCopyWithImpl<$Res>
    implements $CategoryFormEventCopyWith<$Res> {
  _$CategoryFormEventCopyWithImpl(this._value, this._then);

  final CategoryFormEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryFormEvent) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  $Res call({Option<Category> initialOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, (v) => _then(v as _$_Initialized));

  @override
  _$_Initialized get _value => super._value as _$_Initialized;

  @override
  $Res call({
    Object? initialOption = freezed,
  }) {
    return _then(_$_Initialized(
      initialOption == freezed
          ? _value.initialOption
          : initialOption // ignore: cast_nullable_to_non_nullable
              as Option<Category>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialOption);

  @override
  final Option<Category> initialOption;

  @override
  String toString() {
    return 'CategoryFormEvent.initialized(initialOption: $initialOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialOption, initialOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialOption));

  @JsonKey(ignore: true)
  @override
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Category> initialOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() categoryAddPressed,
  }) {
    return initialized(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Category> initialOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? categoryAddPressed,
  }) {
    return initialized?.call(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Category> initialOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? categoryAddPressed,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_CategoryAddPressed value) categoryAddPressed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_CategoryAddPressed value)? categoryAddPressed,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_CategoryAddPressed value)? categoryAddPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CategoryFormEvent {
  const factory _Initialized(final Option<Category> initialOption) =
      _$_Initialized;

  Option<Category> get initialOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TitleChangedCopyWith<$Res> {
  factory _$$_TitleChangedCopyWith(
          _$_TitleChanged value, $Res Function(_$_TitleChanged) then) =
      __$$_TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$$_TitleChangedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res>
    implements _$$_TitleChangedCopyWith<$Res> {
  __$$_TitleChangedCopyWithImpl(
      _$_TitleChanged _value, $Res Function(_$_TitleChanged) _then)
      : super(_value, (v) => _then(v as _$_TitleChanged));

  @override
  _$_TitleChanged get _value => super._value as _$_TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$_TitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'CategoryFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      __$$_TitleChangedCopyWithImpl<_$_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Category> initialOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() categoryAddPressed,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Category> initialOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? categoryAddPressed,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Category> initialOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? categoryAddPressed,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_CategoryAddPressed value) categoryAddPressed,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_CategoryAddPressed value)? categoryAddPressed,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_CategoryAddPressed value)? categoryAddPressed,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements CategoryFormEvent {
  const factory _TitleChanged(final String title) = _$_TitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ColorChangedCopyWith<$Res> {
  factory _$$_ColorChangedCopyWith(
          _$_ColorChanged value, $Res Function(_$_ColorChanged) then) =
      __$$_ColorChangedCopyWithImpl<$Res>;
  $Res call({Color color});
}

/// @nodoc
class __$$_ColorChangedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res>
    implements _$$_ColorChangedCopyWith<$Res> {
  __$$_ColorChangedCopyWithImpl(
      _$_ColorChanged _value, $Res Function(_$_ColorChanged) _then)
      : super(_value, (v) => _then(v as _$_ColorChanged));

  @override
  _$_ColorChanged get _value => super._value as _$_ColorChanged;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$_ColorChanged(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'CategoryFormEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorChanged &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_ColorChangedCopyWith<_$_ColorChanged> get copyWith =>
      __$$_ColorChangedCopyWithImpl<_$_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Category> initialOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() categoryAddPressed,
  }) {
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Category> initialOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? categoryAddPressed,
  }) {
    return colorChanged?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Category> initialOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? categoryAddPressed,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_CategoryAddPressed value) categoryAddPressed,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_CategoryAddPressed value)? categoryAddPressed,
  }) {
    return colorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_CategoryAddPressed value)? categoryAddPressed,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements CategoryFormEvent {
  const factory _ColorChanged(final Color color) = _$_ColorChanged;

  Color get color;
  @JsonKey(ignore: true)
  _$$_ColorChangedCopyWith<_$_ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategoryAddPressedCopyWith<$Res> {
  factory _$$_CategoryAddPressedCopyWith(_$_CategoryAddPressed value,
          $Res Function(_$_CategoryAddPressed) then) =
      __$$_CategoryAddPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CategoryAddPressedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res>
    implements _$$_CategoryAddPressedCopyWith<$Res> {
  __$$_CategoryAddPressedCopyWithImpl(
      _$_CategoryAddPressed _value, $Res Function(_$_CategoryAddPressed) _then)
      : super(_value, (v) => _then(v as _$_CategoryAddPressed));

  @override
  _$_CategoryAddPressed get _value => super._value as _$_CategoryAddPressed;
}

/// @nodoc

class _$_CategoryAddPressed implements _CategoryAddPressed {
  const _$_CategoryAddPressed();

  @override
  String toString() {
    return 'CategoryFormEvent.categoryAddPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CategoryAddPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Category> initialOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() categoryAddPressed,
  }) {
    return categoryAddPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Category> initialOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? categoryAddPressed,
  }) {
    return categoryAddPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Category> initialOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? categoryAddPressed,
    required TResult orElse(),
  }) {
    if (categoryAddPressed != null) {
      return categoryAddPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_CategoryAddPressed value) categoryAddPressed,
  }) {
    return categoryAddPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_CategoryAddPressed value)? categoryAddPressed,
  }) {
    return categoryAddPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_CategoryAddPressed value)? categoryAddPressed,
    required TResult orElse(),
  }) {
    if (categoryAddPressed != null) {
      return categoryAddPressed(this);
    }
    return orElse();
  }
}

abstract class _CategoryAddPressed implements CategoryFormEvent {
  const factory _CategoryAddPressed() = _$_CategoryAddPressed;
}

/// @nodoc
mixin _$CategoryFormState {
  Category get category => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Option<Either<CategoryFailure, Unit>> get option =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryFormStateCopyWith<CategoryFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFormStateCopyWith<$Res> {
  factory $CategoryFormStateCopyWith(
          CategoryFormState value, $Res Function(CategoryFormState) then) =
      _$CategoryFormStateCopyWithImpl<$Res>;
  $Res call(
      {Category category,
      bool showErrors,
      bool loading,
      Option<Either<CategoryFailure, Unit>> option});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$CategoryFormStateCopyWithImpl<$Res>
    implements $CategoryFormStateCopyWith<$Res> {
  _$CategoryFormStateCopyWithImpl(this._value, this._then);

  final CategoryFormState _value;
  // ignore: unused_field
  final $Res Function(CategoryFormState) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? showErrors = freezed,
    Object? loading = freezed,
    Object? option = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Either<CategoryFailure, Unit>>,
    ));
  }

  @override
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$$_CategoryFormStateCopyWith<$Res>
    implements $CategoryFormStateCopyWith<$Res> {
  factory _$$_CategoryFormStateCopyWith(_$_CategoryFormState value,
          $Res Function(_$_CategoryFormState) then) =
      __$$_CategoryFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Category category,
      bool showErrors,
      bool loading,
      Option<Either<CategoryFailure, Unit>> option});

  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$_CategoryFormStateCopyWithImpl<$Res>
    extends _$CategoryFormStateCopyWithImpl<$Res>
    implements _$$_CategoryFormStateCopyWith<$Res> {
  __$$_CategoryFormStateCopyWithImpl(
      _$_CategoryFormState _value, $Res Function(_$_CategoryFormState) _then)
      : super(_value, (v) => _then(v as _$_CategoryFormState));

  @override
  _$_CategoryFormState get _value => super._value as _$_CategoryFormState;

  @override
  $Res call({
    Object? category = freezed,
    Object? showErrors = freezed,
    Object? loading = freezed,
    Object? option = freezed,
  }) {
    return _then(_$_CategoryFormState(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Either<CategoryFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CategoryFormState implements _CategoryFormState {
  const _$_CategoryFormState(
      {required this.category,
      required this.showErrors,
      required this.loading,
      required this.option});

  @override
  final Category category;
  @override
  final bool showErrors;
  @override
  final bool loading;
  @override
  final Option<Either<CategoryFailure, Unit>> option;

  @override
  String toString() {
    return 'CategoryFormState(category: $category, showErrors: $showErrors, loading: $loading, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryFormState &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.option, option));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(option));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryFormStateCopyWith<_$_CategoryFormState> get copyWith =>
      __$$_CategoryFormStateCopyWithImpl<_$_CategoryFormState>(
          this, _$identity);
}

abstract class _CategoryFormState implements CategoryFormState {
  const factory _CategoryFormState(
          {required final Category category,
          required final bool showErrors,
          required final bool loading,
          required final Option<Either<CategoryFailure, Unit>> option}) =
      _$_CategoryFormState;

  @override
  Category get category;
  @override
  bool get showErrors;
  @override
  bool get loading;
  @override
  Option<Either<CategoryFailure, Unit>> get option;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryFormStateCopyWith<_$_CategoryFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
