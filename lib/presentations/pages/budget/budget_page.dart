import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'add_budget_page.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kViolet100,
        child: Column(
          children: [
            SizedBox(
              height: 140,
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
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  color: kLight80,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(kMediumPadding),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Chip(
                                    label: Row(
                                      children: const [
                                        CircleAvatar(
                                          radius: 8,
                                          backgroundColor: Colors.green,
                                        ),
                                        SizedBox(width: 6),
                                        Text('Medical'),
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/icons/warning.png',
                                    color: kRed100,
                                  ),
                                ],
                              ),
                              const Text("Remaining \$0"),
                              const Text("\$1200 of \$1000"),
                              const Text("You've exceeded the limit"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text('Let\'s make one so you in control'),
                    const Text('You don\'t have a budget.'),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(kMediumPadding),
                      child: DefaultButton(
                        key: const Key('budgetPage_addNewBudget_button'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const AddBudgetPage(),
                            ),
                          );
                        },
                        title: '+  Create a budget',
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
