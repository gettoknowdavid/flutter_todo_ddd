import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/pages/splash_page.dart';
import 'package:flutter_todo_ddd/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 830),
      minTextAdapt: true,
      child: const SplashPage(),
      builder: (context, child) => MaterialApp.router(
        title: 'Teek',
        theme: AppTheme.theme,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      ),
    );
  }
}
