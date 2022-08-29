import 'package:flutter_todo_ddd/core/uid.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required Uid uid,
    required IName name,
    required IEmail email,
    String? avatar,
  }) = _User;

  factory User.empty() => User(
        uid: Uid(),
        name: IName(''),
        email: IEmail(''),
      );
}
