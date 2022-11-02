import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required this.authenticationRepository,
    @Named('isOnboardingCompleted') this.showOnboarding = true,
  }) : super(
          showOnboarding ? const FirstTimeOpenApp() : const Unauthenticated(),
        ) {
    on<LogoutRequested>(_onLogOutRequested);
    on<OnUserChanged>(_onUserChanged);
    on<OnEmailVerified>(_onEmailVerified);

    _authStateSubcription = authenticationRepository.user.listen(
      (user) => add(AppEvent.onUserChanged(user)),
    );
  }

  Future<void> _onEmailVerified(
    OnEmailVerified event,
    Emitter<AppState> emit,
  ) async {
    _emitStateByUserVerifiedStatus(event.user, emit);
  }

  Future<void> _onLogOutRequested(event, emit) async {
    await authenticationRepository.logOut();
  }

  Future<void> _onUserChanged(
    OnUserChanged event,
    Emitter<AppState> emit,
  ) async {
    final user = event.user;
    if (user.isNotEmpty) {
      _emitStateByUserVerifiedStatus(user, emit);
    } else {
      emit(const Unauthenticated());
    }
  }

  void _emitStateByUserVerifiedStatus(
    User user,
    Emitter<AppState> emit,
  ) {
    if (user.verified) {
      emit(const Authenticated());
    } else {
      emit(WaitForEmailVerification(user));
    }
  }

  final IAuthenticationRepository authenticationRepository;
  final bool showOnboarding;
  late final StreamSubscription<User> _authStateSubcription;

  @override
  Future<void> close() {
    _authStateSubcription.cancel();
    return super.close();
  }
}
