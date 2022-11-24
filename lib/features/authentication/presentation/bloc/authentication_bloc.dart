import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(this._authenticationRepository)
      : super(const Unauthenticated()) {
    on<LogoutRequested>(_onLogoutRequested);
    on<UserChanged>(_onUserChanged);

    _authStateSubcription = _authenticationRepository.user.listen(
      (user) => add(AuthenticationEvent.userChanged(user)),
    );
  }

  void _onLogoutRequested(
    LogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) {
    unawaited(_authenticationRepository.logOut());
  }

  Future<void> _onUserChanged(
    UserChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    final user = event.user;
    emit(user.isNotEmpty ? const Authenticated() : const Unauthenticated());
  }

  @override
  Future<void> close() {
    _authStateSubcription.cancel();
    return super.close();
  }

  final IAuthenticationRepository _authenticationRepository;
  late final StreamSubscription<User> _authStateSubcription;
}
