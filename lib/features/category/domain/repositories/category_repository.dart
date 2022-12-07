import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';

abstract class ICategoryRepository {
  Future<List<CategoryEntity>> getAllCategories();
  Stream<List<CategoryEntity>> watchAllCategories();
  Future<Either<Exception, Unit>> addNewCategory(CategoryEntity category);
}
