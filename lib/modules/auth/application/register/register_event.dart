import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.freezed.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.nameChanged(String name) = NameChanged;

  const factory RegisterEvent.emailChanged(String email) = EmailChanged;

  const factory RegisterEvent.passwordChanged(String password) =
      PasswordChanged;

  const factory RegisterEvent.register() = Register;
}
