import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/errors/todo_failure.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/i_todo_facade.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/dtos/todo_dto.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/todo_mapper.dart';
import 'package:rxdart/rxdart.dart';

class TodoFacade implements ITodoFacade {
  final TodoMapper _mapper;

  TodoFacade(this._mapper);

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
  Future<Either<TodoFailure, Unit>> delete(Todo todo) async {
    final todoDto = TodoDto.fromDomain(todo);

    try {
      await todosRef.doc(todoDto.uid).delete();

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
  Future<Either<TodoFailure, Unit>> edit(Todo todo) async {
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
  Stream<Either<TodoFailure, List<Todo?>>> watchAll() async* {
    yield* todosRef
        .orderByCreatedAt(descending: true)
        .snapshots()
        .map((snapshot) => right<TodoFailure, List<Todo?>>(
            snapshot.docs.map((doc) => _mapper.toDomain(doc.data)).toList()))
        .onErrorReturnWith((e, stackTrace) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const TodoFailure.insufficientPermissions());
      } else {
        return left(const TodoFailure.serverError());
      }
    });
  }

  @override
  Stream<Either<TodoFailure, List<Todo?>>> watchUncompleted() async* {
    yield* todosRef
        .orderByCreatedAt(descending: true)
        .orderByIsDone(startAt: false)
        .snapshots()
        .map((snapshot) => right<TodoFailure, List<Todo?>>(
            snapshot.docs.map((doc) => _mapper.toDomain(doc.data)).toList()))
        .onErrorReturnWith((e, stackTrace) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const TodoFailure.insufficientPermissions());
      } else {
        return left(const TodoFailure.serverError());
      }
    });
  }
}
