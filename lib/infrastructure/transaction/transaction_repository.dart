import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:expense_tracker/domain/transaction/i_transaction_repository.dart';
import 'package:expense_tracker/domain/transaction/models/wallet.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart' as t;
import 'package:expense_tracker/domain/transaction/transaction_failure.dart';
import 'package:expense_tracker/infrastructure/transaction/transaction_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:expense_tracker/infrastructure/core/firestore_helper.dart';

import 'models/wallet_dto.dart';

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
  Future<Either<TransactionFailure, Unit>> create(t.Transaction t) async {
    try {
      final userDoc = _firestore.userDocument();
      TransactionDTO dto = TransactionDTO.fromDomain(t);

      WalletDTO currentWallet = WalletDTO.fromDomain(t.wallet);
      final afterWallet = currentWallet.copyWith(
        amount: dto.amount * dto.type + currentWallet.amount,
      );
      print(dto.type);
      print(currentWallet.amount);
      print(afterWallet.amount);
      await userDoc.transactionCollection.doc(dto.id).set(dto.toJson());
      await userDoc.walletCollection
          .doc(afterWallet.id.trim())
          .update(afterWallet.toJson());
      // TODO: Finish off those works: this one, the chart, and the profile page
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

  @override
  Stream<List<Wallet>> getAllWallets() {
    final userDoc = _firestore.userDocument();
    return userDoc.walletCollection.orderBy('name').snapshots().map((snap) {
      return snap.docs
          .map((doc) => WalletDTO.fromJson(doc.data()).toDomain())
          .toList();
    });
    // TODO: Error handling
  }
}
