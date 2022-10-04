import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@singleton
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required this.authenticationRepository,
    @Named('isOnboardingCompleted') this.showOnboarding = true,
  }) : super(
          showOnboarding ? const Initial() : const Unauthenticated(),
        ) {
    on<LogoutRequested>((event, emit) => emit(const Unauthenticated()));
    on<OnUserChanged>(_onUserChanged);
    on<OnEmailVerified>(
      (event, emit) => emit(const WaitForEmailVerification()),
    );
    on<OnboardingCompleted>((event, emit) => emit(const Unauthenticated()));

    authStateSubcription = authenticationRepository.user.listen(
      (user) {
        add(AppEvent.onUserChanged(user));
      },
    );
  }

  Future<void> _onUserChanged(
    OnUserChanged event,
    Emitter<AppState> emit,
  ) async {
    final user = event.user;
    if (user.isNotEmpty) {
      if (user.verified) {
        emit(const Authenticated());
      } else {
        emit(const WaitForEmailVerification());
      }
    } else {
      emit(const Unauthenticated());
    }
  }

  final IAuthenticationRepository authenticationRepository;
  final bool showOnboarding;
  late final StreamSubscription<User> authStateSubcription;

  @override
  Future<void> close() {
    authStateSubcription.cancel();
    return super.close();
  }
}
