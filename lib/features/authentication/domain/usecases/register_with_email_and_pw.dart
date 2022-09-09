import 'package:authentication_repository/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterWithEmailAndPwUseCase {
  RegisterWithEmailAndPwUseCase({
    required VerificationService verificationService,
    required IAuthenticationRepository auth,
  })  : _verificationService = verificationService,
        _auth = auth;

  final VerificationService _verificationService;
  final IAuthenticationRepository _auth;

  Future<void> call({
    required String email,
    required String password,
  }) async {
    // 2. Register
    await _auth.signUp(email: email, password: password);

    // 3. Wait for the verification code
    _verificationService.verify('code');
  }
}

@injectable
class VerificationService {
  void verify(String s) {}
}
