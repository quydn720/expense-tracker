// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i7;
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i18;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;
import 'package:transaction_repository/transaction_repository.dart' as _i12;

import '../common/cache/local_cache.dart' as _i8;
import '../features/app/bloc/app_bloc.dart' as _i16;
import '../features/authentication/domain/usecases/login_with_email_and_pw.dart'
    as _i9;
import '../features/authentication/domain/usecases/login_with_google_account.dart'
    as _i10;
import '../features/authentication/domain/usecases/register_with_email_and_pw.dart'
    as _i14;
import '../features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart'
    as _i17;
import '../features/transaction_overview/domain/usecases/load_transactions.dart'
    as _i15;
import '../user_preferences.dart' as _i13;
import 'injector.dart' as _i3;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final devAppLocalPackageModule = _$DevAppLocalPackageModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.singleton<_i3.AppConfigurations>(
    _i3.DevAppConfigurations(),
    registerFor: {
      _dev,
      _prod,
    },
  );
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthenticationRepository>(
    () => devAppLocalPackageModule.getDev(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i7.IAuthenticationRepository>(
    () => devAppLocalPackageModule.getProd(),
    registerFor: {_prod},
  );
  gh.factory<_i8.ILocalCache>(() => _i8.InMemoryLocalCache());
  gh.factory<_i9.LoginWithEmailAndPwUseCase>(() =>
      _i9.LoginWithEmailAndPwUseCase(
          auth: get<_i7.IAuthenticationRepository>()));
  gh.factory<_i10.LoginWithGoogleUseCase>(() =>
      _i10.LoginWithGoogleUseCase(auth: get<_i7.IAuthenticationRepository>()));
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<String>(
    () => devAppLocalPackageModule.devInitialLocation,
    instanceName: 'init_location',
    registerFor: {_dev},
  );
  gh.factory<String>(
    () => devAppLocalPackageModule.initialLocation,
    instanceName: 'init_location',
    registerFor: {_prod},
  );
  gh.lazySingleton<_i12.TransactionRepository>(
    () => devAppLocalPackageModule.getTransactionRepoDev(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i12.TransactionRepository>(
    () => devAppLocalPackageModule.getTransactionRepoProd(),
    registerFor: {_prod},
  );
  gh.singleton<_i13.UserPreferences>(
      _i13.UserPreferences(prefs: get<_i11.SharedPreferences>()));
  gh.factory<_i14.VerificationService>(() => _i14.VerificationService());
  gh.factory<bool>(
    () => sharedPreferencesModule.isOnboardingCompeted,
    instanceName: 'isOnboardingCompleted',
  );
  gh.factory<_i15.AddTransaction>(
      () => _i15.AddTransaction(get<_i12.TransactionRepository>()));
  gh.factory<_i16.AppBloc>(() => _i16.AppBloc(
        authenticationRepository: get<_i7.IAuthenticationRepository>(),
        showOnboarding: get<bool>(instanceName: 'isOnboardingCompleted'),
      ));
  gh.factory<_i17.ForgotPasswordUseCase>(() =>
      _i17.ForgotPasswordUseCase(auth: get<_i7.IAuthenticationRepository>()));
  gh.lazySingleton<_i18.GoRouter>(() => devAppLocalPackageModule
      .appRouterDev(get<String>(instanceName: 'init_location')));
  gh.factory<_i15.LoadAllTransactions>(
      () => _i15.LoadAllTransactions(get<_i12.TransactionRepository>()));
  gh.factory<_i14.RegisterWithEmailAndPwUseCase>(
      () => _i14.RegisterWithEmailAndPwUseCase(
            verificationService: get<_i14.VerificationService>(),
            auth: get<_i7.IAuthenticationRepository>(),
          ));
  return get;
}

class _$FirebaseInjectableModule extends _i3.FirebaseInjectableModule {}

class _$DevAppLocalPackageModule extends _i3.DevAppLocalPackageModule {}

class _$SharedPreferencesModule extends _i3.SharedPreferencesModule {}
