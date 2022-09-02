// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() statusChanged,
    required TResult Function() submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? statusChanged,
    TResult Function()? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? statusChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(SubmitPressed value)? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  final ForgotPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordEvent) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, (v) => _then(v as _$EmailChanged));

  @override
  _$EmailChanged get _value => super._value as _$EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() statusChanged,
    required TResult Function() submitPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? statusChanged,
    TResult Function()? submitPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? statusChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(SubmitPressed value)? submitPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ForgotPasswordEvent {
  const factory EmailChanged(final String email) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusChangedCopyWith<$Res> {
  factory _$$StatusChangedCopyWith(
          _$StatusChanged value, $Res Function(_$StatusChanged) then) =
      __$$StatusChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusChangedCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$$StatusChangedCopyWith<$Res> {
  __$$StatusChangedCopyWithImpl(
      _$StatusChanged _value, $Res Function(_$StatusChanged) _then)
      : super(_value, (v) => _then(v as _$StatusChanged));

  @override
  _$StatusChanged get _value => super._value as _$StatusChanged;
}

/// @nodoc

class _$StatusChanged implements StatusChanged {
  const _$StatusChanged();

  @override
  String toString() {
    return 'ForgotPasswordEvent.statusChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() statusChanged,
    required TResult Function() submitPressed,
  }) {
    return statusChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? statusChanged,
    TResult Function()? submitPressed,
  }) {
    return statusChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? statusChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(SubmitPressed value)? submitPressed,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class StatusChanged implements ForgotPasswordEvent {
  const factory StatusChanged() = _$StatusChanged;
}

/// @nodoc
abstract class _$$SubmitPressedCopyWith<$Res> {
  factory _$$SubmitPressedCopyWith(
          _$SubmitPressed value, $Res Function(_$SubmitPressed) then) =
      __$$SubmitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitPressedCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$$SubmitPressedCopyWith<$Res> {
  __$$SubmitPressedCopyWithImpl(
      _$SubmitPressed _value, $Res Function(_$SubmitPressed) _then)
      : super(_value, (v) => _then(v as _$SubmitPressed));

  @override
  _$SubmitPressed get _value => super._value as _$SubmitPressed;
}

/// @nodoc

class _$SubmitPressed implements SubmitPressed {
  const _$SubmitPressed();

  @override
  String toString() {
    return 'ForgotPasswordEvent.submitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() statusChanged,
    required TResult Function() submitPressed,
  }) {
    return submitPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? statusChanged,
    TResult Function()? submitPressed,
  }) {
    return submitPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? statusChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(SubmitPressed value)? submitPressed,
  }) {
    return submitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class SubmitPressed implements ForgotPasswordEvent {
  const factory SubmitPressed() = _$SubmitPressed;
}
