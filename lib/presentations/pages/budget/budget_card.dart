import 'package:budget_repository/budget_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../../../blocs/budget/budget_bloc.dart';
import '../../../blocs/transaction/category_model.dart';
import '../../../blocs/transaction/transaction_bloc.dart';
import '../../../constants.dart';
import 'budget_detail.dart';

class BudgetCard extends StatelessWidget {
  const BudgetCard({
    Key? key,
    required this.budget,
  }) : super(key: key);

  final Budget budget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (_) => MultiBlocProvider(
              providers: [
                BlocProvider.value(
                  value: context.read<TransactionBloc>(),
                ),
                BlocProvider.value(
                  value: context.read<BudgetBloc>(),
                ),
              ],
              child: BudgetDetail(budget),
            ),
          ),
        );
      },
      child: Card(
        elevation: 2,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.all(kMediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(
                    label: Row(
                      children: [
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Category.colorByName(
                            budget.category,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(budget.category),
                      ],
                    ),
                  ),
                  WarningIcon(budget: budget),
                ],
              ),
              RemainText(budget: budget),
              const SizedBox(height: 8),
              ProgressBar(budget: budget),
              const SizedBox(height: 8),
              UsedOfAmount(budget: budget),
              const SizedBox(height: 8),
              ExceedText(budget: budget),
            ],
          ),
        ),
      ),
    );
  }
}

class ExceedText extends StatelessWidget {
  const ExceedText({
    Key? key,
    required this.budget,
  }) : super(key: key);
  final Budget budget;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoaded) {
          final used = state.transactions.totalOfCategory(budget.category);
          final isExceeded = used > budget.amount;
          if (isExceeded) {
            return Text(
              "You've exceeded the limit",
              style: body3.copyWith(color: kRed100),
            );
          } else {
            return const SizedBox.shrink();
          }
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class WarningIcon extends StatelessWidget {
  const WarningIcon({
    Key? key,
    required this.budget,
  }) : super(key: key);
  final Budget budget;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoaded) {
          final used = state.transactions.totalOfCategory(budget.category);
          final isExceeded = used > budget.amount;
          if (isExceeded) {
            return Image.asset(
              'assets/icons/warning.png',
              color: kRed100,
            );
          } else {
            return const SizedBox.shrink();
          }
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class UsedOfAmount extends StatelessWidget {
  const UsedOfAmount({
    Key? key,
    required this.budget,
  }) : super(key: key);

  final Budget budget;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoaded) {
          final used = state.transactions.totalOfCategory(budget.category);
          return Text(
            '\$$used of \$${budget.amount}',
            style: body1.copyWith(color: kDark25),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class RemainText extends StatelessWidget {
  const RemainText({Key? key, required this.budget}) : super(key: key);
  final Budget budget;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoaded) {
          final used = state.transactions.totalOfCategory(budget.category);
          final isExceeded = used > budget.amount;
          return Text(
            'Remaining \$${isExceeded ? 0 : (budget.amount - used).toStringAsFixed(1)}',
            style: title2,
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key, required this.budget}) : super(key: key);
  final Budget budget;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoaded) {
          final used = state.transactions.totalOfCategory(budget.category);
          return ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              value: used / budget.amount,
              backgroundColor: kLight20,
              minHeight: 12,
              color: Category.colorByName(budget.category),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

extension ListTransactionExtension on List<Transaction> {
  double totalOfCategory(String category) {
    final list = where((e) => e.category == category);
    final List<double> list2;
    if (list.isNotEmpty) {
      list2 = list.map((e) => e.amount).toList();
    } else {
      list2 = [];
    }
    return list2.isNotEmpty ? list2.reduce((a, b) => a + b) : 0;
  }
}
