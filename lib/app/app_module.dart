import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/pages/splash_page.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_controller.dart';
import 'package:flutter_todo_ddd/modules/auth/application/login/login_controller.dart';
import 'package:flutter_todo_ddd/modules/auth/application/register/register_controller.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';
import 'package:flutter_todo_ddd/modules/auth/infrastructure/auth_facade.dart';
import 'package:flutter_todo_ddd/modules/auth/infrastructure/user_mapper.dart';
import 'package:flutter_todo_ddd/modules/auth/presentation/pages/login_page.dart';
import 'package:flutter_todo_ddd/modules/auth/presentation/pages/register_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<FirebaseAuth>((i) => FirebaseAuth.instance),
    Bind.lazySingleton<UserMapper>((i) => UserMapper()),
    Bind.lazySingleton<IAuthFacade>((i) => AuthFacade(i(), i())),
    Bind.lazySingleton<LoginController>((i) => LoginController(i())),
    Bind.lazySingleton<RegisterController>((i) => RegisterController(i())),
    Bind.lazySingleton<AuthController>((i) => AuthController(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => const SplashPage()),
    ChildRoute('/login', child: (_, __) => const LoginPage()),
    ChildRoute('/register', child: (_, __) => const RegisterPage()),
  ];
}
