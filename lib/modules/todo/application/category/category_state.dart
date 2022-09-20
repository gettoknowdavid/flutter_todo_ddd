part of 'category_controller.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = CategoryInitial;
  const factory CategoryState.loading() = CategoryLoading;
  const factory CategoryState.loadSuccess(List<Category?> categories) =
      CategorySuccess;
  const factory CategoryState.loadFailure(CategoryFailure failure) =
      CategoryFailed;
}
