import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/constants/app_icons.dart';
import 'package:flutter_todo_ddd/modules/app/domain/bottom_navigation.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/pages/calendar_page.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/pages/home_page.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/pages/settings_page.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/pages/stats_page.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_controller.freezed.dart';
part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationController extends StateNotifier<BottomNavigationState> {
  BottomNavigationController() : super(BottomNavigationState.initial());

  Widget? _getPage(int index, BuildContext context) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const CalendarPage();
      case 2:
        // showModalBottomSheet(
        //   context: context,
        //   constraints: BoxConstraints(minHeight: SizeUtil.sh(0.7)),
        //   backgroundColor: Theme.of(context).colorScheme.secondary,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.vertical(
        //       top: Radius.circular(SizeUtil.r(26)),
        //     ),
        //   ),
        //   builder: (context) {
        //     return SingleChildScrollView(
        //       padding: SizeUtil.pFromLTRB(18, 14, 18, 18),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.stretch,
        //         children: [
        //           Center(
        //             child: Container(
        //               height: SizeUtil.h(4),
        //               width: SizeUtil.sw(0.15),
        //               decoration: BoxDecoration(
        //                 color: Colors.black26,
        //                 borderRadius: SizeUtil.borderRadius(20),
        //               ),
        //             ),
        //           ),
        //           SizeUtil.vS(20),
        //           Text(
        //             'Add a new todo',
        //             style: TextStyle(
        //               fontSize: SizeUtil.fontSize(24),
        //               fontWeight: FontWeight.bold,
        //             ),
        //           ),
        //           SizeUtil.vS(10),
        //           AppTextField(hint: 'Title'),
        //           SizeUtil.vS(10),
        //           TextField(
        //             maxLines: 3,
        //             decoration: InputDecoration(
        //               hintText: 'Description',
        //             ),
        //           ),
        //           SizeUtil.vS(20),
        //           AppButton(onPressed: () {}, title: 'Add'),
        //         ],
        //       ),
        //     );
        //   },
        // );
        return state.page;
      case 3:
        return const StatsPage();
      case 4:
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
    state = state.copyWith(
      page: _getPage(e.index, e.context),
      currentIndex: e.index,
    );
  }
}
