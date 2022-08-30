import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';

class PasswordRuleItem extends StatelessWidget {
  final Map<dynamic, dynamic> ruleMap;
  final String? password;
  final Color unsetColor;
  final Color setColor;
  const PasswordRuleItem({
    Key? key,
    required this.ruleMap,
    required this.password,
    this.unsetColor = AppColors.red,
    this.setColor = Colors.green,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color ruleColor = password == null
        ? Colors.black54
        : !ruleMap['rule'](password)
            ? unsetColor
            : setColor;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1).r,
      child: Row(
        children: [
          Icon(Icons.check_circle, size: 18.r, color: ruleColor),
          6.horizontalSpace,
          Text(
            ruleMap["name"].toString(),
            style: TextStyle(fontSize: 12.r, color: ruleColor),
          )
        ],
      ),
    );
  }
}

class PasswordRulesWidget extends ConsumerWidget {
  final String? password;

  const PasswordRulesWidget({Key? key, this.password}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(passwordRuleProvider);
    final registerState = ref.watch(registerProvider);
    final length = state.rules.length;

    return Visibility(
      visible: registerState.passwordController?.text != null,
      child: Column(
        children: [
          5.verticalSpace,
          for (var i = 0; i < length; i++) ...[
            PasswordRuleItem(
              ruleMap: state.rules[i],
              password: registerState.passwordController?.text,
            ),
          ]
        ],
      ),
    );
  }
}
