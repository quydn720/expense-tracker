import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const createNewBudgetButtonKey =
    Key('budgetScreen_createNewButton_elevatedButton');

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCFCFC),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const BudgetTile(
              budget: Budget(
                id: 'id',
                amount: 100,
                whenToNotify: 20,
                category: CategoryEntity(
                  name: 'name',
                  icon: Icons.abc,
                  color: Colors.green,
                ),
              ),
            ),
            ElevatedButton(
              key: createNewBudgetButtonKey,
              onPressed: () => context.push('/create-budget'),
              child: Text(context.l10n.create_budget),
            ),
          ],
        ),
      ),
    );
  }
}

class BudgetTile extends StatelessWidget {
  const BudgetTile({super.key, required this.budget, this.isExceeded = false});
  final Budget budget;
  final bool isExceeded;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  padding: const EdgeInsets.fromLTRB(4, 4, 12, 4),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                  avatar: CircleAvatar(
                    backgroundColor: budget.category.color,
                  ),
                  label: Text(budget.category.name),
                ),
                if (isExceeded) const Icon(Icons.error, color: Colors.red)
              ],
            ),
            Text(
              r'Remaining $0',
              style: textTheme.headline3?.copyWith(color: Colors.black),
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                value: 0.2,
                backgroundColor: budget.category.color.withOpacity(0.2),
                minHeight: 12,
                color: budget.category.color,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '\$1200 of \$${budget.amount}',
              style: textTheme.bodyText1?.copyWith(
                color: const Color(0xff91919F),
              ),
            ),
            const SizedBox(height: 8),
            if (isExceeded) ...[
              Text(
                'You’ve exceed the limit!',
                style: textTheme.subtitle2?.copyWith(
                  color: Colors.red,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}

class CreateNewBudgetScreen extends StatelessWidget {
  const CreateNewBudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DefaultAppBar(title: 'title'),
    );
  }
}
