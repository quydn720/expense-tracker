// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i7;
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:expense_tracker/common/cache/drift_database.dart' as _i13;
import 'package:expense_tracker/di/injector.dart' as _i15;
import 'package:expense_tracker/features/app/bloc/app_bloc.dart' as _i38;
import 'package:expense_tracker/features/app/data/app_settings.dart' as _i3;
import 'package:expense_tracker/features/authentication/domain/usecases/forgot_password_use_case.dart'
    as _i24;
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart'
    as _i10;
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_google_account_use_case.dart'
    as _i11;
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart'
    as _i14;
import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart'
    as _i21;
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart'
    as _i32;
import 'package:expense_tracker/features/authentication/presentation/register_form/cubit/register_form_cubit.dart'
    as _i33;
import 'package:expense_tracker/features/budget/data/datasources/budget_dao.dart'
    as _i22;
import 'package:expense_tracker/features/budget/data/datasources/in_memory_budget_datasource.dart'
    as _i43;
import 'package:expense_tracker/features/budget/data/datasources/local_budget_datasource.dart'
    as _i26;
import 'package:expense_tracker/features/budget/data/repositories/budget_repository_impl.dart'
    as _i42;
import 'package:expense_tracker/features/budget/domain/entities/budget.dart'
    as _i8;
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart'
    as _i35;
import 'package:expense_tracker/features/budget/domain/usecases/get_all_budget.dart'
    as _i36;
import 'package:expense_tracker/features/budget/domain/usecases/update_budget.dart'
    as _i34;
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart'
    as _i23;
import 'package:expense_tracker/features/category/data/repositories/local_category_repository.dart'
    as _i29;
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart'
    as _i28;
import 'package:expense_tracker/features/category/presentation/cubit/category_cubit.dart'
    as _i39;
import 'package:expense_tracker/features/notification/domain/repositories/notification_repository.dart'
    as _i20;
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart'
    as _i16;
import 'package:expense_tracker/features/transaction/data/repositories/transaction_repository_impl.dart'
    as _i12;
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart'
    as _i41;
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart'
    as _i30;
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/cubit/edit_transaction_cubit.dart'
    as _i40;
import 'package:expense_tracker/features/transaction/edit_transaction/usecases/add_transaction_use_case.dart'
    as _i37;
import 'package:expense_tracker/features/transaction/transaction_overview/usecases/load_transactions.dart'
    as _i31;
import 'package:expense_tracker/features/user/presentation/bloc/user_bloc.dart'
    as _i18;
import 'package:expense_tracker/features/wallet/data/datasources/wallet_dao.dart'
    as _i19;
import 'package:expense_tracker/features/wallet/presentation/cubit/wallet_cubit.dart'
    as _i27;
import 'package:expense_tracker/user_preferences.dart' as _i17;
import 'package:firebase_auth/firebase_auth.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i25;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
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
  final devAppLocalPackageModule = _$DevAppLocalPackageModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final a = _$A();
  final driftDatabase = _$DriftDatabase();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.factory<_i3.AppSettingService>(
      () => _i3.AppSettingService(gh<_i4.SharedPreferences>()));
  gh.factory<String>(
    () => devAppLocalPackageModule.initialLocation,
    instanceName: 'init_location',
    registerFor: {_prod},
  );
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthenticationRepository>(
    () => devAppLocalPackageModule.getProd(),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i7.IAuthenticationRepository>(
    () => devAppLocalPackageModule.getDev(),
    registerFor: {_dev},
  );
  gh.factory<List<_i8.Budget>>(() => a.budgets);
  gh.lazySingleton<_i9.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i10.LoginWithEmailAndPwUseCase>(() =>
      _i10.LoginWithEmailAndPwUseCase(
          auth: gh<_i7.IAuthenticationRepository>()));
  gh.factory<_i11.LoginWithGoogleUseCase>(() =>
      _i11.LoginWithGoogleUseCase(auth: gh<_i7.IAuthenticationRepository>()));
  gh.factory<_i12.Mapper>(() => _i12.Mapper());
  gh.singleton<_i13.MyDatabase>(driftDatabase.myDatabase);
  gh.factory<_i14.RegisterWithEmailAndPwUseCase>(() =>
      _i14.RegisterWithEmailAndPwUseCase(
          auth: gh<_i7.IAuthenticationRepository>()));
  await gh.factoryAsync<_i4.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i15.AppConfigurations>(
    _i15.DevAppConfigurations(),
    registerFor: {
      _dev,
      _prod,
    },
  );
  gh.factory<String>(
    () => devAppLocalPackageModule.devInitialLocation,
    instanceName: 'init_location',
    registerFor: {_dev},
  );
  gh.factory<_i16.TransactionsDao>(
      () => _i16.TransactionsDao(gh<_i13.MyDatabase>()));
  gh.singleton<_i17.UserPreferences>(
      _i17.UserPreferences(prefs: gh<_i4.SharedPreferences>()));
  gh.factory<_i18.UserService>(
      () => _i18.UserService(gh<_i7.IAuthenticationRepository>()));
  gh.factory<_i19.WalletsDao>(() => _i19.WalletsDao(gh<_i13.MyDatabase>()));
  gh.factory<bool>(
    () => sharedPreferencesModule.isOnboardingCompeted,
    instanceName: 'isOnboardingCompleted',
  );
  gh.singleton<_i20.LocalNotificationsDataSource>(
      _i20.LocalNotificationsDataSourceImpl());
  gh.lazySingleton<_i21.AuthenticationBloc>(
      () => _i21.AuthenticationBloc(gh<_i7.IAuthenticationRepository>()));
  gh.factory<_i22.BudgetsDao>(() => _i22.BudgetsDao(gh<_i13.MyDatabase>()));
  gh.factory<_i23.CategoriesDao>(
      () => _i23.CategoriesDao(gh<_i13.MyDatabase>()));
  gh.factory<_i24.ForgotPasswordUseCase>(() =>
      _i24.ForgotPasswordUseCase(auth: gh<_i7.IAuthenticationRepository>()));
  gh.lazySingleton<_i25.GoRouter>(() => devAppLocalPackageModule
      .appRouterDev(gh<String>(instanceName: 'init_location')));
  gh.factory<_i26.IBudgetDataSource>(
      () => _i26.LocalBudgetDataSource(gh<_i22.BudgetsDao>()));
  gh.factory<_i27.WalletCubit>(() => _i27.WalletCubit(
        db: gh<_i13.MyDatabase>(),
        getTransactionsUseCase: gh<_i27.GetTransactionOfWallet>(),
      ));
  gh.factory<_i28.ICategoryRepository>(
      () => _i29.LocalCategoryRepository(gh<_i23.CategoriesDao>()));
  gh.factory<_i30.ITransactionRepository>(
    () => _i12.TransactionRepositoryImpl(
      gh<_i16.TransactionsDao>(),
      gh<_i12.Mapper>(),
      gh<_i19.WalletsDao>(),
    ),
    registerFor: {_dev},
  );
  gh.factory<_i31.LoadAllTransactions>(
      () => _i31.LoadAllTransactions(gh<_i30.ITransactionRepository>()));
  gh.factory<_i32.LoginFormCubit>(() => _i32.LoginFormCubit(
        loginWithGoogleUseCase: gh<_i11.LoginWithGoogleUseCase>(),
        loginWithEmailAndPwUseCase: gh<_i10.LoginWithEmailAndPwUseCase>(),
      ));
  gh.factory<_i33.RegisterFormCubit>(() => _i33.RegisterFormCubit(
      registerWithEmailAndPwUseCase: gh<_i14.RegisterWithEmailAndPwUseCase>()));
  gh.factory<_i34.UpdateBudget>(
      () => _i34.UpdateBudget(gh<_i35.IBudgetRepository>()));
  gh.factory<_i18.UserBloc>(() => _i18.UserBloc(gh<_i18.UserService>()));
  gh.factory<_i36.WatchAllBudget>(
      () => _i36.WatchAllBudget(gh<_i35.IBudgetRepository>()));
  gh.factory<_i37.AddTransactionUseCase>(() => _i37.AddTransactionUseCase(
      repository: gh<_i30.ITransactionRepository>()));
  gh.singleton<_i38.AppBloc>(
      _i38.AppBloc(appSettingService: gh<_i3.AppSettingService>()));
  gh.factory<_i39.CategoryCubit>(
      () => _i39.CategoryCubit(gh<_i28.ICategoryRepository>()));
  gh.factoryParam<_i40.EditTransactionCubit, _i41.TransactionEntity?, dynamic>((
    initialTransaction,
    _,
  ) =>
      _i40.EditTransactionCubit(
        gh<_i37.AddTransactionUseCase>(),
        initialTransaction: initialTransaction,
      ));
  gh.factory<_i36.GetAllBudgets>(
      () => _i36.GetAllBudgets(gh<_i35.IBudgetRepository>()));
  gh.factory<_i27.GetTransactionOfWallet>(
      () => _i27.GetTransactionOfWallet(gh<_i30.ITransactionRepository>()));
  gh.factory<_i35.IBudgetRepository>(() =>
      _i42.LocalBudgetRepository(dataSource: gh<_i26.IBudgetDataSource>()));
  return getIt;
}

class _$SharedPreferencesModule extends _i15.SharedPreferencesModule {}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}

class _$DevAppLocalPackageModule extends _i15.DevAppLocalPackageModule {}

class _$DriftDatabase extends _i15.DriftDatabase {}

class _$A extends _i43.A {}
