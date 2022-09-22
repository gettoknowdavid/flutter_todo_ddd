import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';

enum Category { all, today, inbox, upComing }

extension CategoryColor on Category {
  Color get color {
    switch (this) {
      case Category.inbox:
        return AppColors.lavender;
      case Category.upComing:
        return Colors.green;
      case Category.today:
        return AppColors.orange;
      default:
        return AppColors.black;
    }
  }
}

extension CategoryName on Category {
  String get name {
    switch (this) {
      case Category.inbox:
        return 'Inbox';
      case Category.upComing:
        return 'Upcoming';
      case Category.today:
        return 'Today';
      default:
        return 'All';
    }
  }
}
