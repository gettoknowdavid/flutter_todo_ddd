import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/errors/todo_failure.dart';

abstract class ITodoFacade {
  Future<Either<TodoFailure, Unit>> create(Todo todo);
  Future<Either<TodoFailure, Unit>> delete(Todo todo);
  Future<Either<TodoFailure, Unit>> edit(Todo todo);
  Stream<Either<TodoFailure, List<Todo?>>> watchAll();
  Stream<Either<TodoFailure, List<Todo?>>> watchUpcoming();
  Stream<Either<TodoFailure, List<Todo?>>> watchToday();
  Stream<Either<TodoFailure, List<Todo?>>> watchDone();
  Stream<Either<TodoFailure, List<Todo?>>> watchUncompleted();
  Stream<Either<TodoFailure, List<Todo?>>> search(String title);
}
