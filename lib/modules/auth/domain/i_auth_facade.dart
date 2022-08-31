import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter_todo_ddd/modules/auth/domain/entities/user.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/errors/auth_failure.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/value_objects.dart';

abstract class IAuthFacade {
  Stream<firebase.User?> get authStateChange;

  Future<Option<Either<AuthFailure, bool?>>> checkVerification();

  Future<Option<User?>> currentUser();

  Future<Either<AuthFailure, Unit>> googleLogin();

  Future<Either<AuthFailure, Unit>> login({
    required IEmail email,
    required IPassword password,
  });

  Future<void> logout();

  Future<Either<AuthFailure, Unit>> register({
    required IName name,
    required IEmail email,
    required IPassword password,
  });

  Future<void> sendVerificationEmail();
}
