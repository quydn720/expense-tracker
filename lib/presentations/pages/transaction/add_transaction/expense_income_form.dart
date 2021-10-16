import 'package:dotted_border/dotted_border.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/app_form_field.dart';
import 'package:expense_tracker/presentations/components/default_large_button.dart';
import 'package:flutter/material.dart';

class ExpenseIncomeForm extends StatelessWidget {
  const ExpenseIncomeForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kMediumPadding,
          vertical: 24,
        ),
        child: Column(
          children: [
            AppFormField(
              hint: 'Category',
              suffix: Image.asset('assets/icons/arrow-down-2.png'),
            ),
            const SizedBox(height: kMediumPadding),
            const AppFormField(
              hint: 'Description',
            ),
            const SizedBox(height: kMediumPadding),
            AppFormField(
              hint: 'Wallet',
              suffix: Image.asset('assets/icons/arrow-down-2.png'),
            ),
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
  }
}
