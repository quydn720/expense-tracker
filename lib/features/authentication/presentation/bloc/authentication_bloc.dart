import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
    this._repository,
    this._loginWithEmailAndPwUseCase,
  ) : super(const AuthenticationState()) {
    on<_AuthenticationEventLogin>((event, emit) async {
      emit(const AuthenticationState.loading());
      final response = await _loginWithEmailAndPwUseCase(
        email: event.email,
        password: event.password,
      );

      response.map((r) => null);
    });
    on<_AuthenticationEventLogout>((event, emit) {});
  }

  final LoginWithEmailAndPwUseCase _loginWithEmailAndPwUseCase;
  final IAuthenticationRepository _repository;
}
