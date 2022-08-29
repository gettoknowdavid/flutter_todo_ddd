import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_todo_ddd/core/uid.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/entities/user.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/value_objects.dart';
import 'package:flutter_todo_ddd/modules/auth/infrastructure/dtos/user_dto.dart';

@Injectable()
class UserMapper {
  User? toDomain(UserDto? dto) {
    if (dto == null) {
      return null;
    }

    return User(
      uid: Uid.fromUniqueString(dto.uid),
      name: IName(dto.name),
      email: IEmail(dto.email),
      avatar: dto.avatar,
    );
  }
}
