import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';

import 'expense_income_form.dart';

class AddNewTransactionPage extends StatelessWidget {
  const AddNewTransactionPage({Key? key}) : super(key: key);
  static String routeName = '/add_transaction';
  @override
  Widget build(BuildContext context) {
    return const AddTransactionWidget(
      title: 'Expense',
      color: kRed100,
      child: ExpenseIncomeForm(),
    );
  }
}

class AddTransactionWidget extends StatelessWidget {
  const AddTransactionWidget({
    Key? key,
    this.color,
    required this.title,
    this.child,
  }) : super(key: key);
  final Color? color;
  final String title;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: DefaultAppBar(
        color: kRed100,
        lead: GestureDetector(
          child: Image.asset('assets/icons/arrow-left.png', color: kLight100),
          onTap: () => Navigator.pop(context),
        ),
        middle: Text(title, style: title3.copyWith(color: kLight100)),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(kMediumPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How much',
                      style: title3.copyWith(color: kLight80),
                    ),
                    Text(
                      '\$5000',
                      style: titleX.copyWith(color: kLight80),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: kLight100,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kLargePadding),
                    topRight: Radius.circular(kLargePadding),
                  ),
                ),
                child: child,
              ),
              Container(
                color: kLight100,
                child: Padding(
                  padding: const EdgeInsets.all(kMediumPadding),
                  child: DefaultButton(
                    onPress: () {},
                    title: 'Continue',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
