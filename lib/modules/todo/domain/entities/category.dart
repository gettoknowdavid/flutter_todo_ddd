import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';

enum Category { all, upComing, today, done }

extension CategoryColor on Category {
  Color get color {
    switch (this) {
      case Category.done:
        return AppColors.grey;
      case Category.upComing:
        return AppColors.green;
      case Category.today:
        return AppColors.orange;
      default:
        return AppColors.grey;
    }
  }
}

extension CategoryName on Category {
  String get name {
    switch (this) {
      case Category.done:
        return 'Done';
      case Category.upComing:
        return 'Upcoming';
      case Category.today:
        return 'Today';
      default:
        return 'All';
    }
  }
}
