import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/errors/category_failure.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/i_category_facade.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/category_mapper.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/dtos/category_dto.dart';
import 'package:rxdart/rxdart.dart';

class CategoryFacade implements ICategoryFacade {
  final CategoryMapper _mapper;

  CategoryFacade(this._mapper);

  @override
  Future<Either<CategoryFailure, Unit>> create(Category category) async {
    final categoryDto = CategoryDto.fromDomain(category);

    try {
      await categoriesRef.doc(categoryDto.uid).set(categoryDto);

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const CategoryFailure.insufficientPermissions());
      } else {
        return left(const CategoryFailure.serverError());
      }
    }
  }

  @override
  Future<Either<CategoryFailure, Unit>> delete(Category category) async {
    final categoryDto = CategoryDto.fromDomain(category);

    try {
      await categoriesRef.doc(categoryDto.uid).delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const CategoryFailure.insufficientPermissions());
      } else {
        return left(const CategoryFailure.serverError());
      }
    }
  }

  @override
  Future<Either<CategoryFailure, Unit>> edit(Category category) async {
    final categoryDto = CategoryDto.fromDomain(category);

    try {
      await categoriesRef.doc(categoryDto.uid).set(categoryDto);

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const CategoryFailure.insufficientPermissions());
      } else {
        return left(const CategoryFailure.serverError());
      }
    }
  }

  @override
  Stream<Either<CategoryFailure, List<Category?>>> watchAll() async* {
    yield* categoriesRef
        .orderByTitle()
        .snapshots()
        .map((snapshot) => right<CategoryFailure, List<Category?>>(
            snapshot.docs.map((doc) => _mapper.toDomain(doc.data)).toList()))
        .onErrorReturnWith((e, stackTrace) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const CategoryFailure.insufficientPermissions());
      } else {
        return left(const CategoryFailure.serverError());
      }
    });
  }
}
