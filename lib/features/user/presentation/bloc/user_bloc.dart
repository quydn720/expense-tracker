import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Cubit<UserState> {
  UserBloc(this.repository, this._userService) : super(const UserInitial()) {
    _init();
  }
  final IAuthenticationRepository repository;

  final UserService _userService;

  Future<void> _init() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    emit(UserLoaded(user: repository.currentUser));
  }

  void updateDisplayName(String displayName) {
    _userService.updateDisplayName(displayName);
  }

  void updatePhoto(String photoUrl) {
    _userService.updatePhotoURL(photoUrl);
  }

  void updatePassword(String newPassword) {
    _userService.updatePassword(newPassword);
  }
}

@injectable
class UserService {
  late firebase_auth.FirebaseAuth auth;

  void updateDisplayName(String displayName) {
    auth.currentUser?.updateDisplayName(displayName);
  }

  void updatePhotoURL(String photoUrl) {
    auth.currentUser?.updatePhotoURL(photoUrl);
  }

  void updatePassword(String newPassword) {
    auth.currentUser?.updatePassword(newPassword);
  }
}
