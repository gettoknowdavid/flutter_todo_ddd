import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_todo_ddd/modules/auth/presentation/pages/login_page.dart';
import 'package:flutter_todo_ddd/modules/auth/presentation/pages/register_page.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/login', child: (_, __) => const LoginPage()),
    ChildRoute('/register', child: (_, __) => const RegisterPage()),
  ];
}
