part of 'category_controller.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.getAll() = _GetAll;
  const factory CategoryEvent.getUncompletedStarted() =
      _GetUncompletedStarted;
  const factory CategoryEvent.categoriesReceived(
          Either<CategoryFailure, List<Category>> failureOrNotes) =
      _CategoriesReceived;
}
