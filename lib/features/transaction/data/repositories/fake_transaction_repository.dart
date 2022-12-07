import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:rxdart/rxdart.dart';

class FakeTransactionRepository implements ITransactionRepository {
  FakeTransactionRepository(this._cachedTransactions) {
    _init();
  }

  final _streamController = BehaviorSubject<List<TransactionEntity>>.seeded([]);

  final List<TransactionEntity> _cachedTransactions;

  @override
  Future<void> addNewTransaction(TransactionEntity transaction) async {
    final transactions = [..._streamController.value, transaction];
    _cachedTransactions.add(transaction);
    return _streamController.add(transactions);
  }

  @override
  List<TransactionEntity> getAllTransaction() => _cachedTransactions;

  @override
  Stream<List<TransactionEntity>> watchTransactions() =>
      _streamController.asBroadcastStream();

  @override
  Future<void> deleteTransaction(TransactionEntity transaction) async {
    _streamController.value.remove(transaction);
    final transactions = [..._streamController.value];

    return _streamController.add(transactions);
  }

  @override
  Future<void> updateTransaction(TransactionEntity transaction) {
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
