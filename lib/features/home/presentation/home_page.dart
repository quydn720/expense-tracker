import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/home/bloc/home_bloc.dart';
import 'package:expense_tracker/features/home/presentation/widget/recent_transactions.dart';
import 'package:expense_tracker/features/home/presentation/widget/spend_frequency.dart';
import 'package:expense_tracker/features/home/presentation/widget/user_circle_avatar.dart';
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
      create: (_) => getIt<HomeBloc>()..add(const HomeSubscriptionRequested()),
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
              Text(
                '${l10n.account_balance}: ${formatter.format(state.accountBalance)}',
                style: textTheme.headline2?.copyWith(color: color.onBackground),
              ),
              Row(
                children: [
                  Text(
                    '${l10n.income}: \$1000',
                    style: textTheme.headline6?.copyWith(
                      color: color.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(width: 40),
                  Text(
                    '${l10n.expense}: \$600',
                    style: textTheme.headline6?.copyWith(
                      color: color.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
              const SpendFrequency(),
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
