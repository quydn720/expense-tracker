import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/data/models/category_model.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';
import 'package:injectable/injectable.dart';

part 'categories_dao.g.dart';

@DriftAccessor(tables: [Categories, Transactions])
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

  Future<int> deleteCategory(String categoryName) async {
    final category = await getCategoryById(categoryName);
    final type = category.type == CategoryType.expense
        ? const Value('Others')
        : const Value('Other');

    return transaction(() async {
      final updateQuery = (update(transactions)
        ..where(
          (trans) {
            return trans.categoryName.equals(categoryName);
          },
        ));

      // Update all transaction with category to Others
      await updateQuery.write(TransactionsCompanion(categoryName: type));

      return (delete(categories)..where((c) => c.name.equals(categoryName)))
          .go();
    });
  }
}

class AlreadyContainsThisCategoryFailure implements Exception {}
