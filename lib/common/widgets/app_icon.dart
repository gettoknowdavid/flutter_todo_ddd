import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    Key? key,
    required this.icon,
    this.onPressed,
    this.padding,
    this.color,
    this.size,
    this.height,
    this.width,
    required this.semantic,
  }) : super(key: key);

  final String icon;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final double? size;
  final double? height;
  final double? width;

  final String semantic;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final assetName = 'assets/icons/$icon.svg';

    return IconButton(
      padding: padding ?? SizeUtil.pAll(0),
      onPressed: onPressed,
      splashColor: Colors.transparent,
      icon: SvgPicture.asset(
        assetName,
        semanticsLabel: semantic,
        color: color ?? theme.iconTheme.color,
        height: height,
        width: width,
      ),
    );
  }
}
