import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/app/application/bottom_navigation/bottom_navigation_event.dart';
import 'package:flutter_todo_ddd/modules/app/application/bottom_navigation/bottom_navigation_state.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/pages/calendar_page.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/pages/home_page.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/pages/settings_page.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/pages/stats_page.dart';

class BottomNavigationController extends StateNotifier<BottomNavigationState> {
  BottomNavigationController() : super(BottomNavigationState.initial());

  Widget get _getPage {
    switch (state.currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const CalendarPage();
      case 2:
        return const StatsPage();
      case 3:
        return const SettingsPage();
      default:
        return const HomePage();
    }
  }

  Future mapEventsToStates(BottomNavigationEvent e) async {
    e.map(
      indexSet: _indexSet,
      pageUpdated: _pageUpdated,
    );
  }

  _indexSet(IndexSet e) async {
    state = state.copyWith(currentIndex: e.index);
  }

  _pageUpdated(PageUpdated e) async {
    state = state.copyWith(page: _getPage, currentIndex: e.index);
  }
}
