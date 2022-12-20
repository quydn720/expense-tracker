import 'package:authentication_repository/src/authentication_repository.dart';
import 'package:authentication_repository/src/models/models.dart';
import 'package:cache/cache.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

/// {@template authentication_repository}
/// Repository which manages user authentication.
/// {@endtemplate}
class AuthenticationRepository implements IAuthenticationRepository {
  /// {@macro authentication_repository}
  AuthenticationRepository({
    CacheClient? cache,
    firebase_auth.FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
  })  : _cache = cache ?? CacheClient(),
        _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn.standard();

  // @override
  final CacheClient _cache;
  // @override
  final firebase_auth.FirebaseAuth _firebaseAuth;
  // @override
  final GoogleSignIn _googleSignIn;

  /// Whether or not the current environment is web
  /// Should only be overriden for testing purposes. Otherwise,
  /// defaults to [kIsWeb]
  @override
  @visibleForTesting
  bool isWeb = kIsWeb;

  /// User cache key.
  /// Should only be used for testing purposes.
  @visibleForTesting
  static const userCacheKey = '__user_cache_key__';

  /// Stream of [User] which will emit the current user when
  /// the authentication state changes.
  ///
  /// Emits [User.empty] if the user is not authenticated.
  @override
  Stream<User> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      final user = firebaseUser == null ? User.empty : firebaseUser.toUser;
      _cache.write(key: userCacheKey, value: user);
      return user;
    });
  }

  /// Returns the current cached user.
  /// Defaults to [User.empty] if there is no cached user.
  @override
  User get currentUser {
    // _firebaseAuth.currentUser!.toUser;
    return _cache.read<User>(key: userCacheKey) ?? User.empty;
  }

  /// Creates a new user with the provided [email] and [password].
  ///
  /// Throws a [SignUpWithEmailAndPasswordFailure] if an exception occurs.
  @override
  Future<void> signUp({required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignUpWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const SignUpWithEmailAndPasswordFailure();
    }
  }

  /// Starts the Sign In with Google Flow.
  ///
  /// Throws a [LoginWithGoogleFailure] if an exception occurs.
  @override
  Future<void> logInWithGoogle() async {
    try {
      late final firebase_auth.AuthCredential credential;
      if (isWeb) {
        final googleProvider = firebase_auth.GoogleAuthProvider();
        final userCredential = await _firebaseAuth.signInWithPopup(
          googleProvider,
        );
        credential = userCredential.credential!;
      } else {
        final googleUser = await _googleSignIn.signIn();

        if (googleUser == null) throw UserCancelException();

        final googleAuth = await googleUser.authentication;
        credential = firebase_auth.GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
      }

      await _firebaseAuth.signInWithCredential(credential);
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw LoginWithGoogleFailure(
        code: LoginWithGoogleError.fromCode(e.code),
      );
    } on UserCancelException catch (_) {
      throw const LoginWithGoogleFailure(
        code: LoginWithGoogleError_UserCancelled(),
      );
    } catch (_) {
      throw const LoginWithGoogleFailure();
    }
  }

  /// Signs in with the provided [email] and [password].
  ///
  /// Throws a [LoginWithEmailAndPasswordFailure] if an exception occurs.
  @override
  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw LoginWithEmailAndPasswordFailure(
        code: LoginWithEmailAndPasswordError.fromCode(e.code),
      );
    } catch (_) {
      throw const LoginWithEmailAndPasswordFailure();
    }
  }

  ///
  @override
  Future<void> changeAvatar(String avtUrl) async {
    try {
      await _firebaseAuth.currentUser!.updatePhotoURL(avtUrl);
    } catch (e) {
      throw Exception('Can not change avatar');
    }
  }

  /// Signs out the current user which will emit
  /// [User.empty] from the [user] Stream.
  ///
  /// Throws a [LogOutFailure] if an exception occurs.
  @override
  Future<void> logOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
    } catch (_) {
      throw LogOutFailure();
    }
  }

  @override
  Future<void> sendVerificationEmail() async {
    final user = firebase_auth.FirebaseAuth.instance.currentUser;

    final actionCodeSettings = firebase_auth.ActionCodeSettings(
      url: 'https://expense-tracker-dev-d39f8.firebaseapp.com/',
      iOSBundleId: 'com.quydn720.expenseTracker.dev',
      androidPackageName: 'com.quydn720.expense_tracker.dev',
    );

    try {
      await user?.sendEmailVerification(actionCodeSettings);
    } catch (e) {
      // print(e);
    }
  }

  @override
  Future<void> verifyEmail(String verificationCode) async {
    debugPrint(
      firebase_auth.FirebaseAuth.instance.currentUser?.emailVerified.toString(),
    );
    debugPrint('verify email');
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      final actionCodeSettings = firebase_auth.ActionCodeSettings(
        url: 'https://expense-tracker-dev-d39f8.firebaseapp.com/',
        iOSBundleId: 'com.quydn720.expenseTracker.dev',
        androidPackageName: 'com.quydn720.expense_tracker.dev',
      );

      await _firebaseAuth.sendPasswordResetEmail(
        email: email,
        actionCodeSettings: actionCodeSettings,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw ForgotPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const ForgotPasswordFailure();
    }
  }
}

extension on firebase_auth.User {
  User get toUser {
    return User(
      id: uid,
      email: email,
      name: displayName,
      photo: photoURL,
      verified: emailVerified,
    );
  }
}

/// Throw during sign in Google process was aborted.
class UserCancelException implements Exception {}
