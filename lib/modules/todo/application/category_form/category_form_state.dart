part of 'category_form_controller.dart';

@freezed
class CategoryFormState with _$CategoryFormState {
  const factory CategoryFormState({
    required Category category,
    required bool showErrors,
    required bool loading,
    required Option<Either<CategoryFailure, Unit>> option,
  }) = _CategoryFormState;

  factory CategoryFormState.initial() => CategoryFormState(
        category: Category.empty(),
        showErrors: false,
        loading: false,
        option: none(),
      );
}
