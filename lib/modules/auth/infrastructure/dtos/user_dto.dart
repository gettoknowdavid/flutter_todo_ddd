import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

const firestoreSerializable = JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
);

@Collection<UserDto>('users')
final usersRef = UserDtoCollectionReference();

@freezed
@firestoreSerializable
class UserDto with _$UserDto {
  factory UserDto({
    required String uid,
    required String name,
    required String email,
    String? avatar,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      uid: user.uid.getOrCrash()!,
      name: user.name.getOrCrash()!,
      email: user.email.getOrCrash()!,
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}
