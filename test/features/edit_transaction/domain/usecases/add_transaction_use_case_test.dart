import 'package:expense_tracker/features/edit_transaction/domain/usecases/add_transaction_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transaction_repository/transaction_repository.dart';

class MockTransactionRepository extends Mock implements TransactionRepository {}

class MockTransaction extends Mock implements Transaction {}

void main() {
  late AddTransactionUseCase sut;
  late TransactionRepository _repository;

  setUp(() {
    registerFallbackValue(Transaction.empty());

    _repository = MockTransactionRepository();
    when(() => _repository.addNewTransaction(any(that: isA<Transaction>())))
        .thenAnswer((_) async {});

    sut = AddTransactionUseCase(_repository);
  });

  test(
    'forward call to repository',
    () {
      final _mockTransaction = Transaction.empty();
      sut(_mockTransaction);
      verify(() => _repository.addNewTransaction(_mockTransaction)).called(1);
    },
  );
}
