import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/widgets/recent_transactions.dart';
import 'package:expense_tracker/features/wallet/presentation/cubit/wallet_cubit.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:expense_tracker/routes/app_scaffold.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

const seeAllTransactionButtonKey = Key('homeScreen_seeAll_button');
const searchIconButtonKey = Key('homeScreen_search_iconButton');
const notificationIconButtonKey = Key('homeScreen_notification_iconButton');

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;
    final l10n = context.l10n;

    final formatter = context.read<AppBloc>().state.numberFormatter;
    final totalAmount = context.read<WalletCubit>().state.totalAmount;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  CircleAvatar(child: Assets.images.mockUserAvatar.image()),
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
              const SizedBox(height: 16),
              SizedBox(
                height: 48,
                child: Text(l10n.spend_frequency, style: textTheme.headline6),
              ),
              const SizedBox(height: 8),
              const SizedBox(height: 180, child: _LineChart()),
              const SizedBox(height: 8),
              const SizedBox(height: 34, child: _Chips()),
              const SizedBox(height: 8),
              SizedBox(
                height: 54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(l10n.recent_transactions, style: textTheme.headline6),
                    GestureDetector(
                      key: seeAllTransactionButtonKey,
                      onTap: () {
                        context.go('/${ScaffoldTab.values[1].name}');
                      },
                      child: Chip(
                        label: Text(
                          l10n.see_all,
                          style: textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const RecentTransactions(),
            ],
          ),
        ),
      ),
    );
  }
}

class DevelopingScreen extends StatefulWidget {
  const DevelopingScreen({super.key});

  @override
  State<DevelopingScreen> createState() => _DevelopingScreenState();
}

class _DevelopingScreenState extends State<DevelopingScreen> {
  String? emoji;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final parser = EmojiParser();
    return Column(
      children: [
        TextFormField(
          controller: controller,
          showCursor: false,
          onChanged: (value) {
            final emojis = parser.parseEmojis(value);
            controller.value = TextEditingValue(
              text: emojis.isNotEmpty ? emojis.last : '',
              selection: const TextSelection.collapsed(offset: 2),
            );

            setState(() => emoji = emojis.isNotEmpty ? emojis.last : null);
          },
        ),
        Text('$emoji is emoji ${parser.hasEmoji(emoji)}'),
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.amber[200],
          child: Text(emoji ?? '', style: const TextStyle(fontSize: 32)),
        ),
        const Text('Food'),
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

class _LineChart extends StatelessWidget {
  const _LineChart();

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        titlesData: FlTitlesData(
          show: true,
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: const [
              FlSpot(0, 3),
              FlSpot(2.6, 2),
              FlSpot(4.9, 5),
              FlSpot(6.8, 3.1),
              FlSpot(8, 4),
              FlSpot(9.5, 3),
              FlSpot(11, 4),
            ],
            preventCurveOverShooting: true,
            isCurved: true,
            barWidth: 6,
            isStrokeCapRound: true,
            color: Theme.of(context).primaryColor,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xff8B50FF).withOpacity(0.24),
                  const Color(0xff8B50FF).withOpacity(0),
                ],
              ),
            ),
          ),
        ],
        borderData: FlBorderData(show: false),
        backgroundColor: Colors.white,
        gridData: FlGridData(
          drawVerticalLine: false,
          drawHorizontalLine: false,
        ),
      ),
    );
  }
}
