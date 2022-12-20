import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';
import 'package:expense_tracker/features/budget/domain/usecases/get_all_budget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockIBudgetRepository extends Mock implements IBudgetRepository {}

class MockBudget extends Mock implements Budget {}

void main() {
  late WatchAllBudget getAllBudgets;
  late IBudgetRepository _repository;

  setUp(() {
    registerFallbackValue(MockBudget());

    _repository = MockIBudgetRepository();
    when(() => _repository.watchAllBudget()).thenAnswer(
      (_) => const Stream.empty(),
    );
    getAllBudgets = WatchAllBudget(_repository);
  });

  test('watch budget success', () async {
    final mockBudget = MockBudget();

    final result = await getAllBudgets(mockBudget);
    expect(result, isA<Right<Exception, Stream<List<Budget>>>>());
  });
  test('watch budget failed', () async {
    when(() => _repository.watchAllBudget()).thenThrow(Exception());
    final mockBudget = MockBudget();

    final result = await getAllBudgets(mockBudget);
    expect(result, isA<Left<Exception, Stream<List<Budget>>>>());
  });
}
