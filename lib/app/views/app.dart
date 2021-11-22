import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/app/bloc/app_bloc.dart';
import 'package:expense_tracker/blocs/filter/filter_bloc.dart';
import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/blocs/wallet/wallet_bloc.dart';
import 'package:expense_tracker/injector.dart';
import 'package:expense_tracker/app/routes/routes.dart';
import 'package:expense_tracker/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transaction_repository/transaction_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

class App extends StatelessWidget {
  const App(
      {Key? key,
      required this.authenticationRepository,
      required this.walletRepository})
      : super(key: key);
  final AuthenticationRepository authenticationRepository;
  final FirebaseWalletRepository walletRepository;
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>(
            create: (context) => AppBloc(
              authenticationRepository: authenticationRepository,
              sharedPreferences: getIt<SharedPreferences>(),
            ),
          ),
          BlocProvider<TransactionBloc>(
            create: (context) => TransactionBloc(
              FirebaseTransactionRepository(
                  walletRepository: walletRepository, cachedTransactions: {}),
            )..add(const LoadTransactions()),
          ),
          BlocProvider<WalletBloc>(
            create: (context) => WalletBloc(
              walletRepository,
            )..add(const LoadWallets()),
          ),
          BlocProvider<FilterBloc>(
            create: (context) =>
                FilterBloc(transactionBloc: context.read<TransactionBloc>()),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: routes,
      debugShowCheckedModeBanner: false,
      theme: theme,
    );
  }
}
