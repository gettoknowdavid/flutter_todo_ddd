import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/common/constants/app_icons.dart';
import 'package:flutter_todo_ddd/common/widgets/app_icon.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: SizeUtil.pSymmetric(h: 18),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for todos',
          prefixIcon: AppIcon(
            padding: SizeUtil.pSymmetric(h: 16),
            icon: AppIcons.search,
            semantic: 'Search icon',
            height: SizeUtil.h(22),
            color: theme.primaryColorDark,
          ),
        ),
      ),
    );
  }
}
