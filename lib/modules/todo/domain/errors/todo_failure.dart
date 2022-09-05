import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_failure.freezed.dart';

@freezed
class TodoFailure with _$TodoFailure {
  const factory TodoFailure.serverError() = _TodoServerError;
}
