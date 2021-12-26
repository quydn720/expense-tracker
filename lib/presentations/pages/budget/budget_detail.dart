import 'package:budget_repository/budget_repository.dart';
import 'package:expense_tracker/blocs/transaction/category_model.dart';
import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
import 'package:expense_tracker/presentations/pages/budget/budget_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BudgetDetail extends StatelessWidget {
  const BudgetDetail(this.budget, {Key? key}) : super(key: key);
  final Budget budget;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Budget'),
        actions: [
          IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: SizedBox(
                width: 150,
                child: Row(
                  children: [
                    SquaredIconCard(
                      imagePath: Category.fromName(budget.category).iconPath,
                      size: 56,
                    ),
                    Text(budget.category),
                  ],
                ),
              ),
            ),
            const Text(
              "Remaining",
              style: title2,
              textAlign: TextAlign.center,
            ),
            BlocBuilder<TransactionBloc, TransactionState>(
              builder: (context, state) {
                if (state is TransactionLoaded) {
                  final used =
                      state.transactions.totalOfCategory(budget.category);
                  final isExceeded = used > budget.amount;
                  return Text(
                    "\$${(isExceeded) ? 0 : (budget.amount - used)}",
                    style: titleX,
                    textAlign: TextAlign.center,
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
