import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart';

class LocalCategoryRepository implements ICategoryRepository {
  LocalCategoryRepository(this._dao);

  final CategoriesDao _dao;

  @override
  Future<Either<Exception, Unit>> addNewCategory(
    CategoryEntity category,
  ) async {
    final categoryCompanion = CategoriesCompanion(
      name: Value(category.name),
      color: Value(category.color.value),
      icon: Value(category.icon),
    );
    try {
      await _dao.addNewCategory(categoryCompanion);
      return right(unit);
    } on AlreadyContainsThisCategoryFailure catch (e) {
      return left(e);
    }
  }

  @override
  Future<List<CategoryEntity>> getAllCategories() async {
    final categories = await _dao.getAllCategories();
    return categories.map((e) {
      return CategoryEntity(icon: e.icon, name: e.name, color: Color(e.color));
    }).toList();
  }

  @override
  Stream<List<CategoryEntity>> watchAllCategories() {
    return _dao.watchAllCategories().map(
      (event) {
        return event.map((e) {
          return CategoryEntity(
            name: e.name,
            icon: e.icon,
            color: Color(e.color),
          );
        }).toList();
      },
    );
  }
}
