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
  AppBloc(this.authenticationRepository) : super(const _Initial()) {
    on<LogoutRequested>((event, emit) {
      emit(const Unauthenticated());
    });
    on<OnUserChanged>((event, emit) {
      emit(const Authenticated());
    });
    authStateSubcription = authenticationRepository.user.listen(
      (event) {
        add(const AppEvent.onUserChanged());
      },
    );
  }

  final IAuthenticationRepository authenticationRepository;
  late final StreamSubscription<User> authStateSubcription;

  @override
  Future<void> close() {
    authStateSubcription.cancel();
    return super.close();
  }
}
