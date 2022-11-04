import 'package:authentication_repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginWithGoogleUseCase {
  LoginWithGoogleUseCase({
    required IAuthenticationRepository auth,
  }) : _auth = auth;

  final IAuthenticationRepository _auth;
  Future<Either<LoginWithGoogleFailure, Unit>> call() async {
    try {
      await _auth.logInWithGoogle();
      return right(unit);
    } on LoginWithGoogleFailure catch (e) {
      return left(e);
    }
  }
}
