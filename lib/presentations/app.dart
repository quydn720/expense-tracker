import 'package:authentication_repository/authentication_repository.dart';
import 'package:budget_repository/budget_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transaction_repository/transaction_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

import '../blocs/app_bloc/app_bloc.dart';
import '../blocs/budget/budget_bloc.dart';
import '../blocs/filter/filter_bloc.dart';
import '../blocs/tab/tab_bloc.dart';
import '../blocs/transaction/transaction_bloc.dart';
import '../blocs/wallet/wallet_bloc.dart';
import '../di/injector.dart';
import '../size_config.dart';
import '../theme.dart';
import 'pages/login/login_page.dart';
import 'pages/main/main_page.dart';
import 'pages/onboarding/onboarding_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: getIt<String>(),
      home: Scaffold(
        appBar: AppBar(title: Text(getIt<String>())),
      ),
    );
    final authenticationRepository = getIt<IAuthenticationRepository>();
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>(
            create: (context) => AppBloc(
              authenticationRepository: authenticationRepository,
              sharedPreferences: getIt<SharedPreferences>(),
            )..add(const AppStarted()),
          ),
        ],
        child: AppView(
          authenticationRepository: authenticationRepository,
        ),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key, required this.authenticationRepository})
      : super(key: key);
  final IAuthenticationRepository authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          SizeConfig().init(context);
          if (state is Authenticated) {
            return MultiBlocProvider(
              providers: [
                BlocProvider<TabBloc>(
                  create: (context) => TabBloc(),
                ),
                BlocProvider<TransactionBloc>(
                  create: (context) => TransactionBloc(
                    getIt<FakeTransactionRepo>(),
                  )..add(const LoadTransactions()),
                ),
                BlocProvider<WalletBloc>(
                  create: (context) =>
                      WalletBloc(FakeWalletRepo())..add(const LoadWallets()),
                ),
                BlocProvider(
                  create: (context) => BudgetBloc(FakeBudgetRepository())
                    ..add(const LoadBudgets()),
                ),
                BlocProvider<FilterBloc>(
                  create: (context) => FilterBloc(
                    transactionBloc: context.read<TransactionBloc>(),
                  ),
                ),
              ],
              child: const MainPage(),
            );
          }
          if (state is Unauthenticated) {
            return const SignInPage();
          }
          return const OnboardingPage();
        },
      ),
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: getIt<String>(),
    );
  }
}
