import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/modules/app/domain/bottom_navigation.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/pages/app_page.dart';
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
        page: const AppPage(),
        pages: <BottomNavigation>[
          BottomNavigation(title: 'Home', icon: Icons.home),
          BottomNavigation(title: 'Calendar', icon: Icons.calendar_today),
          BottomNavigation(title: 'Stats', icon: Icons.bar_chart),
          BottomNavigation(title: 'Settings', icon: Icons.settings),
        ],
      );
}
