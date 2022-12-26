import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';

class CreateNewBudgetScreen extends StatelessWidget {
  const CreateNewBudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: DefaultAppBar(
        title: l10n.create_budget,
        color: primaryColor,
        textColor: Colors.white,
      ),
      body: Column(
        children: [
          const Spacer(),
          const _BudgetAmountField(),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                InputDecorator(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                  ),
                  child: Card(
                    elevation: 0,
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      minLeadingWidth: 10,
                      title: const Text('Category'),
                      leading: const CircleAvatar(radius: 24),
                      onTap: () {},
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SwitchListTile.adaptive(
                  contentPadding: EdgeInsets.zero,
                  title: Text(l10n.receive_alert_title),
                  subtitle: Text(l10n.receive_alert_subtitle),
                  onChanged: (bool value) {},
                  value: true,
                ),
                const SizedBox(height: 16),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: const LinearProgressIndicator(
                    value: 0.5,
                    minHeight: 10,
                  ),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(l10n.continue_str),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BudgetAmountField extends StatelessWidget {
  const _BudgetAmountField();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            l10n.how_much,
            style: textTheme.button?.copyWith(
              color: colorScheme.background,
            ),
          ),
          TextFormField(
            initialValue: '0',
            decoration: InputDecoration(
              border: InputBorder.none,
              // errorText: errorText,
              errorStyle: textTheme.bodyText2?.copyWith(
                color: colorScheme.onError,
              ),
            ),
            style: textTheme.headline1?.copyWith(color: colorScheme.background),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            textInputAction: TextInputAction.next,
            onChanged: (amountStr) {
              // controller.amountChanged(
              //   amountStr: amountStr,
              //   currencySymbol: numberFormat.currencySymbol,
              // );
            },
            cursorColor: colorScheme.background,
          ),
        ],
      ),
    );
  }
}
