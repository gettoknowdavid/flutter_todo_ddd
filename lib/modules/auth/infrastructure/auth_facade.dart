import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/errors/auth_failure.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/value_objects.dart';
import 'package:flutter_todo_ddd/modules/auth/infrastructure/user_mapper.dart';
import 'package:flutter_modular/flutter_modular.dart';

@Injectable()
class AuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final UserMapper _userMapper;

  AuthFacade(this._firebaseAuth, this._userMapper);

  @override
  Future<Either<AuthFailure, Unit>> login({
    required IEmail email,
    required IPassword password,
  }) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> register({
    required IName name,
    required IEmail email,
    required IPassword password,
  }) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
