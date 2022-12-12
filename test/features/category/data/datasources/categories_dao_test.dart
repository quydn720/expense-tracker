import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMyDatabase extends Mock implements MyDatabase {}

class MockDatabaseConnection extends Mock implements DatabaseConnection {}

void main() {
  late CategoriesDao dao;
  late MyDatabase db;

  setUp(() {
    db = MyDatabase(NativeDatabase.memory());
    dao = CategoriesDao(db);
  });
  tearDown(() => db.close());

  group('add new category', () {
    test('category can be created', () async {
      await dao.addNewCategory(
        const CategoriesCompanion(
          name: Value('Mock Category'),
          color: Value(123),
          icon: Value(Icons.abc),
        ),
      );
      final category = await dao.getCategoryById('Mock Category');

      expect(category.name, 'Mock Category');
    });
    test('throw exception if the name already existed', () async {
      expect(
        () => dao.addNewCategory(
          const CategoriesCompanion(
            name: Value('Food'),
            color: Value(123),
            icon: Value(Icons.abc),
          ),
        ),
        throwsException,
      );
    });
  });

  group('get all categories', () {
    test('get current category list', () async {
      final categories = await dao.getAllCategories();
      expect(categories.length, 3);
    });
  });
  group('watch all categories', () {
    test('get current category list stream', () async {
      expect(dao.watchAllCategories(), isA<Stream<List<Category>>>());
    });
  });
}
