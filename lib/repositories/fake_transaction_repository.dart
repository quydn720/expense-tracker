import 'package:expense_tracker/models/transaction.dart';

abstract class TransactionRepository {
  Future<List<Transaction>> fetchTransactions(DateTime date);
}

class FakeTransactionRepository implements TransactionRepository {
  @override
  Future<List<Transaction>> fetchTransactions(DateTime date) {
    return Future.delayed(
      Duration(seconds: 1),
      () {
        return [
          Transaction(
            payeeName: 'payeeName',
            dateCreated: date,
            amount: 3,
            category: 'category',
          ),
        ];
      },
    );
  }
}
