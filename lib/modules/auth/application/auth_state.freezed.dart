// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_AwaitingVerified value) awaitingVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
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
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_AwaitingVerified value) awaitingVerified,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, (v) => _then(v as _$_Authenticated));

  @override
  _$_Authenticated get _value => super._value as _$_Authenticated;
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_AwaitingVerified value) awaitingVerified,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$$_UnauthenticatedCopyWith<$Res> {
  factory _$$_UnauthenticatedCopyWith(
          _$_Unauthenticated value, $Res Function(_$_Unauthenticated) then) =
      __$$_UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_UnauthenticatedCopyWith<$Res> {
  __$$_UnauthenticatedCopyWithImpl(
      _$_Unauthenticated _value, $Res Function(_$_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _$_Unauthenticated));

  @override
  _$_Unauthenticated get _value => super._value as _$_Unauthenticated;
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_AwaitingVerified value) awaitingVerified,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$$_VerifiedCopyWith<$Res> {
  factory _$$_VerifiedCopyWith(
          _$_Verified value, $Res Function(_$_Verified) then) =
      __$$_VerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifiedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_VerifiedCopyWith<$Res> {
  __$$_VerifiedCopyWithImpl(
      _$_Verified _value, $Res Function(_$_Verified) _then)
      : super(_value, (v) => _then(v as _$_Verified));

  @override
  _$_Verified get _value => super._value as _$_Verified;
}

/// @nodoc

class _$_Verified implements _Verified {
  const _$_Verified();

  @override
  String toString() {
    return 'AuthState.verified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Verified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
  }) {
    return verified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_AwaitingVerified value) awaitingVerified,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class _Verified implements AuthState {
  const factory _Verified() = _$_Verified;
}

/// @nodoc
abstract class _$$_UnverifiedCopyWith<$Res> {
  factory _$$_UnverifiedCopyWith(
          _$_Unverified value, $Res Function(_$_Unverified) then) =
      __$$_UnverifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnverifiedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_UnverifiedCopyWith<$Res> {
  __$$_UnverifiedCopyWithImpl(
      _$_Unverified _value, $Res Function(_$_Unverified) _then)
      : super(_value, (v) => _then(v as _$_Unverified));

  @override
  _$_Unverified get _value => super._value as _$_Unverified;
}

/// @nodoc

class _$_Unverified implements _Unverified {
  const _$_Unverified();

  @override
  String toString() {
    return 'AuthState.unverified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unverified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
  }) {
    return unverified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
  }) {
    return unverified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_AwaitingVerified value) awaitingVerified,
  }) {
    return unverified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
  }) {
    return unverified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified(this);
    }
    return orElse();
  }
}

abstract class _Unverified implements AuthState {
  const factory _Unverified() = _$_Unverified;
}

/// @nodoc
abstract class _$$_AwaitingVerifiedCopyWith<$Res> {
  factory _$$_AwaitingVerifiedCopyWith(
          _$_AwaitingVerified value, $Res Function(_$_AwaitingVerified) then) =
      __$$_AwaitingVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AwaitingVerifiedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AwaitingVerifiedCopyWith<$Res> {
  __$$_AwaitingVerifiedCopyWithImpl(
      _$_AwaitingVerified _value, $Res Function(_$_AwaitingVerified) _then)
      : super(_value, (v) => _then(v as _$_AwaitingVerified));

  @override
  _$_AwaitingVerified get _value => super._value as _$_AwaitingVerified;
}

/// @nodoc

class _$_AwaitingVerified implements _AwaitingVerified {
  const _$_AwaitingVerified();

  @override
  String toString() {
    return 'AuthState.awaitingVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AwaitingVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
  }) {
    return awaitingVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
  }) {
    return awaitingVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    required TResult orElse(),
  }) {
    if (awaitingVerified != null) {
      return awaitingVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_AwaitingVerified value) awaitingVerified,
  }) {
    return awaitingVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
  }) {
    return awaitingVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_AwaitingVerified value)? awaitingVerified,
    required TResult orElse(),
  }) {
    if (awaitingVerified != null) {
      return awaitingVerified(this);
    }
    return orElse();
  }
}

abstract class _AwaitingVerified implements AuthState {
  const factory _AwaitingVerified() = _$_AwaitingVerified;
}
