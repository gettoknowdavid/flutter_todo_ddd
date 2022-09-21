import 'package:flutter/cupertino.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class AppListLoadingIndicator extends StatelessWidget {
  const AppListLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: SizeUtil.pSymmetric(h: 18, v: 22),
      itemCount: 5,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Shimmer(
          enabled: true,
          child: Container(
            height: SizeUtil.h(90),
            width: SizeUtil.sw(1),
            margin: SizeUtil.pSymmetric(v: 6),
            decoration: BoxDecoration(
              color: AppColors.lavender,
              borderRadius: SizeUtil.borderRadius(26),
            ),
          ),
        );
      },
    );
  }
}
