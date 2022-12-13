// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i6;
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:expense_tracker/common/cache/drift_database.dart' as _i15;
import 'package:expense_tracker/common/cache/local_cache.dart' as _i10;
import 'package:expense_tracker/di/injector.dart' as _i16;
import 'package:expense_tracker/features/app/bloc/app_bloc.dart' as _i34;
import 'package:expense_tracker/features/app/data/app_settings.dart' as _i3;
import 'package:expense_tracker/features/authentication/domain/usecases/forgot_password_use_case.dart'
    as _i28;
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart'
    as _i13;
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_google_account_use_case.dart'
    as _i14;
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart'
    as _i5;
import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart'
    as _i24;
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart'
    as _i32;
import 'package:expense_tracker/features/authentication/presentation/register_form/cubit/register_form_cubit.dart'
    as _i33;
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart'
    as _i25;
import 'package:expense_tracker/features/category/data/repositories/local_category_repository.dart'
    as _i30;
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart'
    as _i23;
import 'package:expense_tracker/features/category/presentation/cubit/category_cubit.dart'
    as _i22;
import 'package:expense_tracker/features/settings/theme/theme_controller.dart'
    as _i17;
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart'
    as _i19;
import 'package:expense_tracker/features/transaction/data/repositories/fake_transaction_repository.dart'
    as _i31;
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart'
    as _i27;
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart'
    as _i11;
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/cubit/edit_transaction_cubit.dart'
    as _i26;
import 'package:expense_tracker/features/transaction/edit_transaction/usecases/add_transaction_use_case.dart'
    as _i21;
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/bloc/transaction_bloc.dart'
    as _i18;
import 'package:expense_tracker/features/transaction/transaction_overview/usecases/load_transactions.dart'
    as _i12;
import 'package:expense_tracker/user_preferences.dart' as _i20;
import 'package:firebase_auth/firebase_auth.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i29;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

const String _dev = 'dev';
const String _prod = 'prod';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final devAppLocalPackageModule = _$DevAppLocalPackageModule();
  final driftDatabase = _$DriftDatabase();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.factory<_i3.AppSettingService>(
      () => _i3.AppSettingService(gh<_i4.SharedPreferences>()));
  gh.factory<_i5.RegisterWithEmailAndPwUseCase>(() =>
      _i5.RegisterWithEmailAndPwUseCase(
          auth: gh<_i6.IAuthenticationRepository>()));
  gh.lazySingleton<_i7.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i8.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthenticationRepository>(
    () => devAppLocalPackageModule.getDev(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i9.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i10.ILocalCache>(() => _i10.InMemoryLocalCache());
  gh.lazySingleton<_i11.ITransactionRepository>(
    () => devAppLocalPackageModule.getTransactionRepoProd(),
    registerFor: {_prod},
  );
  gh.factory<_i12.LoadAllTransactions>(
      () => _i12.LoadAllTransactions(gh<_i11.ITransactionRepository>()));
  gh.factory<_i13.LoginWithEmailAndPwUseCase>(() =>
      _i13.LoginWithEmailAndPwUseCase(
          auth: gh<_i6.IAuthenticationRepository>()));
  gh.factory<_i14.LoginWithGoogleUseCase>(() =>
      _i14.LoginWithGoogleUseCase(auth: gh<_i6.IAuthenticationRepository>()));
  gh.singleton<_i15.MyDatabase>(driftDatabase.myDatabase);
  gh.singleton<_i16.AppConfigurations>(
    _i16.DevAppConfigurations(),
    registerFor: {
      _dev,
      _prod,
    },
  );
  await gh.factoryAsync<_i4.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<String>(
    () => devAppLocalPackageModule.initialLocation,
    instanceName: 'init_location',
    registerFor: {_prod},
  );
  gh.factory<String>(
    () => devAppLocalPackageModule.devInitialLocation,
    instanceName: 'init_location',
    registerFor: {_dev},
  );
  gh.singleton<_i17.ThemeController>(
      _i17.ThemeController(gh<_i10.ILocalCache>()));
  gh.factory<_i18.TransactionBloc>(
      () => _i18.TransactionBloc(gh<_i11.ITransactionRepository>()));
  gh.factory<_i19.TransactionsDao>(
      () => _i19.TransactionsDao(gh<_i15.MyDatabase>()));
  gh.singleton<_i20.UserPreferences>(
      _i20.UserPreferences(prefs: gh<_i4.SharedPreferences>()));
  gh.factory<bool>(
    () => sharedPreferencesModule.isOnboardingCompeted,
    instanceName: 'isOnboardingCompleted',
  );
  gh.factory<_i21.AddTransactionUseCase>(
      () => _i21.AddTransactionUseCase(gh<_i11.ITransactionRepository>()));
  gh.factory<_i22.CategoryCubit>(
      () => _i22.CategoryCubit(gh<_i23.ICategoryRepository>()));
  gh.lazySingleton<_i24.AuthenticationBloc>(
      () => _i24.AuthenticationBloc(gh<_i6.IAuthenticationRepository>()));
  gh.factory<_i25.CategoriesDao>(
      () => _i25.CategoriesDao(gh<_i15.MyDatabase>()));
  gh.factory<_i21.DeleteTransactionUseCase>(
      () => _i21.DeleteTransactionUseCase(gh<_i11.ITransactionRepository>()));
  gh.factoryParam<_i26.EditTransactionCubit, _i27.TransactionEntity?, dynamic>((
    initialTransaction,
    _,
  ) =>
      _i26.EditTransactionCubit(
        gh<_i21.AddTransactionUseCase>(),
        gh<_i21.DeleteTransactionUseCase>(),
        initialTransaction: initialTransaction,
      ));
  gh.factory<_i28.ForgotPasswordUseCase>(() =>
      _i28.ForgotPasswordUseCase(auth: gh<_i6.IAuthenticationRepository>()));
  gh.lazySingleton<_i29.GoRouter>(() => devAppLocalPackageModule
      .appRouterDev(gh<String>(instanceName: 'init_location')));
  gh.factory<_i23.ICategoryRepository>(
      () => _i30.LocalCategoryRepository(gh<_i25.CategoriesDao>()));
  gh.factory<_i11.ITransactionRepository>(
    () => _i31.FakeTransactionRepository(gh<_i19.TransactionsDao>()),
    registerFor: {_dev},
  );
  gh.factory<_i32.LoginFormCubit>(() => _i32.LoginFormCubit(
        loginWithGoogleUseCase: gh<_i14.LoginWithGoogleUseCase>(),
        loginWithEmailAndPwUseCase: gh<_i13.LoginWithEmailAndPwUseCase>(),
      ));
  gh.factory<_i33.RegisterFormCubit>(() => _i33.RegisterFormCubit(
      registerWithEmailAndPwUseCase: gh<_i5.RegisterWithEmailAndPwUseCase>()));
  gh.singleton<_i34.AppBloc>(
      _i34.AppBloc(appSettingService: gh<_i3.AppSettingService>()));
  gh.lazySingleton<_i6.IAuthenticationRepository>(
    () => devAppLocalPackageModule.getProd(),
    registerFor: {_prod},
  );
  return getIt;
}

class _$SharedPreferencesModule extends _i16.SharedPreferencesModule {}

class _$FirebaseInjectableModule extends _i16.FirebaseInjectableModule {}

class _$DevAppLocalPackageModule extends _i16.DevAppLocalPackageModule {}

class _$DriftDatabase extends _i16.DriftDatabase {}
