// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  IName get name => throw _privateConstructorUsedError;
  IEmail get email => throw _privateConstructorUsedError;
  IPassword get password => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authOption =>
      throw _privateConstructorUsedError;
  TextEditingController? get passwordController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {IName name,
      IEmail email,
      IPassword password,
      bool loading,
      bool showError,
      Option<Either<AuthFailure, Unit>> authOption,
      TextEditingController? passwordController});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? loading = freezed,
    Object? showError = freezed,
    Object? authOption = freezed,
    Object? passwordController = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as IName,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as IEmail,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as IPassword,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      authOption: authOption == freezed
          ? _value.authOption
          : authOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      passwordController: passwordController == freezed
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {IName name,
      IEmail email,
      IPassword password,
      bool loading,
      bool showError,
      Option<Either<AuthFailure, Unit>> authOption,
      TextEditingController? passwordController});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, (v) => _then(v as _$_RegisterState));

  @override
  _$_RegisterState get _value => super._value as _$_RegisterState;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? loading = freezed,
    Object? showError = freezed,
    Object? authOption = freezed,
    Object? passwordController = freezed,
  }) {
    return _then(_$_RegisterState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as IName,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as IEmail,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as IPassword,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      authOption: authOption == freezed
          ? _value.authOption
          : authOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      passwordController: passwordController == freezed
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {required this.name,
      required this.email,
      required this.password,
      required this.loading,
      required this.showError,
      required this.authOption,
      this.passwordController});

  @override
  final IName name;
  @override
  final IEmail email;
  @override
  final IPassword password;
  @override
  final bool loading;
  @override
  final bool showError;
  @override
  final Option<Either<AuthFailure, Unit>> authOption;
  @override
  final TextEditingController? passwordController;

  @override
  String toString() {
    return 'RegisterState(name: $name, email: $email, password: $password, loading: $loading, showError: $showError, authOption: $authOption, passwordController: $passwordController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.showError, showError) &&
            const DeepCollectionEquality()
                .equals(other.authOption, authOption) &&
            const DeepCollectionEquality()
                .equals(other.passwordController, passwordController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(showError),
      const DeepCollectionEquality().hash(authOption),
      const DeepCollectionEquality().hash(passwordController));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {required final IName name,
      required final IEmail email,
      required final IPassword password,
      required final bool loading,
      required final bool showError,
      required final Option<Either<AuthFailure, Unit>> authOption,
      final TextEditingController? passwordController}) = _$_RegisterState;

  @override
  IName get name;
  @override
  IEmail get email;
  @override
  IPassword get password;
  @override
  bool get loading;
  @override
  bool get showError;
  @override
  Option<Either<AuthFailure, Unit>> get authOption;
  @override
  TextEditingController? get passwordController;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
