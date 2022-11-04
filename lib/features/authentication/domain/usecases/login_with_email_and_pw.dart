import 'package:authentication_repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginWithEmailAndPwUseCase {
  LoginWithEmailAndPwUseCase({
    required IAuthenticationRepository auth,
  }) : _auth = auth;

  final IAuthenticationRepository _auth;

  Future<Either<LoginWithEmailAndPasswordFailure, Unit>> call({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.logInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(unit);
    } on LoginWithEmailAndPasswordFailure catch (e) {
      return left(e);
    }
  }
}
