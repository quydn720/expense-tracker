import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart' as firestore;
import 'package:rxdart/rxdart.dart';
import 'package:transaction_repository/src/entities/entities.dart';
import 'package:transaction_repository/src/models/transaction.dart';
import 'package:transaction_repository/src/transaction_repository.dart';

const cachedTransactionKey = 'cached_transaction_key';

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
  Future<void> deleteTransaction(Transaction transaction) {
    throw UnimplementedError();
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

class FirebaseTransactionRepository implements TransactionRepository {
  FirebaseTransactionRepository({
    required this.authenticationRepository,
    required this.cachedTransactions,
  }) : userId = authenticationRepository.currentUser.id;
  final userCollection =
      firestore.FirebaseFirestore.instance.collection('users');

  final String userId;

  final IAuthenticationRepository authenticationRepository;

  final Map<String, List<Transaction>> cachedTransactions;

  @override
  Future<void> addNewTransaction(Transaction transaction) async {
    await authenticationRepository.user.first;

    final transactionCollection = firestore.FirebaseFirestore.instance
        .collection('users/$userId/transactions');

    return transactionCollection
        .doc(transaction.id)
        .set(transaction.toEntity().toDocument());
  }

  @override
  Future<void> deleteTransaction(Transaction transaction) async {
    final transactionCollection = firestore.FirebaseFirestore.instance
        .collection('users/$userId/transactions');
    return transactionCollection.doc(transaction.id).delete();
  }

  @override
  Stream<List<Transaction>> transactions() {
    final transactionCollection = firestore.FirebaseFirestore.instance
        .collection('users/$userId/transactions');
    authenticationRepository.user.first;

    return transactionCollection
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
      final transactions = snapshot.docs
          .map(
            (doc) =>
                Transaction.fromEntity(TransactionEntity.fromSnapshot(doc)),
          )
          .toList();
      cachedTransactions[cachedTransactionKey] = transactions;
      return transactions;
    });
  }

  @override
  Future<void> updateTransaction(Transaction transaction) async {
    final transactionCollection = firestore.FirebaseFirestore.instance
        .collection('users/$userId/transactions');

    return transactionCollection
        .doc(transaction.id)
        .update(transaction.toEntity().toDocument());
  }

  @override
  List<Transaction> get currentTransaction {
    final value = cachedTransactions[cachedTransactionKey];
    if (value is List<Transaction>) return value;
    return [];
  }

  @override
  Map<DateTime, List<Transaction>> get mapDateTransaction =>
      currentTransaction.groupBy(
        (trans) => DateTime(
          trans.date.year,
          trans.date.month,
          trans.date.day,
        ),
      );
  @override
  double totalOfCategory(String category) {
    final list = currentTransaction.where((e) => e.category == category);
    final List<double> list2;
    if (list.isNotEmpty) {
      list2 = list.map((e) => e.amount).toList();
    } else {
      list2 = [];
    }
    return list2.isNotEmpty ? list2.reduce((a, b) => a + b) : 0;
  }
}

extension Iterables<E> on Iterable<E> {
  Map<K, List<E>> groupBy<K>(K Function(E) keyFunction) => fold(
        <K, List<E>>{},
        (Map<K, List<E>> map, E element) =>
            map..putIfAbsent(keyFunction(element), () => <E>[]).add(element),
      );
}
