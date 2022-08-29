import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailNotVerified() = EmailNotVerified;
  const factory AuthFailure.emailInUse() = EmailInUse;
  const factory AuthFailure.invalidEmailOrPassword() = InvalidEmailOrPassword;
}
