import 'package:expense_tracker/extensions/date_extensions.dart';
import 'package:expense_tracker/extensions/number_extensions.dart';
import 'package:expense_tracker/extensions/transaction_extensions.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/usecases/add_transaction_use_case.dart';
import 'package:expense_tracker/features/transaction/presentation/widgets/transaction_tile.dart';
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/bloc/transaction_bloc.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});
  static const String routeName = '/transactions';

  @override
  Widget build(BuildContext context) {
    final repo = context.read<ITransactionRepository>();
    return BlocProvider<TransactionOverviewBloc>(
      create: (_) => TransactionOverviewBloc(
        repository: repo,
        deleteTransactionUseCase: DeleteTransactionUseCase(repository: repo),
        addTransactionUseCase: AddTransactionUseCase(repository: repo),
      )..add(const TransactionsSubscriptionRequested()),
      child: const TransactionView(),
    );
  }
}

class TransactionView extends StatelessWidget {
  const TransactionView({super.key});

  Map<DateTime, List<TransactionEntity>> _computeTransactions(
    Iterable<TransactionEntity> transactions,
  ) {
    final groups = <DateTime, List<TransactionEntity>>{};
    for (final transaction in transactions) {
      final date = transaction.dateCreated.simpleDate;
      if (groups.containsKey(date)) {
        groups[date]!.add(transaction);
      } else {
        groups[date] = [transaction];
      }
    }
    return Map.fromEntries(
      groups.entries.toList()..sort((el1, el2) => el2.key.compareTo(el1.key)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocConsumer<TransactionOverviewBloc, TransactionState>(
      listenWhen: (previous, current) =>
          previous.lastDeletedTransaction != current.lastDeletedTransaction &&
          current.lastDeletedTransaction != null,
      listener: (_, state) {
        final deletedTransaction = state.lastDeletedTransaction!;
        final messenger = ScaffoldMessenger.of(context);
        context
          ..pop()
          ..pop();
        messenger
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text(
                l10n.transactionsOverviewTransactionDeletedSnackbarText(
                  deletedTransaction.category.name,
                ),
              ),
              action: SnackBarAction(
                label: 'undo',
                onPressed: () {
                  messenger.hideCurrentSnackBar();
                  context
                      .read<TransactionOverviewBloc>()
                      .add(const TransactionOverviewUndoDeletionRequested());
                },
              ),
            ),
          );
      },
      builder: (context, state) {
        if (state.status != TransactionStatus.loaded) {
          return const Center(child: CircularProgressIndicator());
        }
        final filteredTransactions = state.filteredTransactions;
        var displayedTransactions = _computeTransactions(filteredTransactions);

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
                      value: context.read<TransactionOverviewBloc>(),
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
                    children: [
                      Text(l10n.seeYourFinancialReport),
                      const Icon(FontAwesomeIcons.upRightFromSquare),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                itemCount: displayedTransactions.length,
                itemBuilder: (_, index) {
                  final date = displayedTransactions.keys.elementAt(index);
                  final dayTransactions = displayedTransactions[date]!;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(date.formattedDate),
                      const Divider(),
                      ListView.builder(
                        itemCount: dayTransactions.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return TransactionTile(
                            transaction: dayTransactions.elementAt(index),
                            onPress: () => context.push(
                              '/transactions/${state.transactions[index].id}',
                              extra: {
                                'bloc': context.read<TransactionOverviewBloc>(),
                                'trans': state.transactions[index],
                              },
                            ),
                          );
                        },
                      ),
                      const Divider(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Expanded(
                            child: Text(
                              'Total:',
                              style: TextStyle(
                                color: CupertinoColors.inactiveGray,
                              ),
                            ),
                          ),
                          Text(
                            'USD ${dayTransactions.sum()[0].removeDecimalZeroFormat()}',
                            style: const TextStyle(
                              color: CupertinoColors.inactiveGray,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
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

    final controller = context.read<TransactionOverviewBloc>();
    final l10n = context.l10n;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(l10n.filter_transactions, style: title),
              Chip(label: Text(l10n.reset))
            ],
          ),
          const SizedBox(height: 16),
          Text(l10n.filter_by, style: title),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: [
              ChoiceChip(
                side: const BorderSide(color: Colors.transparent),
                label: Text(l10n.income),
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
                label: Text(l10n.expense),
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
          Text(l10n.sort_by, style: title),
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
