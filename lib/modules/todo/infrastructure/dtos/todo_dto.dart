import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_dto.freezed.dart';
part 'todo_dto.g.dart';

const firestoreSerializable = JsonSerializable(
  explicitToJson: true,
  createFactory: false,
);

@Collection<TodoDto>('todos')
final todosRef = TodoDtoCollectionReference();

@freezed
@firestoreSerializable
class TodoDto with _$TodoDto {
  factory TodoDto({
    required String uid,
    required String title,
    required bool isDone,
    String? description,
    DateTime? time,
    DateTime? createdAt,
  }) = _TodoDto;

  factory TodoDto.fromDomain(Todo todo) {
    return TodoDto(
      uid: todo.uid.getOrCrash()!,
      title: todo.title.getOrCrash()!,
      isDone: todo.isDone,
      description: todo.description,
      time: todo.time,
      createdAt: todo.createdAt,
    );
  }

  factory TodoDto.fromJson(Map<String, dynamic> json) =>
      _$TodoDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TodoDtoToJson(this);
}
