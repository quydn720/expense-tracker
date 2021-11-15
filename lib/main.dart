import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/injector.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_repository/wallet_repository.dart';
import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  Bloc.observer = AppBlocObserver();
  await Firebase.initializeApp();

  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;

  runApp(
    App(
      authenticationRepository: authenticationRepository,
      walletRepository: FirebaseWalletRepository(cachedWallet: {}),
    ),
  );
}
