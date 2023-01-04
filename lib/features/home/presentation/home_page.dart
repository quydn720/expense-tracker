import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/home/bloc/home_bloc.dart';
import 'package:expense_tracker/features/home/presentation/widget/recent_transactions.dart';
import 'package:expense_tracker/features/home/presentation/widget/spend_frequency.dart';
import 'package:expense_tracker/features/home/presentation/widget/user_circle_avatar.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:expense_tracker/features/user/presentation/bloc/user_bloc.dart';
import 'package:expense_tracker/features/wallet/data/datasources/wallet_dao.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

const searchIconButtonKey = Key('homeScreen_search_iconButton');
const notificationIconButtonKey = Key('homeScreen_notification_iconButton');

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(
        transactionRepository: context.read<ITransactionRepository>(),
        db: getIt<WalletsDao>(),
        userService: getIt<UserService>(),
      )..add(const HomeSubscriptionRequested()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme;
    final textTheme = theme.textTheme;

    final l10n = context.l10n;

    final state = context.watch<HomeBloc>().state;

    final formatter = context.read<AppBloc>().state.numberFormatter;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const _HomeAppBar(),
              const SizedBox(height: 16),
              // ignore: lines_longer_than_80_chars
              Text(
                '${l10n.account_balance}: ${formatter.format(state.accountBalance)}',
                style: textTheme.headline2?.copyWith(color: color.onBackground),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 32,
                child: Text(l10n.spend_frequency, style: textTheme.headline6),
              ),
              SpendFrequency(transactions: state.transactions),
              const RecentTransactions(),
            ],
          ),
      ),
      ),
    );
  }
}

class _HomeAppBar extends StatelessWidget {
  const _HomeAppBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const UserCircleAvatar(),
        const Spacer(),
        IconButton(
          key: searchIconButtonKey,
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.magnifyingGlass),
        ),
        IconButton(
          key: notificationIconButtonKey,
          onPressed: () => context.push('/notifications'),
          icon: const Icon(FontAwesomeIcons.bell),
        )
      ],
    );
  }
}
