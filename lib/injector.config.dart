// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import 'app/misc/wallet_bloc.dart' as _i11;
import 'app/transaction/transaction_actor_bloc.dart' as _i7;
import 'app/transaction/transaction_form/transaction_form_bloc.dart' as _i9;
import 'app/transaction/transaction_watcher_bloc.dart' as _i10;
import 'domain/transaction/i_transaction_repository.dart' as _i8;
import 'infrastructure/core/firebase_injectable_module.dart' as _i12;
import 'injector.dart' as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  await gh.factoryAsync<_i6.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true);
  gh.factory<_i7.TransactionActorBloc>(
      () => _i7.TransactionActorBloc(get<_i8.ITransactionRepository>()));
  gh.factory<_i9.TransactionFormBloc>(
      () => _i9.TransactionFormBloc(get<_i8.ITransactionRepository>()));
  gh.factory<_i10.TransactionWatcherBloc>(
      () => _i10.TransactionWatcherBloc(get<_i8.ITransactionRepository>()));
  gh.factory<_i11.WalletBloc>(
      () => _i11.WalletBloc(get<_i8.ITransactionRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i12.FirebaseInjectableModule {}

class _$SharedPreferencesModule extends _i13.SharedPreferencesModule {}
