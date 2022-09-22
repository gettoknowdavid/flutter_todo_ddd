import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_dto.g.dart';

@Collection<TodoDto>('todos')
final todosRef = TodoDtoCollectionReference();

@JsonSerializable(explicitToJson: true, createFieldMap: true)
class TodoDto extends Equatable {
  final String uid;
  final String title;
  final bool isDone;
  final String? description;
  final DateTime? time;
  final DateTime? createdAt;

  const TodoDto({
    required this.uid,
    required this.title,
    this.isDone = false,
    this.description,
    this.time,
    this.createdAt,
  });

  factory TodoDto.fromDomain(Todo todo) {
    return TodoDto(
      uid: todo.uid.getOrCrash()!,
      title: todo.title.getOrCrash()!,
      isDone: todo.isDone,
      description: todo.description?.getOrCrash(),
      time: todo.time,
      createdAt: todo.createdAt,
    );
  }

  factory TodoDto.fromJson(Map<String, Object?> json) =>
      _$TodoDtoFromJson(json);

  @override
  List<Object?> get props => [uid, title, isDone, description, time, createdAt];

  Map<String, Object?> toJson() => _$TodoDtoToJson(this);
}
