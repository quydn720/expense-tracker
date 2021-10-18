import 'package:expense_tracker/domain/auth/user.dart';
import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;

extension FirebaseUserDomainX on fb.User {
  User toDomain() {
    return User(
        id: UniqueId.fromUniqueString(uid), name: displayName, email: email);
  }
}
