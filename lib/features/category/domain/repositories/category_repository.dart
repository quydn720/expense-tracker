import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart';
import 'package:flutter/material.dart';

import '../../data/datasources/drift_database.dart';
import '../entities/category.dart';

abstract class ICategoryRepository {
  Future<List<Category>> getAllCategories();
  Stream<List<Category>> watchAllCategories();
  Future<Either<Exception, Unit>> addNewCategory(CategoryEntity category);
}

class LocalCategoryRepository implements ICategoryRepository {
  LocalCategoryRepository(this._dao);

  final CategoriesDao _dao;

  @override
  Future<Either<Exception, Unit>> addNewCategory(
    CategoryEntity category,
  ) async {
    final category = CategoriesCompanion(
      name: const Value('Sample'),
      color: Value(Colors.amberAccent.value),
      iconCodePoint: Value(Icons.access_alarm_rounded.codePoint),
    );
    try {
      await _dao.addNewCategory(category);
      return right(unit);
    } on AlreadyContainsThisCategoryFailure catch (e) {
      return left(e);
    }
  }

  @override
  Future<List<Category>> getAllCategories() async {
    return _dao.getAllCategories();
  }

  @override
  Stream<List<Category>> watchAllCategories() {
    return _dao.watchAllCategories();
  }
}
