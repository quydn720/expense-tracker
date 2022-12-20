import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/forgot_password_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_cubit.freezed.dart';
part 'forgot_password_state.dart';

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
