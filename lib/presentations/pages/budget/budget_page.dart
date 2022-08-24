import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/budget/budget_bloc.dart';
import '../../../constants.dart';
import '../../components/default_button.dart';
import 'add_budget_page.dart';
import 'budget_card.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: kViolet100,
            height: 112,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/icons/arrow-left-2.png',
                    color: Colors.white,
                  ),
                  Text(
                    'December',
                    style: title3.copyWith(color: Colors.white),
                  ),
                  Image.asset(
                    'assets/icons/arrow-right-2.png',
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          const Expanded(child: SingleChildScrollView(child: BudgetsList())),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(bottom: 32),
            color: kLight100,
            child: Padding(
              padding: const EdgeInsets.all(kMediumPadding),
              child: DefaultButton(
                key: const Key('budgetPage_addNewBudget_button'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (_) => BlocProvider.value(
                        value: context.read<BudgetBloc>(),
                        child: const AddBudgetPage(),
                      ),
                    ),
                  );
                },
                title: '+  Create a budget',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BudgetsList extends StatelessWidget {
  const BudgetsList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BudgetBloc, BudgetState>(
      builder: (context, state) {
        if (state is BudgetsLoaded) {
          if (state.budgets.isEmpty) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: const [
                  Center(
                    child: Text(
                      """You don't have any budgets.\nCreate one to manage.""",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return ColoredBox(
              color: kViolet100,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  color: kLight100,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: state.budgets
                        .map((bud) => BudgetCard(budget: bud))
                        .toList(),
                  ),
                ),
              ),
            );
          }
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
