import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/application/category/category_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/category_form/category_form_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/i_category_facade.dart';

final categoryFormProvider = StateNotifierProvider.autoDispose<
    CategoryFormController, CategoryFormState>(
  (ref) => CategoryFormController(Modular.get<ICategoryFacade>()),
);

final categoryProvider =
    StateNotifierProvider<CategoryController, CategoryState>(
  (ref) => CategoryController(Modular.get<ICategoryFacade>()),
);
