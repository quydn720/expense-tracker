import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';

class Failure implements Exception {}

abstract class ICategoryRepository {
  Future<List<CategoryEntity>> getAllCategories();
  Stream<List<CategoryEntity>> watchAllCategories();
  Future<Either<Exception, Unit>> addNewCategory(CategoryEntity category);

  Future<Either<Failure, CategoryEntity>> getCategoryById({
    required String id,
  });
  Future<int> deleteCategory(CategoryEntity category);
}
