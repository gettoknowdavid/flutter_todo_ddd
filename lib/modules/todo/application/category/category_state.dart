part of 'category_controller.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required Category category,
    required bool showErrors,
    required bool loading,
    required Option<Either<CategoryFailure, Unit>> option,
  }) = _CategoryState;

  factory CategoryState.initial() => CategoryState(
        category: Category.empty(),
        showErrors: false,
        loading: false,
        option: none(),
      );
}
