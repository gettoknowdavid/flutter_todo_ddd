part of 'bottom_navigation_controller.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState({
    required int currentIndex,
    required Widget? page,
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
