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
  Future<Option<app.User?>> currentUser() async {
    User? fUser;
    _firebaseAuth.authStateChanges().listen((value) => fUser = value);

    if (fUser != null) {
      final user = await usersRef.doc(fUser!.uid).get().then((v) => v.data);
      return optionOf(_userMapper.toDomain(user));
    } else {
      return optionOf(null);
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> forgotPassword({
    required IEmail email,
  }) async {
    final email_ = email.getOrCrash()!;

    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email_);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'auth/user-not-found':
          return left(const AuthFailure.userNotFound());
        case 'auth/invalid-email':
          return left(const AuthFailure.invalidEmail());
        default:
          return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> googleLogin() async {
    try {
      await _googleSignIn.signOut();

      final GoogleSignInAccount? gAccount = await _googleSignIn.signIn();

      if (gAccount != null) {
        final GoogleSignInAuthentication gAuth = await gAccount.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: gAuth.accessToken,
          idToken: gAuth.idToken,
        );

        final userCred = await _firebaseAuth.signInWithCredential(credential);

        final user = UserDto(
          uid: userCred.user!.uid,
          name: userCred.user!.displayName!,
          email: userCred.user!.email!,
          avatar: userCred.user?.photoURL,
        );

        usersRef.doc(user.uid).set(user);

        return right(unit);
      }

      return left(const AuthFailure.noGoogleAccount());
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.noGoogleAccount());
    } on Exception catch (_) {
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

    // john.doe@gmail.com

    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(email: email_, password: password_)
          .then((value) => right(unit));
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'wrong-password':
        case 'user-not-found':
          return left(const AuthFailure.invalidEmailOrPassword());
        default:
          return left(const AuthFailure.serverError());
      }
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
