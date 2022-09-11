part of 'category_form_controller.dart';

@freezed
class CategoryFormEvent with _$CategoryFormEvent {
  const factory CategoryFormEvent.initialized(Option<Category> initialOption) =
      _Initialized;
  const factory CategoryFormEvent.titleChanged(String title) = _TitleChanged;
  const factory CategoryFormEvent.colorChanged(Color color) = _ColorChanged;
  const factory CategoryFormEvent.categoryAddPressed() = _CategoryAddPressed;
}
