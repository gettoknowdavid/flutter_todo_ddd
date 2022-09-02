import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/core/password_rule_object.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_controller.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_state.dart';
import 'package:flutter_todo_ddd/modules/auth/application/forgot-password/forgot_password_controller.dart';
import 'package:flutter_todo_ddd/modules/auth/application/forgot-password/forgot_password_state.dart';
import 'package:flutter_todo_ddd/modules/auth/application/login/login_controller.dart';
import 'package:flutter_todo_ddd/modules/auth/application/login/login_state.dart';
import 'package:flutter_todo_ddd/modules/auth/application/register/register_controller.dart';
import 'package:flutter_todo_ddd/modules/auth/application/register/register_state.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';
import 'package:flutter_todo_ddd/services/open_mail_app_facade.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';
import 'package:flutter_todo_ddd/utils/password_rules.dart';

final authProvider = StateNotifierProvider<AuthController, AuthState>(
  (ref) => AuthController(
    Modular.get<IAuthFacade>(),
    Modular.get<OpenMailAppFacade>(),
  ),
);

final forgotPasswordProvider = StateNotifierProvider.autoDispose<
    ForgotPasswordController, ForgotPasswordState>(
  (ref) {
    ref.onDispose(() => ref.refresh);
    return ForgotPasswordController(Modular.get<IAuthFacade>());
  },
);

final loginProvider =
    StateNotifierProvider.autoDispose<LoginController, LoginState>(
  (ref) {
    ref.onDispose(() => ref.refresh);
    return LoginController(Modular.get<IAuthFacade>());
  },
);

final passwordRuleProvider = Provider((ref) {
  return PRuleObject(passwordRules, false, AppColors.grey);
});

final registerProvider =
    StateNotifierProvider.autoDispose<RegisterController, RegisterState>(
  (ref) {
    ref.onDispose(() => ref.refresh);
    return RegisterController(Modular.get<IAuthFacade>());
  },
);

// final authFacadeProvider = Provider<IAuthFacade>((ref) {
//   return AuthFacade(
//     Modular.get<GoogleSignIn>(),
//     Modular.get<FirebaseAuth>(),
//     Modular.get<UserMapper>(),
//   );
// });

// final authStateProvider = StreamProvider<User?>((ref) {
//   return ref.read(authFacadeProvider).authStateChange;
// });
