import 'dart:io';

import 'package:badges/badges.dart';
import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/presentation/pages/select_category_view.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/cubit/edit_transaction_cubit.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/pages/bottomsheet.dart';
import 'package:expense_tracker/features/wallet/domain/entities/wallet.dart';
import 'package:expense_tracker/features/wallet/presentation/pages/select_wallet_view.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class EditTransactionScreen extends StatelessWidget {
  const EditTransactionScreen({super.key, this.inititalTransaction});
  final TransactionEntity? inititalTransaction;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<EditTransactionCubit>(
        param1: inititalTransaction,
      ),
      child: const _EditTransaction(),
    );
  }
}

class _EditTransaction extends StatelessWidget {
  const _EditTransaction();

  @override
  Widget build(BuildContext context) {
    final isNewTransaction = context.select(
      (EditTransactionCubit cubit) => cubit.state.isNewTransaction,
    );
    final status =
        context.select((EditTransactionCubit bloc) => bloc.state.formzStatus);

    final controller = context.read<EditTransactionCubit>();
    final l10n = context.l10n;
    final pageTitle =
        isNewTransaction ? l10n.add_new_transaction : l10n.edit_transaction;
    final primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      appBar: DefaultAppBar(
        title: pageTitle,
        color: primaryColor,
        textColor: Colors.white,
      ),
      body: SafeArea(
        bottom: false,
        child: BlocListener<EditTransactionCubit, EditTransactionState>(
          listenWhen: (p, c) {
            final mediaBottomSheetStateChanged =
                p.showMediaBottomSheet != c.showMediaBottomSheet;
            final formStatusChanged = p.formzStatus != c.formzStatus;

            return formStatusChanged || mediaBottomSheetStateChanged;
          },
          listener: (_, state) async {
            if (state.formzStatus == FormzStatus.submissionSuccess) {
              final router = GoRouter.of(context);
              await showDialog<void>(
                context: _,
                builder: (_) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    titleTextStyle: Theme.of(context).textTheme.subtitle2,
                    title: Column(
                      children: [
                        Assets.icons.success.svg(
                          height: 48,
                          width: 48,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Transaction has been successfully added',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              );
              router.pop();
            }
            if (state.showMediaBottomSheet) {
              final attachment = await showModalBottomSheet<String>(
                isScrollControlled: true,
                backgroundColor: Colors.white,
                context: context,
                useRootNavigator: true,
                builder: (_) => BlocProvider.value(
                  value: controller,
                  child: Wrap(children: const [MediaBottomSheet()]),
                ),
              );

              if (attachment == null) {
                controller.closeMediaBottomSheet();
              }
            }
          },
          child: (status == FormzStatus.submissionInProgress)
              ? const Center(child: Text('loading'))
              : const MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: _AmountField(),
        ),
        const SizedBox(height: 8),
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: ListView(
              children: const [
                _CategoryField(),
                SizedBox(height: 16),
                _WalletDropdown(),
                SizedBox(height: 16),
                _DescriptionField(),
                SizedBox(height: 16),
                _DateField(),
                SizedBox(height: 16),
                _ImagePicker(),
                SizedBox(height: 16),
                _RepeatListTile(),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          color: Theme.of(context).canvasColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              _SubmitButton(),
              SizedBox(height: 48),
            ],
          ),
        ),
      ],
    );
  }
}

class _ImagePicker extends StatelessWidget {
  const _ImagePicker();
  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditTransactionCubit>();
    final l10n = context.l10n;
    final imageFile = context.select(
      (EditTransactionCubit cubit) => cubit.state.imgFile,
    );

    if (imageFile == null) {
      return ElevatedButton(
        onPressed: controller.openMediaBottomSheet,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.attachmentSvg.svg(
              color: const Color(0xff91919F),
            ),
            Text(l10n.add_attachment),
          ],
        ),
      );
    } else {
      return Row(
        children: [
          Badge(
            padding: const EdgeInsets.all(8),
            badgeColor: const Color(0x52000000),
            badgeContent: InkWell(
              child: const FaIcon(
                FontAwesomeIcons.xmark,
                color: Colors.white,
                size: 16,
              ),
              onTap: () {
                controller.attachmentSelectionDone(null);
              },
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.file(
                File(controller.state.imgFile!.path),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      );
    }
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EditTransactionCubit>().state;

    void _submit() {
      context.read<EditTransactionCubit>().submitTransaction();
    }

    return ElevatedButton(
      onPressed: (state.formzStatus.isValidated) ? _submit : null,
      child: Text(context.l10n.continue_str),
    );
  }
}

class _DescriptionField extends StatelessWidget {
  const _DescriptionField();

  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditTransactionCubit>();
    final description = controller.state.description;

    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 24,
        ),
        hintText: context.l10n.note,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        filled: true,
      ),
      initialValue: description,
      onChanged: controller.descriptionChanged,
    );
  }
}

class _AmountField extends StatelessWidget {
  const _AmountField();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final l10n = context.l10n;

    // only rebuild when the amount state changes
    final amountState = context.select(
      (EditTransactionCubit cubit) => cubit.state.amount,
    );

    final errorText =
        amountState.invalid ? amountState.error.toLocalizedString(l10n) : null;

    final appState = context.read<AppBloc>().state;

    final numberFormat = appState.numberFormatter;

    final controller = context.read<EditTransactionCubit>();
    final amount = numberFormat.format(
      controller.state.amountDouble,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          l10n.how_much,
          style: textTheme.button?.copyWith(color: colorScheme.background),
        ),
        TextFormField(
          initialValue: amount,
          decoration: InputDecoration(
            border: InputBorder.none,
            errorText: errorText,
            errorStyle: textTheme.bodyText2?.copyWith(
              color: colorScheme.onError,
            ),
          ),
          style: textTheme.headline1?.copyWith(color: colorScheme.background),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          textInputAction: TextInputAction.next,
          onChanged: (amountStr) {
            controller.amountChanged(
              amountStr: amountStr,
              currencySymbol: numberFormat.currencySymbol,
            );
          },
          cursorColor: colorScheme.background,
        ),
      ],
    );
  }
}

class _CategoryField extends StatelessWidget {
  const _CategoryField();

  @override
  Widget build(BuildContext context) {
    final state = context.select<EditTransactionCubit, CategoryField>(
      (value) => value.state.category,
    );

    void addEvent(CategoryEntity? category) {
      final controller = context.read<EditTransactionCubit>();

      return controller.categoryChanged(category);
    }

    Future<void> _onTap() async {
      final category = await showModalBottomSheet<CategoryEntity?>(
        context: context,
        isScrollControlled: true,
        useRootNavigator: true,
        builder: (_) => const FractionallySizedBox(
          heightFactor: 0.9,
          child: SelectCategoryProvider(child: SelectCategoryView()),
        ),
      );

      addEvent(category);
    }

    final category = state.value;
    final icon = category?.icon ?? FontAwesomeIcons.cubes;

    final errorText =
        state.invalid ? state.error.toLocalizedString(context.l10n) : null;

    final theme = Theme.of(context);
    return InputDecorator(
      decoration: InputDecoration(
        errorText: errorText,
        contentPadding: EdgeInsets.zero,
        border: InputBorder.none,
      ),
      child: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 12,
          ),
          minLeadingWidth: 10,
          title: Text(
            category?.name ?? context.l10n.category,
            style: theme.textTheme.bodyText1,
          ),
          leading: CircleAvatar(
            radius: 24,
            backgroundColor: category?.backgroundColor ??
                theme.primaryColor.withOpacity(0.2),
            child: Icon(
              icon,
              color: category?.color.withOpacity(1) ?? Colors.grey,
            ),
          ),
          onTap: _onTap,
        ),
      ),
    );
  }
}

class _DateField extends StatelessWidget {
  const _DateField();

  @override
  Widget build(BuildContext context) {
    final date = context.select<EditTransactionCubit, DateTime>(
      (value) => value.state.date,
    );

    Future<void> _onTap() async {
      final controller = context.read<EditTransactionCubit>();
      final date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2050),
      );

      return controller.dateChanged(date);
    }

    final theme = Theme.of(context);
    return InputDecorator(
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.zero,
        border: InputBorder.none,
      ),
      child: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 12,
          ),
          minLeadingWidth: 10,
          title: Text(
            DateFormat.yMMMMEEEEd().format(date),
            style: theme.textTheme.bodyText1,
          ),
          leading: CircleAvatar(
            radius: 24,
            backgroundColor: theme.primaryColor.withOpacity(0.2),
            child: Icon(
              FontAwesomeIcons.calendarCheck,
              color: theme.primaryColor,
            ),
          ),
          onTap: _onTap,
        ),
      ),
    );
  }
}

class _WalletDropdown extends StatelessWidget {
  const _WalletDropdown();

  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditTransactionCubit>();
    final wallet =
        context.watch<EditTransactionCubit>().state.wallet.value?.name ??
            context.l10n.wallet;
    final theme = Theme.of(context);

    Future<void> _onTap() async {
      final wallet = await showModalBottomSheet<Wallet?>(
        context: context,
        isScrollControlled: true,
        useRootNavigator: true,
        builder: (_) => const FractionallySizedBox(
          heightFactor: 0.9,
          child: SelectWalletProvider(),
        ),
      );

      controller.walletChanged(wallet);
    }

    final state = context.watch<EditTransactionCubit>().state.wallet;
    final errorText =
        state.invalid ? state.error.toLocalizedString(context.l10n) : null;
    final primary = Theme.of(context).primaryColor;

    return InputDecorator(
      decoration: InputDecoration(
        errorText: errorText,
        contentPadding: EdgeInsets.zero,
        border: InputBorder.none,
      ),
      child: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 12,
          ),
          minLeadingWidth: 10,
          title: Text(wallet, style: theme.textTheme.bodyText1),
          leading: CircleAvatar(
            radius: 24,
            backgroundColor: primary.withOpacity(0.2),
            child: Icon(FontAwesomeIcons.wallet, color: primary),
          ),
          onTap: _onTap,
        ),
      ),
    );
  }
}

class _RepeatListTile extends StatelessWidget {
  const _RepeatListTile();

  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditTransactionCubit>();
    final l10n = context.l10n;

    final theme = Theme.of(context);
    final bodyText1 = theme.textTheme.bodyText1;
    final primaryColor = theme.primaryColor;

    final isRepeated = context.select<EditTransactionCubit, bool>(
      (value) => value.state.isRepeated,
    );

    return Column(
      children: [
        SwitchListTile.adaptive(
          value: isRepeated,
          onChanged: (_) => controller.repeatedButtonToggled(),
          title: Text(l10n.repeat_str, style: bodyText1),
          subtitle: Text(l10n.repeat_transaction),
          contentPadding: EdgeInsets.zero,
          activeColor: primaryColor,
          inactiveTrackColor: primaryColor.withOpacity(0.2),
        ),
        if (isRepeated) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.frequency,
                    style: theme.textTheme.subtitle2,
                  ),
                  Text(
                    'Yearly - December 29',
                    style: theme.textTheme.caption,
                  )
                ],
              ),
              const SizedBox(width: 8),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.end_after,
                    style: theme.textTheme.subtitle2,
                  ),
                  Text(
                    '29 December 2025',
                    style: theme.textTheme.caption,
                  )
                ],
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  textStyle: theme.textTheme.bodyText2,
                  splashFactory: NoSplash.splashFactory,
                  padding: EdgeInsets.zero,
                ),
                child: const Text('Edit'),
              )
            ],
          ),
        ],
      ],
    );
  }
}
