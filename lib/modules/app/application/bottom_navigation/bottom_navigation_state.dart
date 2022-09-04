import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/common/constants/app_icons.dart';
import 'package:flutter_todo_ddd/modules/app/domain/bottom_navigation.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/pages/home_page.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_state.freezed.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState({
    required int currentIndex,
    required Widget page,
    required List<BottomNavigation> pages,
  }) = _BottomNavigationState;

  factory BottomNavigationState.initial() => BottomNavigationState(
        currentIndex: 0,
        page: const HomePage(),
        pages: <BottomNavigation>[
          BottomNavigation(title: 'Home', icon: AppIcons.home),
          BottomNavigation(title: 'Calendar', icon: AppIcons.calendar),
          BottomNavigation(title: 'Add', icon: AppIcons.plus),
          BottomNavigation(title: 'Stats', icon: AppIcons.chart),
          BottomNavigation(title: 'Settings', icon: AppIcons.setting),
        ],
      );
}
