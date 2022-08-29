import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/pages/splash_page.dart';
import 'package:flutter_todo_ddd/modules/auth/auth_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => const SplashPage()),
    ModuleRoute('/auth', module: AuthModule()),
  ];
}
