import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkRequested() = AuthCheckRequested;
  const factory AuthEvent.checkVerified() = AuthCheckVerified;
  const factory AuthEvent.sendVerificationEmail() = SendVerificationEmail;
  const factory AuthEvent.loggedOut() = LoggedOut;
  const factory AuthEvent.openMailApp() = OpenMailApp;
}
