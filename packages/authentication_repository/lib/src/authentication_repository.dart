import 'dart:async';

import 'package:authentication_repository/src/models/models.dart';

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
  Future<void> verifyEmail(String verificationCode);
  Future<void> signUp({required String email, required String password});
  Future<void> forgotPassword(String email);
  Stream<User> get user;
}
