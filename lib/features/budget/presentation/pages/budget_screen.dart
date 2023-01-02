import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';
import 'package:expense_tracker/features/budget/domain/usecases/get_all_budget.dart';
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
    return RepositoryProvider(
      create: (_) => getIt<IBudgetRepository>(),
      child: Builder(
        builder: (context) {
          final budgetRepo = context.read<IBudgetRepository>();

          return BlocProvider(
            create: (_) => BudgetCubit(
              GetAllBudgets(budgetRepo),
              getIt(),
              budgetRepo,
            )..requestedSubscription(),
            child: const BudgetScreen(),
          );
        },
      ),
    );
  }
}

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.budgets.length,
                          itemBuilder: (context, index) => BudgetTile(
                            budget: state.budgets[index],
                            onTap: () {
                              context.push(
                                '/create-budget',
                                extra: {
                                  'repo': context.read<IBudgetRepository>(),
                                  'initBudget': state.budgets[index],
                                },
                              );
                            },
                          ),
                        );
                      },
                      error: (e) => Center(child: Text('Error $e')),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                key: createNewBudgetButtonKey,
                onPressed: () => context.push(
                  '/create-budget',
                  extra: {'repo': context.read<IBudgetRepository>()},
                ),
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
