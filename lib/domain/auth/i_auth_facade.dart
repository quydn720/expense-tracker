import 'package:dartz/dartz.dart';
import 'package:expense_tracker/domain/auth/user.dart';

import 'auth_failure.dart';
import 'email_address.dart';
import 'password.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required String displayName,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Option<User> getSignInUser();
  Future<void> signOut();
}
