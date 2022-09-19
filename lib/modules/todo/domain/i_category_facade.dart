import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/errors/category_failure.dart';

abstract class ICategoryFacade {
  Future<Either<CategoryFailure, Unit>> create(Category category);
  Future<Either<CategoryFailure, Unit>> delete(Category category);
  Future<Either<CategoryFailure, Unit>> edit(Category category);
  Stream<Either<CategoryFailure, List<Category?>>> watchAll();
  Stream<Either<CategoryFailure, List<Category?>>> getAll();
}
