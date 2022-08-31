import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/entities/user.dart' as app;
import 'package:flutter_todo_ddd/modules/auth/domain/errors/auth_failure.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/value_objects.dart';
import 'package:flutter_todo_ddd/modules/auth/infrastructure/dtos/user_dto.dart';
import 'package:flutter_todo_ddd/modules/auth/infrastructure/user_mapper.dart';
import 'package:google_sign_in/google_sign_in.dart';

@Injectable()
class AuthFacade implements IAuthFacade {
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;
  final UserMapper _userMapper;

  AuthFacade(this._googleSignIn, this._firebaseAuth, this._userMapper);

  @override
  Stream<User?> get authStateChange => _firebaseAuth.authStateChanges();

  @override
  Future<Option<Either<AuthFailure, bool?>>> checkVerification() async {
    if (_firebaseAuth.currentUser != null) {
      await _firebaseAuth.currentUser!.reload();
      final value = _firebaseAuth.currentUser!.emailVerified;
      if (value) {
        return optionOf(right(value));
      } else {
        return optionOf(left(const AuthFailure.emailNotVerified()));
      }
    } else {
      return optionOf(null);
    }
  }

  @override
  Future<Option<app.User?>> currentUser() async {
    final fUser = _firebaseAuth.currentUser;

    if (fUser != null) {
      final user = await usersRef.doc(fUser.uid).get().then((v) => v.data);

      return optionOf(_userMapper.toDomain(user));
    } else {
      return optionOf(null);
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> googleLogin() async {
    try {
      await _googleSignIn.signOut();
      return await _googleSignIn.signIn().then((gAccount) async {
        if (gAccount != null) {
          return await gAccount.authentication.then((gAuth) async {
            final credential = GoogleAuthProvider.credential(
              accessToken: gAuth.accessToken,
              idToken: gAuth.idToken,
            );

            await _firebaseAuth.signInWithCredential(credential);

            return right(unit);
          });
        }

        return left(const AuthFailure.noGoogleAccount());
      });
    } on FirebaseAuthException catch (_) {
      print(_);
      return left(const AuthFailure.noGoogleAccount());
    } on Exception catch (_) {
      print(_);
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> login({
    required IEmail email,
    required IPassword password,
  }) async {
    final email_ = email.getOrCrash()!;
    final password_ = password.getOrCrash()!;

    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(email: email_, password: password_)
          .timeout(const Duration(seconds: 10))
          .then((_) => right(unit));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailOrPassword());
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> logout() => Future.wait([_firebaseAuth.signOut()]);

  @override
  Future<Either<AuthFailure, Unit>> register({
    required IName name,
    required IEmail email,
    required IPassword password,
  }) async {
    final email_ = email.getOrCrash()!;
    final password_ = password.getOrCrash()!;
    final name_ = name.getOrCrash()!;

    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(email: email_, password: password_)
          .timeout(const Duration(seconds: 10))
          .then((value) {
        _firebaseAuth.currentUser!.updateDisplayName(name_);

        final user = UserDto(uid: value.user!.uid, name: name_, email: email_);

        usersRef.doc(value.user!.uid).set(user);

        _firebaseAuth.currentUser!.sendEmailVerification();

        return right(unit);
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> sendVerificationEmail() async {
    return await _firebaseAuth.currentUser!.sendEmailVerification();
  }
}
