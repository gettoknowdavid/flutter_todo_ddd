import 'package:flutter_todo_ddd/modules/auth/domain/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkRequested() = _AuthCheckRequested;
  const factory AuthEvent.checkVerified() = _AuthCheckVerified;
  const factory AuthEvent.sendVerificationEmail() = _SendVerificationEmail;
  const factory AuthEvent.loggedOut() = _LoggedOut;
  const factory AuthEvent.openMailApp() = _OpenMailApp;
}
