import 'dart:io';

import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/presentation/pages/select_category_view.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/cubit/edit_transaction_cubit.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

import 'bottomsheet.dart';

class EditTransactionScreen extends StatelessWidget {
  const EditTransactionScreen({super.key, this.inititalTransaction});
  final TransactionEntity? inititalTransaction;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditTransactionCubit(
        getIt(),
        getIt(),
        initialTransaction: inititalTransaction,
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
      (EditTransactionCubit value) => value.state.isNewTransaction,
    );
    final controller = context.read<EditTransactionCubit>();
    final l10n = context.l10n;

    final status =
        context.select((EditTransactionCubit bloc) => bloc.state.status);
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
      body: BlocListener<EditTransactionCubit, EditTransactionState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) async {
          if (state.status == Status.success) {
            context.go('/');
            await showDialog<void>(
              context: context,
              builder: (_) {
                return const Center(
                  child: Text('Transaction has been successfully added'),
                );
              },
            );
          } else if (state.status == Status.selectImage) {
            final attachment = await showModalBottomSheet<String>(
              isScrollControlled: true,
              backgroundColor: Colors.white,
              context: context,
              useRootNavigator: true,
              builder: (_) => BlocProvider.value(
                value: context.read<EditTransactionCubit>(),
                child: Wrap(children: const [MediaBottomSheet()]),
              ),
            );

            if (attachment == null) {
              controller.attachmentSelectionClosed();
            }
          }
        },
        child: (status == Status.loading)
            ? const Center(child: Text('loading'))
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: _AmountField(),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          SizedBox(height: 8),
                          _CategoryField(),
                          SizedBox(height: 16),
                          _DescriptionField(),
                          SizedBox(height: 16),
                          _WalletDropdown(),
                          SizedBox(height: 16),
                          _DateField(),
                          SizedBox(height: 16),
                          _ImagePicker(),
                          SizedBox(height: 16),
                          _RepeatListTile(),
                          SizedBox(height: 24),
                          _SubmitButton(),
                          SizedBox(height: 16),
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

class _ImagePicker extends StatelessWidget {
  const _ImagePicker();
  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditTransactionCubit>();
    final l10n = context.l10n;
    if (context.watch<EditTransactionCubit>().state.imgFile == null) {
      return ElevatedButton(
        onPressed: controller.attachmentSelectionPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xff91919F),
          shape: const StadiumBorder(
            side: BorderSide(color: Color(0xffF1F1FA)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.attachmentSvg.svg(
              color: const Color(0xff91919F),
            ),
            Text(l10n.add_attactment),
          ],
        ),
      );
    } else {
      return Row(
        children: [
          Stack(
            children: [
              Image.file(
                File(
                  context.read<EditTransactionCubit>().state.imgFile!.path,
                ),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              const Positioned(
                right: 0,
                child: Icon(Icons.crop_square_sharp),
              ),
            ],
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
        fillColor: Colors.white,
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
    final textTheme = Theme.of(context).textTheme;
    final l10n = context.l10n;

    final controller = context.read<EditTransactionCubit>();
    final state = context.watch<EditTransactionCubit>().state;
    final errorText = state.amount.invalid
        ? state.amount.error.toLocalizedString(l10n)
        : null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          l10n.how_much,
          style: textTheme.button?.copyWith(
            color: const Color(0xffFCFCFC),
          ),
        ),
        TextFormField(
          initialValue: state.amount.value.toString(),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Text(
              r'$',
              style: textTheme.headline1?.copyWith(
                color: const Color(0xffFCFCFC),
              ),
            ),
            errorText: errorText,
            errorStyle: textTheme.bodyText2?.copyWith(color: Colors.white),
          ),
          style: textTheme.headline1?.copyWith(
            color: const Color(0xffFCFCFC),
          ),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          textInputAction: TextInputAction.next,
          onChanged: controller.amountChanged,
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
          child: SelectCategoryProvider(),
        ),
      );
      if (category != null) {
        addEvent(category);
      } else {
        addEvent(category);
      }
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
            child: Icon(icon, color: category?.color ?? Colors.grey),
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
          title: Text(date.toString(), style: theme.textTheme.bodyText1),
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

    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 24,
        ),
        hintText: context.l10n.wallet,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      onChanged: controller.descriptionChanged,
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
                    'Frequency',
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
                    'End After',
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
                  elevation: 0,
                  backgroundColor: primaryColor.withOpacity(0.2),
                  foregroundColor: primaryColor,
                  splashFactory: NoSplash.splashFactory,
                  padding: EdgeInsets.zero,
                  shape: const StadiumBorder(
                    side: BorderSide(
                      color: Color(0xffF1F1FA),
                    ),
                  ),
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
