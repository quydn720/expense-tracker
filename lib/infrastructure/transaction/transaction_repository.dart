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
        // sorting by date - timestamp
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
  Future<Either<TransactionFailure, Unit>> create(t.Transaction t) async {
    try {
      final userDoc = _firestore.userDocument();
      TransactionDTO dto = TransactionDTO.fromDomain(t);
      await userDoc.transactionCollection.doc(dto.id).set(dto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TransactionFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const TransactionFailure.unableToUpdate());
      } else {
        return left(const TransactionFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> update(t.Transaction t) async {
    try {
      final userDoc = _firestore.userDocument();
      final transactionId = t.id.getOrCrash();
      await userDoc.transactionCollection.doc(transactionId).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TransactionFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const TransactionFailure.unableToUpdate());
      } else {
        return left(const TransactionFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> delete(t.Transaction t) async {
    try {
      final userDoc = _firestore.userDocument();
      TransactionDTO dto = TransactionDTO.fromDomain(t);
      userDoc.transactionCollection.doc(dto.id).update(dto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TransactionFailure.insufficientPermission());
      } else {
        return left(const TransactionFailure.unexpected());
      }
    }
  }
}
