import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_failure.freezed.dart';

@freezed
class CategoryFailure with _$CategoryFailure {
  const factory CategoryFailure.insufficientPermissions() =
      _CategoryInsufficientPermissions;
  const factory CategoryFailure.serverError() = _CategoryServerError;
}
