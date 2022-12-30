import 'package:expense_tracker/charts/weekly_chart.dart';
import 'package:expense_tracker/extensions/date_extensions.dart';
import 'package:expense_tracker/extensions/number_extensions.dart';
import 'package:expense_tracker/extensions/transaction_extensions.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/home/cubit/home_cubit.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/bloc/transaction_bloc.dart';
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/widgets/recent_transactions.dart';
import 'package:expense_tracker/features/user/presentation/bloc/user_bloc.dart';
import 'package:expense_tracker/features/wallet/presentation/cubit/wallet_cubit.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const searchIconButtonKey = Key('homeScreen_search_iconButton');
const notificationIconButtonKey = Key('homeScreen_notification_iconButton');

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final l10n = context.l10n;

    final formatter = context.read<AppBloc>().state.numberFormatter;
    final totalAmount = context.watch<WalletCubit>().state.totalAmount;
    final avatar = context.watch<UserBloc>().state.map(
          initial: (initial) => const CircleAvatar(),
          loaded: (loaded) => CircleAvatar(
            backgroundImage: NetworkImage(loaded.user.photo!),
          ),
        );

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  avatar,
                  const Spacer(),
                  IconButton(
                    key: searchIconButtonKey,
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                  ),
                  IconButton(
                    key: notificationIconButtonKey,
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.bell),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Text(
                '${l10n.account_balance}: ${formatter.format(totalAmount)}',
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
              // const SpendFrequency(),
              // StreamBuilder(
              //   stream: getIt<TransactionsDao>().a(),
              //   builder: (_, c) {
              //     print(c);
              //     return SizedBox();
              //   },
              // ),
              //  SizedBox(height: 8, child: ,),
              // const SizedBox(height: 34, child: _Chips()),
              // const SizedBox(height: 8),
              // const SizedBox(height: 180, child: TransactionsLineChart()),

              const RecentTransactions(),
            ],
          ),
        ),
      ),
    );
  }
}

class SpendFrequency extends StatelessWidget {
  const SpendFrequency({super.key});

  @override
  Widget build(BuildContext context) {
    final _filterResult = context
        .watch<TransactionBloc>()
        .state
        .transactions
        .filterByPeriod(Period.week, 0);

    final _transactions = _filterResult[0] as List<TransactionEntity>;
    final _spentInPeriod = _transactions.sum()[0];

    final start = _filterResult[1] as DateTime;
    final end = _filterResult[2] as DateTime;

    final numOfDays = end.difference(start).inDays;

    final _avgPerDay = _transactions.sum()[0] / numOfDays;

    final textTheme = Theme.of(context).textTheme;
    final l10n = context.l10n;

    final transactions = context.watch<TransactionBloc>().state.transactions;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 16),
        SizedBox(
          height: 32,
          child: Text(l10n.spend_frequency, style: textTheme.headline6),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${start.shortDate} - ${end.shortDate}',
                  style: textTheme.headline6,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Text('USD ', style: textTheme.headline6),
                      Text(_spentInPeriod.removeDecimalZeroFormat()),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Avg/day', style: textTheme.headline6),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Text('USD ', style: textTheme.headline6),
                      Text(_avgPerDay.removeDecimalZeroFormat()),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 200,
          child: WeeklyChart(transactions: transactions.groupWeekly()),
        ),
      ],
    );
  }
}

class _Chips extends StatelessWidget {
  const _Chips();

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: const [
    //     ChoiceChip(
    //       label: Text('Today'),
    //       selected: true,
    //       labelStyle: TextStyle(color: Color(0xffFCAC12)),
    //       selectedColor: Color(0xffFCEED4),
    //       backgroundColor: Color(0xffFCEED4),
    //     ),
    //     ChoiceChip(label: Text('Week'), selected: false),
    //     ChoiceChip(label: Text('Month'), selected: false),
    //     ChoiceChip(label: Text('Year'), selected: false),
    //   ],
    // );
  }
}
