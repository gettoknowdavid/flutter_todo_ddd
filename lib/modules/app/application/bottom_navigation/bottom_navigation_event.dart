import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_event.freezed.dart';

@freezed
class BottomNavigationEvent with _$BottomNavigationEvent {
  const factory BottomNavigationEvent.indexSet(int index) = IndexSet;
  const factory BottomNavigationEvent.pageUpdated(int index) = PageUpdated;
}
