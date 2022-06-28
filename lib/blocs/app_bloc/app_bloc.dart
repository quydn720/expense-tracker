import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

const firstTimeKey = 'first_time_app_started';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required AuthenticationRepository authenticationRepository,
    required SharedPreferences sharedPreferences,
  }) : super(const FirstTimeOpened()) {
    late final StreamSubscription<User> _userSubscription;

    _userSubscription = authenticationRepository.user.listen(
      (event) => add(AppUserChanged(event)),
    );

    void _onUserChanged(AppUserChanged event, Emitter<AppState> emit) {
      emit(
        event.user.isNotEmpty
            ? AppState.authenticated(user: event.user)
            : const AppState.unauthenticated(),
      );
    }

    void _onLogoutRequested(AppLogOutRequested event, Emitter<AppState> emit) {
      unawaited(authenticationRepository.logOut());
    }

    Future<void> _onAppStarted(AppStarted event, Emitter<AppState> emit) async {
      final used = sharedPreferences.getString(firstTimeKey);
      if (used == null) {
        await sharedPreferences.setString(firstTimeKey, 'YES');
        emit(const AppState.firstTimeOpened());
      } else {
        final state = authenticationRepository.currentUser.isNotEmpty
            ? AppState.authenticated(user: authenticationRepository.currentUser)
            : const AppState.unauthenticated();
        emit(state);
      }
    }

    void _onUserChangeAvatar(UserChangeAvatar event, Emitter<AppState> emit) {
      authenticationRepository.changeAvatar(event.avt);
      emit(AppState.authenticated(user: authenticationRepository.currentUser));
    }

    on<AppUserChanged>(_onUserChanged);
    on<AppLogOutRequested>(_onLogoutRequested);
    on<AppStarted>(_onAppStarted);
    on<UserChangeAvatar>(_onUserChangeAvatar);

    @override
    // ignore: unused_element
    Future<void> close() {
      _userSubscription.cancel();
      return super.close();
    }
  }
}
