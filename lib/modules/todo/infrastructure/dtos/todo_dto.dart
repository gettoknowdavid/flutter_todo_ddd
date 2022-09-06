import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_dto.g.dart';

@JsonSerializable(explicitToJson: true, createFieldMap: true)
class TodoDto {
  TodoDto({
    required this.uid,
    required this.title,
    required this.isDone,
    this.description,
    this.time,
    this.createdAt,
  });

  final String uid;
  final String title;
  final bool isDone;
  final String? description;
  final DateTime? time;
  final DateTime? createdAt;

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

  factory TodoDto.fromJson(Map<String, Object?> json) =>
      _$TodoDtoFromJson(json);

  Map<String, Object?> toJson() => _$TodoDtoToJson(this);
}

@Collection<TodoDto>('todos')
final todosRef = TodoDtoCollectionReference();
