import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart';
import 'package:expense_tracker/features/category/data/repositories/local_category_repository.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCategoriesDao extends Mock implements CategoriesDao {}

class FakeCategoriesCompanion extends Fake implements CategoriesCompanion {}

void main() {
  late LocalCategoryRepository categoryRepository;
  late CategoriesDao dao;

  const categoryEntity = CategoryEntity(
    name: 'mock category',
    icon: Icons.abc,
    color: Colors.black,
    categoryType: CategoryType.income,
  );

  final isUnit = isA<Right<Exception, Unit>>();
  final isException = isA<Left<Exception, Unit>>();

  setUpAll(() {
    registerFallbackValue(FakeCategoriesCompanion());
  });

  setUp(() {
    dao = MockCategoriesDao();
    when(
      () => dao.addNewCategory(any(that: isA<CategoriesCompanion>())),
    ).thenAnswer((_) async {});

    categoryRepository = LocalCategoryRepository(dao);
  });
  group('add new category', () {
    test('calls dao.addNewCategory', () async {
      await categoryRepository.addNewCategory(categoryEntity);
      verify(
        () {
          return dao.addNewCategory(
            CategoriesCompanion(
              name: Value(categoryEntity.name),
              color: Value(categoryEntity.color.value),
              icon: Value(categoryEntity.icon),
            ),
          );
        },
      ).called(1);
    });
    test('return right<unit> when successfully', () async {
      final result = await categoryRepository.addNewCategory(categoryEntity);
      expect(result, isUnit);
    });
    test('return left<exception> when successfully', () async {
      when(
        () => dao.addNewCategory(any(that: isA<CategoriesCompanion>())),
      ).thenThrow(AlreadyContainsThisCategoryFailure());

      final result = await categoryRepository.addNewCategory(categoryEntity);

      expect(result, isException);
    });
  });

  group('get all categories', () {
    test('return current category list [empty]', () async {
      when(dao.getAllCategories).thenAnswer((_) async => []);
      final result = await categoryRepository.getAllCategories();
      expect(result.length, 0);
    });
    test('return current category entity list [have value]', () async {
      final category = Category(
        name: 'mock category',
        color: Colors.amber.value,
        icon: Icons.abc,
        type: CategoryType.income,
      );
      when(dao.getAllCategories).thenAnswer((_) async {
        return [category];
      });
      final result = await categoryRepository.getAllCategories();

      expect(result.length, 1);
    });
  });
  group('watch all categories', () {
    test('return current category list [empty]', () async {
      final categories = [
        Category(
          name: 'mock category',
          color: Colors.amber.value,
          icon: Icons.abc,
          type: CategoryType.income,
        )
      ];
      when(dao.watchAllCategories).thenAnswer(
        (_) => Stream.fromIterable([categories]),
      );

      final result = categoryRepository.watchAllCategories();

      expect(result, isA<Stream<List<CategoryEntity>>>());
      expect(
        result,
        emits([
          CategoryEntity(
            name: categories.first.name,
            icon: categories.first.icon,
            color: Color(categories.first.color),
          categoryType: CategoryType.income,
          )
        ]),
      );
    });
  });
}
