import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty([T? f]) = Empty<T>;
  const factory ValueFailure.invalidEmail(T f) = InvalidEmail<T>;
  const factory ValueFailure.invalidPassword(T f) = InvalidPassword<T>;
  const factory ValueFailure.titleLengthExceeded(T f) = TitleLengthExceeded<T>;
}
