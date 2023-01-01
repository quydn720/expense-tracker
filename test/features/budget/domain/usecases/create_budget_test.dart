import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';
import 'package:expense_tracker/features/budget/domain/usecases/create_budget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockIBudgetRepository extends Mock implements IBudgetRepository {}

class MockBudget extends Mock implements Budget {}

void main() {
  late CreateBudget createBudget;
  late IBudgetRepository _repository;

  setUp(() {
    registerFallbackValue(MockBudget());

    _repository = MockIBudgetRepository();
    when(() => _repository.addNewBudget(any())).thenAnswer((_) async {
      return right(unit);
    });
    createBudget = CreateBudget(_repository);
  });

  test('create budget success', () async {
    final mockBudget = MockBudget();

    final result = await createBudget(mockBudget);
    expect(result, isA<Right<Exception, Unit>>());
  });
  test('create budget failed', () async {
    when(() => _repository.addNewBudget(any())).thenThrow(Exception());
    final mockBudget = MockBudget();

    final result = await createBudget(mockBudget);
    expect(result, isA<Left<Exception, Unit>>());
  });
}
