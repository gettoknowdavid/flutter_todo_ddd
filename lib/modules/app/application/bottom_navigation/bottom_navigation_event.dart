part of 'bottom_navigation_controller.dart';

@freezed
class BottomNavigationEvent with _$BottomNavigationEvent {
  const factory BottomNavigationEvent.indexSet(int index) = IndexSet;
  const factory BottomNavigationEvent.pageUpdated(
      int index, BuildContext context) = PageUpdated;
}
