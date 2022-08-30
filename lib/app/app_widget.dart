import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_todo_ddd/common/widgets/app_router.dart';
import 'package:flutter_todo_ddd/modules/auth/presentation/pages/login_page.dart';
import 'package:flutter_todo_ddd/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setNavigatorKey(AppRouter.key);

    return ScreenUtilInit(
      designSize: const Size(393, 830),
      minTextAdapt: true,
      child: const LoginPage(),
      // child: const SplashPage(),
      builder: (context, child) => MaterialApp.router(
        title: 'Teek',
        theme: AppTheme.theme,
        scaffoldMessengerKey: AppRouter.scaffoldMessengerKey,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      ),
    );
  }
}
