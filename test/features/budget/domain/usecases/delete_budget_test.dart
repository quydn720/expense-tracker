import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';
import 'package:expense_tracker/features/budget/domain/usecases/delete_budget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockIBudgetRepository extends Mock implements IBudgetRepository {}

class MockBudget extends Mock implements Budget {}

void main() {
  late DeleteBudget deleteBudget;
  late IBudgetRepository _repository;

  setUp(() {
    registerFallbackValue(MockBudget());

    _repository = MockIBudgetRepository();
    when(() => _repository.deleteBudget(any())).thenAnswer((_) async {});
    deleteBudget = DeleteBudget(_repository);
  });

  test('create budget success', () async {
    final result = await deleteBudget('mockBudgetId');
    expect(result, isA<Right<Exception, Unit>>());
  });
  test('create budget failed', () async {
    when(() => _repository.deleteBudget(any())).thenThrow(Exception());

    final result = await deleteBudget('mockBudgetId');
    expect(result, isA<Left<Exception, Unit>>());
  });
}
