import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_event.freezed.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.emailChanged(String email) = EmailChanged;
  const factory ForgotPasswordEvent.submitPressed() = SubmitPressed;
}
