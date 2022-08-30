import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/common/widgets/app_router.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AppSnackbar {
  AppSnackbar._();

  static final context = AppRouter.key.currentContext!;
  static final state = AppRouter.scaffoldMessengerKey.currentState!;

  static get closeAll {
    state.removeCurrentSnackBar();
    state.clearSnackBars();
  }

  static errorSnackbar({required String title, required String message}) {
    final textTheme = Theme.of(context).textTheme;

    return state.showSnackBar(
      SnackBar(
        clipBehavior: Clip.none,
        backgroundColor: Colors.transparent,
        elevation: 0,
        padding: SizeUtil.pSymmetric(h: 18, v: 20),
        content: Container(
          height: SizeUtil.sh(0.12),
          alignment: Alignment.center,
          padding: SizeUtil.pAll(18),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.error,
            borderRadius: SizeUtil.borderRadius(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.warning_rounded, color: Colors.white),
              SizeUtil.hS(20),
              Flexible(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runSpacing: SizeUtil.r(10),
                  children: [
                    Text(
                      title,
                      style: textTheme.titleLarge?.copyWith(
                        fontSize: SizeUtil.fontSize(16),
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).colorScheme.onError,
                      ),
                    ),
                    Text(
                      message,
                      style: textTheme.bodyLarge?.copyWith(
                        fontSize: SizeUtil.fontSize(14),
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.onError,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static successSnackbar({required String title, required String message}) {
    final textTheme = Theme.of(context).textTheme;

    return state.showSnackBar(
      SnackBar(
        clipBehavior: Clip.none,
        backgroundColor: Colors.transparent,
        padding: SizeUtil.pSymmetric(h: 18),
        content: Container(
          height: SizeUtil.sh(0.14),
          alignment: Alignment.center,
          padding: SizeUtil.pAll(18),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: SizeUtil.borderRadius(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.check_circle_outline, color: Colors.white),
              SizeUtil.hS(20),
              Flexible(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runSpacing: SizeUtil.r(10),
                  children: [
                    Text(
                      title,
                      style: textTheme.titleLarge?.copyWith(
                        fontSize: SizeUtil.fontSize(16),
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      message,
                      style: textTheme.bodyLarge?.copyWith(
                        fontSize: SizeUtil.fontSize(14),
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
