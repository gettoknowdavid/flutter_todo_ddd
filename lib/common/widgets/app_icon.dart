import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    Key? key,
    required this.icon,
    this.onPressed,
    this.padding,
    this.color,
    this.size,
    required this.semantic,
  }) : super(key: key);

  final String icon;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final double? size;
  final String semantic;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return IconButton(
      padding: padding ?? SizeUtil.pAll(0),
      onPressed: onPressed,
      splashColor: Colors.transparent,
      icon: ImageIcon(
        AssetImage('assets/icons/$icon.png'),
        color: color ?? theme.iconTheme.color,
        semanticLabel: semantic,
        size: size ?? theme.iconTheme.size,
      ),
    );
  }
}
