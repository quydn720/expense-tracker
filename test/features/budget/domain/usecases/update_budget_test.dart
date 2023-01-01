import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';
import 'package:expense_tracker/features/budget/domain/usecases/update_budget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockIBudgetRepository extends Mock implements IBudgetRepository {}

class MockBudget extends Mock implements Budget {}

void main() {
  late UpdateBudget updateBudget;
  late IBudgetRepository _repository;

  setUp(() {
    registerFallbackValue(MockBudget());

    _repository = MockIBudgetRepository();
    when(() => _repository.updateBudget(budgetId: any(), budget: any()))
        .thenAnswer((_) async {
      return right(unit);
    });
    updateBudget = UpdateBudget(_repository);
  });

  test('update budget success', () async {
    final mockBudget = MockBudget();

    final result = await updateBudget('mockId', mockBudget);
    expect(result, isA<Right<Exception, Unit>>());
  });
  test('update budget failed', () async {
    when(() => _repository.updateBudget(budgetId: any(), budget: any()))
        .thenThrow(Exception());
    final mockBudget = MockBudget();

    final result = await updateBudget('mockId', mockBudget);
    expect(result, isA<Left<Exception, Unit>>());
  });
}
