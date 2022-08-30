import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_todo_ddd/common/widgets/app_router.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AppDialogs {
  AppDialogs._();

  static noMailAppDialog() async {
    return await showDialog(
      context: AppRouter.key.currentContext!,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.background,
          shape: RoundedRectangleBorder(
            borderRadius: SizeUtil.borderRadius(20),
          ),
          title: const Text('Oops!', textAlign: TextAlign.center),
          content: const Text(
            'No mail apps installed',
            textAlign: TextAlign.center,
          ),
          contentPadding: SizeUtil.pFromLTRB(18, 6, 18, 6),
          actionsPadding: SizeUtil.pFromLTRB(0, 0, 18, 18),
          actions: [
            TextButton(
              onPressed: () => Modular.to.pop(),
              child: const Text('Okay', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }

  static mailAppOptionsDialog(Widget? content) async {
    return await showDialog(
      context: AppRouter.key.currentContext!,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.background,
          shape: RoundedRectangleBorder(
            borderRadius: SizeUtil.borderRadius(20),
          ),
          title: const Text('Open Mail App', textAlign: TextAlign.center),
          content: Column(
            children: [
              const Text(
                'Please select your preferred mail application',
                textAlign: TextAlign.center,
              ),
              SizeUtil.vS(10),
              content ?? const SizedBox(),
            ],
          ),
          contentPadding: SizeUtil.pFromLTRB(18, 6, 18, 6),
          actionsPadding: SizeUtil.pFromLTRB(0, 0, 18, 18),
          actions: [
            OutlinedButton(
              onPressed: () => Modular.to.pop(),
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}
