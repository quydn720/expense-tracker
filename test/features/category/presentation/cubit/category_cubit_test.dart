import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart';
import 'package:expense_tracker/features/category/presentation/cubit/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockICategoryRepository extends Mock implements ICategoryRepository {}

void main() {
  late ICategoryRepository repo;
  final exception = Exception('mock message');

  setUp(() {
    repo = MockICategoryRepository();
    when(repo.watchAllCategories).thenAnswer((_) => const Stream.empty());
  });

  blocTest<CategoryCubit, CategoryState>(
    'add new cateogry',
    setUp: () {
      when(
        () => repo.addNewCategory(
          const CategoryEntity(
            name: 'name',
            color: Colors.transparent,
            icon: Icons.abc,
          ),
        ),
      ).thenAnswer(
        (_) async {
          return Left<Exception, Unit>(exception);
        },
      );
    },
    build: () => CategoryCubit(repo),
    act: (bloc) => bloc.addNewCategory(),
    expect: () => [
      CategoryState(addCategoryErrorMessage: exception.toString()),
    ],
  );
}
