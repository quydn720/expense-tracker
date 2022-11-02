import 'package:expense_tracker/routes/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'features/transaction_overview/presentation/pages/recent_transactions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          SizedBox(
            height: 48,
            child: Center(
              child: Text('Spend Frequency', style: textTheme.headline6),
            ),
          ),
          Container(
            height: 180,
            color: Colors.blue[200],
            child: const Center(child: Text('Graph')),
          ),
          const SizedBox(height: 8),
          Container(
            height: 34,
            color: Colors.blue[200],
            child: const Center(child: Text('Chips')),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Transactions', style: textTheme.headline6),
                GestureDetector(
                  onTap: () {
                    context.go('/${ScaffoldTab.values[1].name}');
                  },
                  child: Chip(
                    label: Text(
                      'See all',
                      style: textTheme.bodyText2?.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const RecentlyTransactions(),
        ],
      ),
    );
  }
}
