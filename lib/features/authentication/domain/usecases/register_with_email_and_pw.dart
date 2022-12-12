import 'package:authentication_repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterWithEmailAndPwUseCase {
  RegisterWithEmailAndPwUseCase({
    required IAuthenticationRepository auth,
  }) : _auth = auth;

  // final VerificationService _verificationService;
  final IAuthenticationRepository _auth;

  Future<Either<SignUpWithEmailAndPasswordFailure, Unit>> call({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signUp(email: email, password: password);
      return right(unit);
    } on SignUpWithEmailAndPasswordFailure catch (e) {
      return left(e);
    }

    // 3. Wait for the verification code
    // _verificationService.verify('code');
    // await _auth.sendVerificationEmail();
  }
}

// @injectable
// class VerificationService {
//   void verify(String s) {}
// }
