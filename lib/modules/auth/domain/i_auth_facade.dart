import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/errors/auth_failure.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> register({
    required IName name,
    required IEmail email,
    required IPassword password,
  });

  Future<Either<AuthFailure, Unit>> login({
    required IEmail email,
    required IPassword password,
  });

  Future<void> logout();
}
