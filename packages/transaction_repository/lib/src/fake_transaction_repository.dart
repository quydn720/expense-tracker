import 'package:rxdart/rxdart.dart';

import '../transaction_repository.dart';

class FakeTransactionRepo implements TransactionRepository {
  FakeTransactionRepo(this._cachedTransactions) {
    _init();
  }

  final _streamController = BehaviorSubject<List<Transaction>>.seeded([]);

  final List<Transaction> _cachedTransactions;

  @override
  Future<void> addNewTransaction(Transaction transaction) async {
    final transactions = [..._streamController.value, transaction];
    _cachedTransactions.add(transaction);
    return _streamController.add(transactions);
  }

  @override
  List<Transaction> get currentTransaction => _cachedTransactions;

  @override
  Stream<List<Transaction>> transactions() =>
      _streamController.asBroadcastStream();

  @override
  Future<void> deleteTransaction(Transaction transaction) async {
    _streamController.value.remove(transaction);
    final transactions = [..._streamController.value];

    return _streamController.add(transactions);
  }

  @override
  Map<DateTime, List<Transaction>> get mapDateTransaction =>
      throw UnimplementedError();

  @override
  double totalOfCategory(String category) {
    throw UnimplementedError();
  }

  @override
  Future<void> updateTransaction(Transaction transaction) {
    throw UnimplementedError();
  }

  Future<void> _init() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    if (_cachedTransactions.isNotEmpty) {
      _streamController.add(_cachedTransactions);
    } else {
      _streamController.add([]);
    }
  }
}
