import 'package:bloc/bloc.dart';
import 'package:expense_tracker/domain/auth/i_auth_facade.dart';
import 'package:expense_tracker/domain/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const _Initial()) {
    on<AuthCheckRequested>((event, emit) {
      final userOption = _authFacade.getSignInUser();
      emit(userOption.fold(
        () => const AuthState.unauthenticated(),
        (u) => AuthState.authenticated(u),
      ));
    });
    on<SignedOut>((event, emit) async {
      await _authFacade.signOut();
      emit(const AuthState.unauthenticated());
    });
  }
}
