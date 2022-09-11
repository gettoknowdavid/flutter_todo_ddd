// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? f) empty,
    required TResult Function(T f) invalidEmail,
    required TResult Function(T f) invalidPassword,
    required TResult Function(T f) titleLengthExceeded,
    required TResult Function(T f) descLengthExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? f)? empty,
    TResult Function(T f)? invalidEmail,
    TResult Function(T f)? invalidPassword,
    TResult Function(T f)? titleLengthExceeded,
    TResult Function(T f)? descLengthExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? f)? empty,
    TResult Function(T f)? invalidEmail,
    TResult Function(T f)? invalidPassword,
    TResult Function(T f)? titleLengthExceeded,
    TResult Function(T f)? descLengthExceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(TitleLengthExceeded<T> value) titleLengthExceeded,
    required TResult Function(DescLengthExceeded<T> value) descLengthExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(TitleLengthExceeded<T> value)? titleLengthExceeded,
    TResult Function(DescLengthExceeded<T> value)? descLengthExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(TitleLengthExceeded<T> value)? titleLengthExceeded,
    TResult Function(DescLengthExceeded<T> value)? descLengthExceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$$EmptyCopyWith<T, $Res> {
  factory _$$EmptyCopyWith(_$Empty<T> value, $Res Function(_$Empty<T>) then) =
      __$$EmptyCopyWithImpl<T, $Res>;
  $Res call({T? f});
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$EmptyCopyWith<T, $Res> {
  __$$EmptyCopyWithImpl(_$Empty<T> _value, $Res Function(_$Empty<T>) _then)
      : super(_value, (v) => _then(v as _$Empty<T>));

  @override
  _$Empty<T> get _value => super._value as _$Empty<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$Empty<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty([this.f]);

  @override
  final T? f;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      __$$EmptyCopyWithImpl<T, _$Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? f) empty,
    required TResult Function(T f) invalidEmail,
    required TResult Function(T f) invalidPassword,
    required TResult Function(T f) titleLengthExceeded,
    required TResult Function(T f) descLengthExceeded,
  }) {
    return empty(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? f)? empty,
    TResult Function(T f)? invalidEmail,
    TResult Function(T f)? invalidPassword,
    TResult Function(T f)? titleLengthExceeded,
    TResult Function(T f)? descLengthExceeded,
  }) {
    return empty?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? f)? empty,
    TResult Function(T f)? invalidEmail,
    TResult Function(T f)? invalidPassword,
    TResult Function(T f)? titleLengthExceeded,
    TResult Function(T f)? descLengthExceeded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(TitleLengthExceeded<T> value) titleLengthExceeded,
    required TResult Function(DescLengthExceeded<T> value) descLengthExceeded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(TitleLengthExceeded<T> value)? titleLengthExceeded,
    TResult Function(DescLengthExceeded<T> value)? descLengthExceeded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(TitleLengthExceeded<T> value)? titleLengthExceeded,
    TResult Function(DescLengthExceeded<T> value)? descLengthExceeded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty([final T? f]) = _$Empty<T>;

  T? get f;
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T f});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidEmail<T>));

  @override
  _$InvalidEmail<T> get _value => super._value as _$InvalidEmail<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$InvalidEmail<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail(this.f);

  @override
  final T f;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<T, _$InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? f) empty,
    required TResult Function(T f) invalidEmail,
    required TResult Function(T f) invalidPassword,
    required TResult Function(T f) titleLengthExceeded,
    required TResult Function(T f) descLengthExceeded,
  }) {
    return invalidEmail(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? f)? empty,
    TResult Function(T f)? invalidEmail,
    TResult Function(T f)? invalidPassword,
    TResult Function(T f)? titleLengthExceeded,
    TResult Function(T f)? descLengthExceeded,
  }) {
    return invalidEmail?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? f)? empty,
    TResult Function(T f)? invalidEmail,
    TResult Function(T f)? invalidPassword,
    TResult Function(T f)? titleLengthExceeded,
    TResult Function(T f)? descLengthExceeded,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(TitleLengthExceeded<T> value) titleLengthExceeded,
    required TResult Function(DescLengthExceeded<T> value) descLengthExceeded,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(TitleLengthExceeded<T> value)? titleLengthExceeded,
    TResult Function(DescLengthExceeded<T> value)? descLengthExceeded,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(TitleLengthExceeded<T> value)? titleLengthExceeded,
    TResult Function(DescLengthExceeded<T> value)? descLengthExceeded,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail(final T f) = _$InvalidEmail<T>;

  T get f;
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPasswordCopyWith<T, $Res> {
  factory _$$InvalidPasswordCopyWith(_$InvalidPassword<T> value,
          $Res Function(_$InvalidPassword<T>) then) =
      __$$InvalidPasswordCopyWithImpl<T, $Res>;
  $Res call({T f});
}

/// @nodoc
class __$$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidPasswordCopyWith<T, $Res> {
  __$$InvalidPasswordCopyWithImpl(
      _$InvalidPassword<T> _value, $Res Function(_$InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidPassword<T>));

  @override
  _$InvalidPassword<T> get _value => super._value as _$InvalidPassword<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$InvalidPassword<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidPassword<T> implements InvalidPassword<T> {
  const _$InvalidPassword(this.f);

  @override
  final T f;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPassword<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$InvalidPasswordCopyWith<T, _$InvalidPassword<T>> get copyWith =>
      __$$InvalidPasswordCopyWithImpl<T, _$InvalidPassword<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? f) empty,
    required TResult Function(T f) invalidEmail,
    required TResult Function(T f) invalidPassword,
    required TResult Function(T f) titleLengthExceeded,
    required TResult Function(T f) descLengthExceeded,
  }) {
    return invalidPassword(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? f)? empty,
    TResult Function(T f)? invalidEmail,
    TResult Function(T f)? invalidPassword,
    TResult Function(T f)? titleLengthExceeded,
    TResult Function(T f)? descLengthExceeded,
  }) {
    return invalidPassword?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? f)? empty,
    TResult Function(T f)? invalidEmail,
    TResult Function(T f)? invalidPassword,
    TResult Function(T f)? titleLengthExceeded,
    TResult Function(T f)? descLengthExceeded,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(TitleLengthExceeded<T> value) titleLengthExceeded,
    required TResult Function(DescLengthExceeded<T> value) descLengthExceeded,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(TitleLengthExceeded<T> value)? titleLengthExceeded,
    TResult Function(DescLengthExceeded<T> value)? descLengthExceeded,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(TitleLengthExceeded<T> value)? titleLengthExceeded,
    TResult Function(DescLengthExceeded<T> value)? descLengthExceeded,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  const factory InvalidPassword(final T f) = _$InvalidPassword<T>;

  T get f;
  @JsonKey(ignore: true)
  _$$InvalidPasswordCopyWith<T, _$InvalidPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleLengthExceededCopyWith<T, $Res> {
  factory _$$TitleLengthExceededCopyWith(_$TitleLengthExceeded<T> value,
          $Res Function(_$TitleLengthExceeded<T>) then) =
      __$$TitleLengthExceededCopyWithImpl<T, $Res>;
  $Res call({T f});
}

/// @nodoc
class __$$TitleLengthExceededCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$TitleLengthExceededCopyWith<T, $Res> {
  __$$TitleLengthExceededCopyWithImpl(_$TitleLengthExceeded<T> _value,
      $Res Function(_$TitleLengthExceeded<T>) _then)
      : super(_value, (v) => _then(v as _$TitleLengthExceeded<T>));

  @override
  _$TitleLengthExceeded<T> get _value =>
      super._value as _$TitleLengthExceeded<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$TitleLengthExceeded<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$TitleLengthExceeded<T> implements TitleLengthExceeded<T> {
  const _$TitleLengthExceeded(this.f);

  @override
  final T f;

  @override
  String toString() {
    return 'ValueFailure<$T>.titleLengthExceeded(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleLengthExceeded<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$TitleLengthExceededCopyWith<T, _$TitleLengthExceeded<T>> get copyWith =>
      __$$TitleLengthExceededCopyWithImpl<T, _$TitleLengthExceeded<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? f) empty,
    required TResult Function(T f) invalidEmail,
    required TResult Function(T f) invalidPassword,
    required TResult Function(T f) titleLengthExceeded,
    required TResult Function(T f) descLengthExceeded,
  }) {
    return titleLengthExceeded(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? f)? empty,
    TResult Function(T f)? invalidEmail,
    TResult Function(T f)? invalidPassword,
    TResult Function(T f)? titleLengthExceeded,
    TResult Function(T f)? descLengthExceeded,
  }) {
    return titleLengthExceeded?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? f)? empty,
    TResult Function(T f)? invalidEmail,
    TResult Function(T f)? invalidPassword,
    TResult Function(T f)? titleLengthExceeded,
    TResult Function(T f)? descLengthExceeded,
    required TResult orElse(),
  }) {
    if (titleLengthExceeded != null) {
      return titleLengthExceeded(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(TitleLengthExceeded<T> value) titleLengthExceeded,
    required TResult Function(DescLengthExceeded<T> value) descLengthExceeded,
  }) {
    return titleLengthExceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(TitleLengthExceeded<T> value)? titleLengthExceeded,
    TResult Function(DescLengthExceeded<T> value)? descLengthExceeded,
  }) {
    return titleLengthExceeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(TitleLengthExceeded<T> value)? titleLengthExceeded,
    TResult Function(DescLengthExceeded<T> value)? descLengthExceeded,
    required TResult orElse(),
  }) {
    if (titleLengthExceeded != null) {
      return titleLengthExceeded(this);
    }
    return orElse();
  }
}

abstract class TitleLengthExceeded<T> implements ValueFailure<T> {
  const factory TitleLengthExceeded(final T f) = _$TitleLengthExceeded<T>;

  T get f;
  @JsonKey(ignore: true)
  _$$TitleLengthExceededCopyWith<T, _$TitleLengthExceeded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescLengthExceededCopyWith<T, $Res> {
  factory _$$DescLengthExceededCopyWith(_$DescLengthExceeded<T> value,
          $Res Function(_$DescLengthExceeded<T>) then) =
      __$$DescLengthExceededCopyWithImpl<T, $Res>;
  $Res call({T f});
}

/// @nodoc
class __$$DescLengthExceededCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$DescLengthExceededCopyWith<T, $Res> {
  __$$DescLengthExceededCopyWithImpl(_$DescLengthExceeded<T> _value,
      $Res Function(_$DescLengthExceeded<T>) _then)
      : super(_value, (v) => _then(v as _$DescLengthExceeded<T>));

  @override
  _$DescLengthExceeded<T> get _value => super._value as _$DescLengthExceeded<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$DescLengthExceeded<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DescLengthExceeded<T> implements DescLengthExceeded<T> {
  const _$DescLengthExceeded(this.f);

  @override
  final T f;

  @override
  String toString() {
    return 'ValueFailure<$T>.descLengthExceeded(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescLengthExceeded<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$DescLengthExceededCopyWith<T, _$DescLengthExceeded<T>> get copyWith =>
      __$$DescLengthExceededCopyWithImpl<T, _$DescLengthExceeded<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? f) empty,
    required TResult Function(T f) invalidEmail,
    required TResult Function(T f) invalidPassword,
    required TResult Function(T f) titleLengthExceeded,
    required TResult Function(T f) descLengthExceeded,
  }) {
    return descLengthExceeded(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? f)? empty,
    TResult Function(T f)? invalidEmail,
    TResult Function(T f)? invalidPassword,
    TResult Function(T f)? titleLengthExceeded,
    TResult Function(T f)? descLengthExceeded,
  }) {
    return descLengthExceeded?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? f)? empty,
    TResult Function(T f)? invalidEmail,
    TResult Function(T f)? invalidPassword,
    TResult Function(T f)? titleLengthExceeded,
    TResult Function(T f)? descLengthExceeded,
    required TResult orElse(),
  }) {
    if (descLengthExceeded != null) {
      return descLengthExceeded(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(TitleLengthExceeded<T> value) titleLengthExceeded,
    required TResult Function(DescLengthExceeded<T> value) descLengthExceeded,
  }) {
    return descLengthExceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(TitleLengthExceeded<T> value)? titleLengthExceeded,
    TResult Function(DescLengthExceeded<T> value)? descLengthExceeded,
  }) {
    return descLengthExceeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(TitleLengthExceeded<T> value)? titleLengthExceeded,
    TResult Function(DescLengthExceeded<T> value)? descLengthExceeded,
    required TResult orElse(),
  }) {
    if (descLengthExceeded != null) {
      return descLengthExceeded(this);
    }
    return orElse();
  }
}

abstract class DescLengthExceeded<T> implements ValueFailure<T> {
  const factory DescLengthExceeded(final T f) = _$DescLengthExceeded<T>;

  T get f;
  @JsonKey(ignore: true)
  _$$DescLengthExceededCopyWith<T, _$DescLengthExceeded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
