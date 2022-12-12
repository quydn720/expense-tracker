import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

part 'categories_dao.g.dart';

@DriftAccessor(tables: [Categories])
@injectable
class CategoriesDao extends DatabaseAccessor<MyDatabase>
    with _$CategoriesDaoMixin {
  CategoriesDao(super.db);

  Future<void> addNewCategory(CategoriesCompanion category) async {
    final c = await (select(categories)
          ..where((c) => c.name.equals(category.name.value)))
        .getSingleOrNull();

    if (c == null) {
      await into(categories).insert(category);
    } else {
      throw AlreadyContainsThisCategoryFailure();
    }
  }

  Future<Category> getCategoryById(String name) =>
      (select(categories)..where((c) => c.name.equals(name))).getSingle();
  Future<List<Category>> getAllCategories() => select(categories).get();
  Stream<List<Category>> watchAllCategories() => select(categories).watch();
}

class AlreadyContainsThisCategoryFailure implements Exception {}
