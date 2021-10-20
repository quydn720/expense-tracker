import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/domain/transaction/i_transaction_repository.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart' as t;
import 'package:expense_tracker/domain/transaction/transaction_failure.dart';
import 'package:expense_tracker/infrastructure/transaction/transaction_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:expense_tracker/infrastructure/core/firestore_helper.dart';

@LazySingleton(as: ITransactionRepository)
class TransactionRepository implements ITransactionRepository {
  final FirebaseFirestore _firestore;

  TransactionRepository(this._firestore);

  @override
  Stream<Either<TransactionFailure, List<t.Transaction>>> watchAll() async* {
    final userDoc = _firestore.userDocument();

    yield* userDoc.transactionCollection
        .orderBy('serverTimestamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<TransactionFailure, List<t.Transaction>>(
            snapshot.docs
                .map((doc) => TransactionDTO.fromJson(doc.data()).toDomain())
                .toList(),
          ),
        )
        .onErrorReturnWith(
      (e, _) {
        if (e is FirebaseException &&
            e.message!.contains('PERMISSION_DENIED')) {
          return left(const TransactionFailure.insufficientPermission());
        } else {
          return left(const TransactionFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<void> createNewTransaction() {
    // TODO: implement createNewTransaction
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTransaction() {
    // TODO: implement deleteTransaction
    throw UnimplementedError();
  }

  @override
  Future<void> updateTransaction() {
    // TODO: implement updateTransaction
    throw UnimplementedError();
  }
}
