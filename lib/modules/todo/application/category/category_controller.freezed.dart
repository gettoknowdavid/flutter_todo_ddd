// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function() getUncompletedStarted,
    required TResult Function(
            Either<CategoryFailure, List<Category>> failureOrNotes)
        categoriesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function()? getUncompletedStarted,
    TResult Function(Either<CategoryFailure, List<Category>> failureOrNotes)?
        categoriesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function()? getUncompletedStarted,
    TResult Function(Either<CategoryFailure, List<Category>> failureOrNotes)?
        categoriesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetUncompletedStarted value)
        getUncompletedStarted,
    required TResult Function(_CategoriesReceived value) categoriesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetUncompletedStarted value)? getUncompletedStarted,
    TResult Function(_CategoriesReceived value)? categoriesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetUncompletedStarted value)? getUncompletedStarted,
    TResult Function(_CategoriesReceived value)? categoriesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  final CategoryEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryEvent) _then;
}

/// @nodoc
abstract class _$$_GetAllCopyWith<$Res> {
  factory _$$_GetAllCopyWith(_$_GetAll value, $Res Function(_$_GetAll) then) =
      __$$_GetAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllCopyWithImpl<$Res> extends _$CategoryEventCopyWithImpl<$Res>
    implements _$$_GetAllCopyWith<$Res> {
  __$$_GetAllCopyWithImpl(_$_GetAll _value, $Res Function(_$_GetAll) _then)
      : super(_value, (v) => _then(v as _$_GetAll));

  @override
  _$_GetAll get _value => super._value as _$_GetAll;
}

/// @nodoc

class _$_GetAll implements _GetAll {
  const _$_GetAll();

  @override
  String toString() {
    return 'CategoryEvent.getAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function() getUncompletedStarted,
    required TResult Function(
            Either<CategoryFailure, List<Category>> failureOrNotes)
        categoriesReceived,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function()? getUncompletedStarted,
    TResult Function(Either<CategoryFailure, List<Category>> failureOrNotes)?
        categoriesReceived,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function()? getUncompletedStarted,
    TResult Function(Either<CategoryFailure, List<Category>> failureOrNotes)?
        categoriesReceived,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetUncompletedStarted value)
        getUncompletedStarted,
    required TResult Function(_CategoriesReceived value) categoriesReceived,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetUncompletedStarted value)? getUncompletedStarted,
    TResult Function(_CategoriesReceived value)? categoriesReceived,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetUncompletedStarted value)? getUncompletedStarted,
    TResult Function(_CategoriesReceived value)? categoriesReceived,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAll implements CategoryEvent {
  const factory _GetAll() = _$_GetAll;
}

/// @nodoc
abstract class _$$_GetUncompletedStartedCopyWith<$Res> {
  factory _$$_GetUncompletedStartedCopyWith(_$_GetUncompletedStarted value,
          $Res Function(_$_GetUncompletedStarted) then) =
      __$$_GetUncompletedStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetUncompletedStartedCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res>
    implements _$$_GetUncompletedStartedCopyWith<$Res> {
  __$$_GetUncompletedStartedCopyWithImpl(_$_GetUncompletedStarted _value,
      $Res Function(_$_GetUncompletedStarted) _then)
      : super(_value, (v) => _then(v as _$_GetUncompletedStarted));

  @override
  _$_GetUncompletedStarted get _value =>
      super._value as _$_GetUncompletedStarted;
}

/// @nodoc

class _$_GetUncompletedStarted implements _GetUncompletedStarted {
  const _$_GetUncompletedStarted();

  @override
  String toString() {
    return 'CategoryEvent.getUncompletedStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetUncompletedStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function() getUncompletedStarted,
    required TResult Function(
            Either<CategoryFailure, List<Category>> failureOrNotes)
        categoriesReceived,
  }) {
    return getUncompletedStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function()? getUncompletedStarted,
    TResult Function(Either<CategoryFailure, List<Category>> failureOrNotes)?
        categoriesReceived,
  }) {
    return getUncompletedStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function()? getUncompletedStarted,
    TResult Function(Either<CategoryFailure, List<Category>> failureOrNotes)?
        categoriesReceived,
    required TResult orElse(),
  }) {
    if (getUncompletedStarted != null) {
      return getUncompletedStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetUncompletedStarted value)
        getUncompletedStarted,
    required TResult Function(_CategoriesReceived value) categoriesReceived,
  }) {
    return getUncompletedStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetUncompletedStarted value)? getUncompletedStarted,
    TResult Function(_CategoriesReceived value)? categoriesReceived,
  }) {
    return getUncompletedStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetUncompletedStarted value)? getUncompletedStarted,
    TResult Function(_CategoriesReceived value)? categoriesReceived,
    required TResult orElse(),
  }) {
    if (getUncompletedStarted != null) {
      return getUncompletedStarted(this);
    }
    return orElse();
  }
}

abstract class _GetUncompletedStarted implements CategoryEvent {
  const factory _GetUncompletedStarted() = _$_GetUncompletedStarted;
}

/// @nodoc
abstract class _$$_CategoriesReceivedCopyWith<$Res> {
  factory _$$_CategoriesReceivedCopyWith(_$_CategoriesReceived value,
          $Res Function(_$_CategoriesReceived) then) =
      __$$_CategoriesReceivedCopyWithImpl<$Res>;
  $Res call({Either<CategoryFailure, List<Category>> failureOrNotes});
}

/// @nodoc
class __$$_CategoriesReceivedCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res>
    implements _$$_CategoriesReceivedCopyWith<$Res> {
  __$$_CategoriesReceivedCopyWithImpl(
      _$_CategoriesReceived _value, $Res Function(_$_CategoriesReceived) _then)
      : super(_value, (v) => _then(v as _$_CategoriesReceived));

  @override
  _$_CategoriesReceived get _value => super._value as _$_CategoriesReceived;

  @override
  $Res call({
    Object? failureOrNotes = freezed,
  }) {
    return _then(_$_CategoriesReceived(
      failureOrNotes == freezed
          ? _value.failureOrNotes
          : failureOrNotes // ignore: cast_nullable_to_non_nullable
              as Either<CategoryFailure, List<Category>>,
    ));
  }
}

/// @nodoc

class _$_CategoriesReceived implements _CategoriesReceived {
  const _$_CategoriesReceived(this.failureOrNotes);

  @override
  final Either<CategoryFailure, List<Category>> failureOrNotes;

  @override
  String toString() {
    return 'CategoryEvent.categoriesReceived(failureOrNotes: $failureOrNotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrNotes, failureOrNotes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrNotes));

  @JsonKey(ignore: true)
  @override
  _$$_CategoriesReceivedCopyWith<_$_CategoriesReceived> get copyWith =>
      __$$_CategoriesReceivedCopyWithImpl<_$_CategoriesReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function() getUncompletedStarted,
    required TResult Function(
            Either<CategoryFailure, List<Category>> failureOrNotes)
        categoriesReceived,
  }) {
    return categoriesReceived(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function()? getUncompletedStarted,
    TResult Function(Either<CategoryFailure, List<Category>> failureOrNotes)?
        categoriesReceived,
  }) {
    return categoriesReceived?.call(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function()? getUncompletedStarted,
    TResult Function(Either<CategoryFailure, List<Category>> failureOrNotes)?
        categoriesReceived,
    required TResult orElse(),
  }) {
    if (categoriesReceived != null) {
      return categoriesReceived(failureOrNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetUncompletedStarted value)
        getUncompletedStarted,
    required TResult Function(_CategoriesReceived value) categoriesReceived,
  }) {
    return categoriesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetUncompletedStarted value)? getUncompletedStarted,
    TResult Function(_CategoriesReceived value)? categoriesReceived,
  }) {
    return categoriesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetUncompletedStarted value)? getUncompletedStarted,
    TResult Function(_CategoriesReceived value)? categoriesReceived,
    required TResult orElse(),
  }) {
    if (categoriesReceived != null) {
      return categoriesReceived(this);
    }
    return orElse();
  }
}

abstract class _CategoriesReceived implements CategoryEvent {
  const factory _CategoriesReceived(
          final Either<CategoryFailure, List<Category>> failureOrNotes) =
      _$_CategoriesReceived;

  Either<CategoryFailure, List<Category>> get failureOrNotes;
  @JsonKey(ignore: true)
  _$$_CategoriesReceivedCopyWith<_$_CategoriesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category?> categories) loadSuccess,
    required TResult Function(CategoryFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category?> categories)? loadSuccess,
    TResult Function(CategoryFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category?> categories)? loadSuccess,
    TResult Function(CategoryFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategorySuccess value) loadSuccess,
    required TResult Function(CategoryFailed value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategorySuccess value)? loadSuccess,
    TResult Function(CategoryFailed value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategorySuccess value)? loadSuccess,
    TResult Function(CategoryFailed value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;
}

/// @nodoc
abstract class _$$CategoryInitialCopyWith<$Res> {
  factory _$$CategoryInitialCopyWith(
          _$CategoryInitial value, $Res Function(_$CategoryInitial) then) =
      __$$CategoryInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryInitialCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$$CategoryInitialCopyWith<$Res> {
  __$$CategoryInitialCopyWithImpl(
      _$CategoryInitial _value, $Res Function(_$CategoryInitial) _then)
      : super(_value, (v) => _then(v as _$CategoryInitial));

  @override
  _$CategoryInitial get _value => super._value as _$CategoryInitial;
}

/// @nodoc

class _$CategoryInitial implements CategoryInitial {
  const _$CategoryInitial();

  @override
  String toString() {
    return 'CategoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category?> categories) loadSuccess,
    required TResult Function(CategoryFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category?> categories)? loadSuccess,
    TResult Function(CategoryFailure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category?> categories)? loadSuccess,
    TResult Function(CategoryFailure failure)? loadFailure,
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
    required TResult Function(CategoryInitial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategorySuccess value) loadSuccess,
    required TResult Function(CategoryFailed value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategorySuccess value)? loadSuccess,
    TResult Function(CategoryFailed value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategorySuccess value)? loadSuccess,
    TResult Function(CategoryFailed value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CategoryInitial implements CategoryState {
  const factory CategoryInitial() = _$CategoryInitial;
}

/// @nodoc
abstract class _$$CategoryLoadingCopyWith<$Res> {
  factory _$$CategoryLoadingCopyWith(
          _$CategoryLoading value, $Res Function(_$CategoryLoading) then) =
      __$$CategoryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryLoadingCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$$CategoryLoadingCopyWith<$Res> {
  __$$CategoryLoadingCopyWithImpl(
      _$CategoryLoading _value, $Res Function(_$CategoryLoading) _then)
      : super(_value, (v) => _then(v as _$CategoryLoading));

  @override
  _$CategoryLoading get _value => super._value as _$CategoryLoading;
}

/// @nodoc

class _$CategoryLoading implements CategoryLoading {
  const _$CategoryLoading();

  @override
  String toString() {
    return 'CategoryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category?> categories) loadSuccess,
    required TResult Function(CategoryFailure failure) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category?> categories)? loadSuccess,
    TResult Function(CategoryFailure failure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category?> categories)? loadSuccess,
    TResult Function(CategoryFailure failure)? loadFailure,
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
    required TResult Function(CategoryInitial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategorySuccess value) loadSuccess,
    required TResult Function(CategoryFailed value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategorySuccess value)? loadSuccess,
    TResult Function(CategoryFailed value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategorySuccess value)? loadSuccess,
    TResult Function(CategoryFailed value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoryLoading implements CategoryState {
  const factory CategoryLoading() = _$CategoryLoading;
}

/// @nodoc
abstract class _$$CategorySuccessCopyWith<$Res> {
  factory _$$CategorySuccessCopyWith(
          _$CategorySuccess value, $Res Function(_$CategorySuccess) then) =
      __$$CategorySuccessCopyWithImpl<$Res>;
  $Res call({List<Category?> categories});
}

/// @nodoc
class __$$CategorySuccessCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$$CategorySuccessCopyWith<$Res> {
  __$$CategorySuccessCopyWithImpl(
      _$CategorySuccess _value, $Res Function(_$CategorySuccess) _then)
      : super(_value, (v) => _then(v as _$CategorySuccess));

  @override
  _$CategorySuccess get _value => super._value as _$CategorySuccess;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$CategorySuccess(
      categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category?>,
    ));
  }
}

/// @nodoc

class _$CategorySuccess implements CategorySuccess {
  const _$CategorySuccess(final List<Category?> categories)
      : _categories = categories;

  final List<Category?> _categories;
  @override
  List<Category?> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoryState.loadSuccess(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySuccess &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  _$$CategorySuccessCopyWith<_$CategorySuccess> get copyWith =>
      __$$CategorySuccessCopyWithImpl<_$CategorySuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category?> categories) loadSuccess,
    required TResult Function(CategoryFailure failure) loadFailure,
  }) {
    return loadSuccess(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category?> categories)? loadSuccess,
    TResult Function(CategoryFailure failure)? loadFailure,
  }) {
    return loadSuccess?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category?> categories)? loadSuccess,
    TResult Function(CategoryFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategorySuccess value) loadSuccess,
    required TResult Function(CategoryFailed value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategorySuccess value)? loadSuccess,
    TResult Function(CategoryFailed value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategorySuccess value)? loadSuccess,
    TResult Function(CategoryFailed value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class CategorySuccess implements CategoryState {
  const factory CategorySuccess(final List<Category?> categories) =
      _$CategorySuccess;

  List<Category?> get categories;
  @JsonKey(ignore: true)
  _$$CategorySuccessCopyWith<_$CategorySuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryFailedCopyWith<$Res> {
  factory _$$CategoryFailedCopyWith(
          _$CategoryFailed value, $Res Function(_$CategoryFailed) then) =
      __$$CategoryFailedCopyWithImpl<$Res>;
  $Res call({CategoryFailure failure});

  $CategoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$CategoryFailedCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$$CategoryFailedCopyWith<$Res> {
  __$$CategoryFailedCopyWithImpl(
      _$CategoryFailed _value, $Res Function(_$CategoryFailed) _then)
      : super(_value, (v) => _then(v as _$CategoryFailed));

  @override
  _$CategoryFailed get _value => super._value as _$CategoryFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$CategoryFailed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CategoryFailure,
    ));
  }

  @override
  $CategoryFailureCopyWith<$Res> get failure {
    return $CategoryFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$CategoryFailed implements CategoryFailed {
  const _$CategoryFailed(this.failure);

  @override
  final CategoryFailure failure;

  @override
  String toString() {
    return 'CategoryState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryFailed &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$CategoryFailedCopyWith<_$CategoryFailed> get copyWith =>
      __$$CategoryFailedCopyWithImpl<_$CategoryFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category?> categories) loadSuccess,
    required TResult Function(CategoryFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category?> categories)? loadSuccess,
    TResult Function(CategoryFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category?> categories)? loadSuccess,
    TResult Function(CategoryFailure failure)? loadFailure,
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
    required TResult Function(CategoryInitial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategorySuccess value) loadSuccess,
    required TResult Function(CategoryFailed value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategorySuccess value)? loadSuccess,
    TResult Function(CategoryFailed value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategorySuccess value)? loadSuccess,
    TResult Function(CategoryFailed value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class CategoryFailed implements CategoryState {
  const factory CategoryFailed(final CategoryFailure failure) =
      _$CategoryFailed;

  CategoryFailure get failure;
  @JsonKey(ignore: true)
  _$$CategoryFailedCopyWith<_$CategoryFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
