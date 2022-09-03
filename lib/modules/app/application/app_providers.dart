import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/app/application/bottom_navigation/bottom_navigation_controller.dart';
import 'package:flutter_todo_ddd/modules/app/application/bottom_navigation/bottom_navigation_state.dart';

final bottomNavProvider =
    StateNotifierProvider<BottomNavigationController, BottomNavigationState>(
  (ref) => BottomNavigationController(),
);
