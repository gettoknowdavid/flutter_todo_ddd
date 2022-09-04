import 'package:flutter_todo_ddd/modules/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required User? user,
    required bool loading,
  }) = _AppState;

  factory AppState.initial() => const AppState(user: null, loading: false);
}
