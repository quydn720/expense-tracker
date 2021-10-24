import 'package:dotted_border/dotted_border.dart';
import 'package:expense_tracker/app/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/domain/transaction/models/category.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseIncomeForm extends StatelessWidget {
  const ExpenseIncomeForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: (context, state) {
        final bloc = context.read<TransactionFormBloc>();
        return Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kMediumPadding,
              vertical: 24,
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(label: Text('Name')),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onChanged: (v) => bloc.add(
                    TransactionFormEvent.categoryChanged(Category.empty()),
                  ),
                ),
                const SizedBox(height: kMediumPadding),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Description',
                  ),
                ),
                const SizedBox(height: kMediumPadding),
                // const SelectionFormField(title: 'Wallet'),
                const SizedBox(height: kMediumPadding),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(kDefaultRadius),
                  dashPattern: const [kDefaultPadding],
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(kDefaultRadius),
                    child: DefaultButton(
                      elevation: 0,
                      onPress: () {},
                      middle: Row(
                        children: [
                          Image.asset(
                            'assets/icons/attachment.png',
                            color: kDark25,
                          ),
                          Text(
                            'Add attachment',
                            style: title3.copyWith(color: kDark25),
                          ),
                        ],
                      ),
                      title: '',
                      isGhost: true,
                    ),
                  ),
                ),
                const SizedBox(height: kMediumPadding),
                Material(
                  borderRadius: BorderRadius.circular(kMediumPadding),
                  child: ListTile(
                    title: const Text('Repeat', style: body1),
                    subtitle: const Text('Repeat transaction'),
                    trailing: Switch(
                      value: true,
                      onChanged: (v) {},
                      activeColor: kViolet100,
                      inactiveTrackColor: kViolet20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
