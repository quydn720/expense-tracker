import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart';
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
          ),
        ),
        throwsException,
      );
    });
  });

  // test('stream emits a new user when the name updates', () async {
  //   final id = await dao.createUser('first name');

  //   final expectation = expectLater(
  //     database.watchUserWithId(id).map((user) => user.name),
  //     emitsInOrder(['first name', 'changed name']),
  //   );

  //   await database.updateName(id, 'changed name');
  //   await expectation;
  // });
}
