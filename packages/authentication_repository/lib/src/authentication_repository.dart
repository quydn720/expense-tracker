import 'dart:async';

import 'models/models.dart';

abstract class IAuthenticationRepository {
  bool get isWeb;
  Future<void> changeAvatar(String avtUrl);
  User get currentUser;
  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> logInWithGoogle();
  Future<void> logOut();
  Future<void> sendVerificationEmail();
  Future<void> signUp({required String email, required String password});
  Stream<User> get user;
}
