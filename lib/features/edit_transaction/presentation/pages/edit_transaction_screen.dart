import 'dart:io';

import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../bloc/edit_transaction_bloc.dart';
import 'bottomsheet.dart';

class EditTransactionScreen extends StatelessWidget {
  const EditTransactionScreen({super.key, this.inititalTransaction});
  final Transaction? inititalTransaction;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditTransactionBloc(
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
      (EditTransactionBloc value) => value.state.isNewTransaction,
    );
    final controller = context.read<EditTransactionBloc>();
    final l10n = context.l10n;

    final status =
        context.select((EditTransactionBloc bloc) => bloc.state.status);
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
      body: BlocListener<EditTransactionBloc, EditTransactionState>(
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
                value: context.read<EditTransactionBloc>(),
                child: Wrap(children: const [MediaBottomSheet()]),
              ),
            );

            if (attachment == null) {
              controller.add(const EditTransactionSelectAttachmentClose());
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
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          SizedBox(height: 8),
                          _CategoryDropdown(),
                          SizedBox(height: 16),
                          _DescriptionField(),
                          SizedBox(height: 16),
                          _WalletDropdown(),
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
    final controller = context.read<EditTransactionBloc>();
    final l10n = context.l10n;
    if (context.watch<EditTransactionBloc>().state.imgFile == null) {
      return ElevatedButton(
        onPressed: () => controller.add(
          const EditTransactionSelectAttachment(),
        ),
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
                  context.read<EditTransactionBloc>().state.imgFile!.path,
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
    final controller = context.read<EditTransactionBloc>();
    final state = context.watch<EditTransactionBloc>().state;
    return ElevatedButton(
      onPressed: (state.formzStatus.isValidated)
          ? () {
              controller.add(const EditTransactionSubmitNewTransaction());
            }
          : null,
      child: Text(context.l10n.continue_str),
    );
  }
}

class _DescriptionField extends StatelessWidget {
  const _DescriptionField();

  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditTransactionBloc>();
    final state = context.watch<EditTransactionBloc>().state;
    return TextFormField(
      decoration: InputDecoration(hintText: context.l10n.budgetDescription),
      initialValue: state.description,
      onChanged: (value) {
        controller.add(
          EditTransactionDescriptionChanged(value),
        );
      },
    );
  }
}

class _AmountField extends StatelessWidget {
  const _AmountField();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = context.l10n;

    final controller = context.read<EditTransactionBloc>();
    final state = context.watch<EditTransactionBloc>().state;
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
          onChanged: (value) {
            controller.add(EditTransactionAmountChanged(value));
          },
        ),
      ],
    );
  }
}

class _CategoryDropdown extends StatelessWidget {
  const _CategoryDropdown();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EditTransactionBloc>().state;
    final errorText = state.category.invalid
        ? state.category.error.toLocalizedString(context.l10n)
        : null;

    return InputDecorator(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 8,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        errorText: errorText,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<Category>(
          isExpanded: true,
          hint: const Align(
            alignment: Alignment.centerLeft,
            child: Text('Category'),
          ),
          value: state.category.value,
          items: Category.categories
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Chip(
                    padding: const EdgeInsets.fromLTRB(4, 4, 12, 4),
                    labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                    avatar: CircleAvatar(backgroundColor: e.iconColor),
                    label: Text(e.name),
                  ),
                ),
              )
              .toList(),
          selectedItemBuilder: (context) => Category.categories
              .map(
                (e) => Chip(
                  padding: const EdgeInsets.fromLTRB(4, 4, 12, 4),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                  avatar: CircleAvatar(backgroundColor: e.iconColor),
                  label: Text(e.name),
                ),
              )
              .toList(),
          onChanged: (category) {
            if (category != null) {
              context.read<EditTransactionBloc>().add(
                    EditTransactionCategoryChanged(category),
                  );
            }
          },
        ),
      ),
    );
  }
}

class _WalletDropdown extends StatelessWidget {
  const _WalletDropdown();

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Category>(
      items: Category.categories
          .map((e) => DropdownMenuItem(value: e, child: Text(e.name)))
          .toList(),
      onChanged: (v) {},
    );
  }
}

class _RepeatListTile extends StatelessWidget {
  const _RepeatListTile();

  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditTransactionBloc>();
    final l10n = context.l10n;

    final theme = Theme.of(context);
    final bodyText1 = theme.textTheme.bodyText1;
    final primaryColor = theme.primaryColor;

    final isRepeated = context.select<EditTransactionBloc, bool>(
      (value) => value.state.isRepeated,
    );

    return Column(
      children: [
        SwitchListTile.adaptive(
          value: isRepeated,
          onChanged: (_) =>
              controller.add(const EditTransactionRepeatToggled()),
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
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(
                    'Yearly - December 29',
                    style: Theme.of(context).textTheme.caption,
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
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(
                    '29 December 2025',
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.bodyText2,
                  elevation: 0,
                  backgroundColor: kViolet20,
                  foregroundColor: Theme.of(context).colorScheme.primary,
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
