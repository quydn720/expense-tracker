import 'package:authentication_repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class ForgotPasswordUseCase {
  ForgotPasswordUseCase({
    required IAuthenticationRepository auth,
  }) : _auth = auth;

  final IAuthenticationRepository _auth;

  Future<Either<ForgotPasswordFailure, Unit>> call(String email) async {
    try {
      await _auth.forgotPassword(email);

      return right(unit);
    } on ForgotPasswordFailure catch (e) {
      return left(e);
    } catch (_) {
      return left(const ForgotPasswordFailure());
    }
  }
}
