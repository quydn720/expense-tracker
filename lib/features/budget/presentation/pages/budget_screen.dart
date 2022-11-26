import 'package:expense_tracker/features/transaction_overview/data/models/category.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/budget.dart';

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
            BudgetTile(budget: Budget('id', 100, 20, Category.categories[1])),
            BudgetTile(
              budget: Budget('id', 200, 20, Category.categories[2]),
              isExceeded: true,
            ),
            BudgetTile(budget: Budget('id', 500, 20, Category.categories[3])),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Create a budget'),
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
                    backgroundColor: Color(budget.category.color!),
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
                backgroundColor: Color(budget.category.color!).withOpacity(0.2),
                minHeight: 12,
                color: Color(budget.category.color!),
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
