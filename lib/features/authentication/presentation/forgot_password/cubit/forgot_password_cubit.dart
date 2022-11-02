import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_state.dart';
part 'forgot_password_cubit.freezed.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit(this._forgotPasswordUseCase, {this.initialEmail})
      : super(ForgotPasswordState(email: initialEmail ?? ''));

  final String? initialEmail;
  final ForgotPasswordUseCase _forgotPasswordUseCase;

  Future<void> submit() async {
    emit(state.copyWith(status: Status.loading));

    final result = await _forgotPasswordUseCase(state.email);
    result.fold(
      (failure) => emit(
        state.copyWith(status: Status.failure, failure: failure),
      ),
      (_) => emit(state.copyWith(status: Status.success)),
    );
  }

  void onEmailChanged(String email) {
    emit(state.copyWith(email: email));
  }
}

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
    } on FirebaseAuthException catch (e) {
      return left(ForgotPasswordFailure.fromCode(e.code));
    } catch (_) {
      return left(const ForgotPasswordFailure());
    }
  }
}
