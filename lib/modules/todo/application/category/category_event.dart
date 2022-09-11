part of 'category_controller.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.initialized(Option<Category> initialOption) =
      _Initialized;
  const factory CategoryEvent.titleChanged(String title) = _TitleChanged;
  const factory CategoryEvent.colorChanged(Color color) = _ColorChanged;
  const factory CategoryEvent.categoryAddPressed() = _CategoryAddPressed;
}
