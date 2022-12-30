import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/transaction/presentation/widgets/transaction_tile.dart';
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/bloc/transaction_bloc.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});
  static const String routeName = '/transactions';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TransactionBloc>(
      create: (_) => getIt<TransactionBloc>()
        ..add(const TransactionsSubscriptionRequested()),
      child: const TransactionView(),
    );
  }
}

class TransactionView extends StatelessWidget {
  const TransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state.status != TransactionStatus.loaded) {
          return const Center(child: CircularProgressIndicator());
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(l10n.transactions),
            actions: [
              IconButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                    useRootNavigator: true,
                    context: context,
                    builder: (_) => BlocProvider.value(
                      value: context.read<TransactionBloc>(),
                      child: const FilterBottomSheet(),
                    ),
                  );
                },
                icon: const FaIcon(FontAwesomeIcons.filterCircleDollar),
              ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              ElevatedButton(
                onPressed: () {
                  context.go('/reports');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color(0xffEEE5FF),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('See your financial report'),
                      Icon(FontAwesomeIcons.upRightFromSquare),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                itemBuilder: (_, index) => TransactionTile(
                  transaction: state.filteredTransactions.elementAt(index),
                  onPress: () => context.push(
                    '/transactions/${state.transactions[index].id}',
                    extra: state.transactions[index],
                  ),
                ),
                itemCount: state.filteredTransactions.length,
              ),
            ],
          ),
        );
      },
    );
  }
}

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({
    super.key,
  });

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  int? index;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final title = textTheme.bodyText2?.copyWith(
      fontWeight: FontWeight.w600,
      letterSpacing: 0.3,
    );

    final controller = context.read<TransactionBloc>();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Filter Transaction', style: title),
              const Chip(label: Text('Reset'))
            ],
          ),
          const SizedBox(height: 16),
          Text('Filter By', style: title),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: [
              ChoiceChip(
                side: const BorderSide(color: Colors.transparent),
                label: const Text('Income'),
                selected: index == 1,
                onSelected: (value) {
                  setState(() {
                    index = value ? 1 : null;
                  });
                  if (value) {
                    controller.add(
                      const TransactionsViewFilterChanged(
                        TransactionsViewFilter.income,
                      ),
                    );
                  } else {
                    controller.add(
                      const TransactionsViewFilterChanged(
                        TransactionsViewFilter.all,
                      ),
                    );
                  }
                },
              ),
              ChoiceChip(
                side: const BorderSide(color: Colors.transparent),
                label: const Text('Expense'),
                selected: index == 2,
                onSelected: (value) {
                  setState(() {
                    index = value ? 2 : null;
                  });
                  if (value) {
                    controller.add(
                      const TransactionsViewFilterChanged(
                        TransactionsViewFilter.expense,
                      ),
                    );
                  } else {
                    controller.add(
                      const TransactionsViewFilterChanged(
                        TransactionsViewFilter.all,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text('Sort By', style: title),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: const [
              ChoiceChip(label: Text('Income'), selected: false),
              ChoiceChip(label: Text('Income'), selected: false),
              ChoiceChip(label: Text('Income'), selected: false),
            ],
          ),
          const SizedBox(height: 16),
          Text('Category', style: title),
          ListTile(
            title: Text(
              'Choose Category',
              style: textTheme.bodyText1,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '0 Selected',
                  style: textTheme.subtitle2,
                ),
                const SizedBox(width: 4),
                Assets.icons.arrowRight2.svg(
                  width: 24,
                  height: 24,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: 16,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
