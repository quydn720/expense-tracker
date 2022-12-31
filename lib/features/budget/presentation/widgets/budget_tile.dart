import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:flutter/material.dart';

class BudgetTile extends StatelessWidget {
  const BudgetTile({super.key, required this.budget});

  final Budget budget;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 1,
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
                  label: Text(budget.category.name, style: textTheme.bodyText2),
                ),
                if (budget.isExceed) const Icon(Icons.error, color: Colors.red)
              ],
            ),
            Text(r'Remaining $0', style: textTheme.headline5),
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
              '\$${budget.spentAmount} of \$${budget.amount}',
              style: textTheme.bodyText1?.copyWith(
                color: const Color(0xff91919F),
              ),
            ),
            const SizedBox(height: 8),
            if (budget.isExceed) ...[
              Text(
                'You’ve exceed the limit!',
                style: textTheme.subtitle2?.copyWith(color: colorScheme.error),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
