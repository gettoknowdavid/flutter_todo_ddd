import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/errors/todo_failure.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/i_todo_facade.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/dtos/todo_dto.dart';

class TodoFacade implements ITodoFacade {
  @override
  Future<Either<TodoFailure, Unit>> create(Todo todo) async {
    final todoDto = TodoDto.fromDomain(todo);

    try {
      await todosRef.doc(todoDto.uid).set(todoDto);

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TodoFailure.insufficientPermissions());
      } else {
        return left(const TodoFailure.serverError());
      }
    }
  }

  @override
  Future<Either<TodoFailure, Unit>> delete(Todo todo) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<TodoFailure, Unit>> edit(Todo todo) {
    // TODO: implement edit
    throw UnimplementedError();
  }

  @override
  Future<Either<TodoFailure, Unit>> update(Todo todo) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<TodoFailure, List<Todo>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  @override
  Stream<Either<TodoFailure, List<Todo>>> watchUncompleted() {
    // TODO: implement watchUncompleted
    throw UnimplementedError();
  }
}
