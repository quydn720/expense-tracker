import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expense_tracker/domain/auth/i_auth_facade.dart';
import 'package:expense_tracker/domain/core/errors.dart';
import 'package:expense_tracker/injector.dart';

extension FirestoreX on FirebaseFirestore {
  DocumentReference<Map<String, dynamic>> userDocument() {
    final userOption = getIt<IAuthFacade>().getSignInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference<Map<String, dynamic>> get transactionCollection =>
      collection('transactions');
}
