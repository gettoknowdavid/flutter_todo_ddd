import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_event.freezed.dart';

@freezed
class BottomNavigationEvent with _$BottomNavigationEvent {
  const factory BottomNavigationEvent.indexSet() = IndexSet;
  const factory BottomNavigationEvent.pageUpdated() = PageUpdated;
}
