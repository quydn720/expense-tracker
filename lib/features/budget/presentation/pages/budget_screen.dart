import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/budget/presentation/cubit/budget_cubit.dart';
import 'package:expense_tracker/features/budget/presentation/widgets/budget_tile.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

const createNewBudgetButtonKey =
    Key('budgetScreen_createNewButton_elevatedButton');

class BudgetScreenProvider extends StatelessWidget {
  const BudgetScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<BudgetCubit>()..loadBudgets(),
      child: const BudgetScreen(),
    );
  }
}

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCFCFC),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: BlocBuilder<BudgetCubit, BudgetState>(
                  builder: (_, state) {
                    return state.map(
                      empty: (_) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('You don’t have a budget.'),
                          Text('Let’s make one so you in control.'),
                        ],
                      ),
                      loading: (_) =>
                          const CircularProgressIndicator.adaptive(),
                      loaded: (state) {
                        return Column(
                          children: [
                            ListView.builder(
                              itemCount: state.budgets.length,
                              itemBuilder: (_, index) => BudgetTile(
                                budget: state.budgets[index],
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              ElevatedButton(
                key: createNewBudgetButtonKey,
                onPressed: () => context.push('/create-budget'),
                child: Text(context.l10n.create_budget),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
