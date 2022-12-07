import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/usecases/add_transaction_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockTransactionRepository extends Mock implements ITransactionRepository {
}

class MockTransaction extends Mock implements TransactionEntity {}

void main() {
  late AddTransactionUseCase sut;
  late ITransactionRepository _repository;

  setUp(() {
    registerFallbackValue(MockTransaction());

    _repository = MockTransactionRepository();
    when(
      () => _repository.addNewTransaction(any(that: isA<TransactionEntity>())),
    ).thenAnswer((_) async {});

    sut = AddTransactionUseCase(_repository);
  });

  test(
    'forward call to repository',
    () {
      final _mockTransaction = MockTransaction();
      sut(_mockTransaction);
      verify(() => _repository.addNewTransaction(_mockTransaction)).called(1);
    },
  );
}
