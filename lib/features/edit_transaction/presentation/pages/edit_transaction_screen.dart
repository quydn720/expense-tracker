import 'dart:io';

import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    final controller = context.read<EditTransactionBloc>();
    final isNewTransaction = context.select(
      (EditTransactionBloc value) => value.state.isNewTransaction,
    );
    final l10n = context.l10n;

    final isTransactionRepeated = context.select<EditTransactionBloc, bool>(
      (value) => value.state.isRepeated,
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.red,
      appBar: DefaultAppBar(
        elevation: 0,
        title: l10n.expense,
        color: isNewTransaction ? Colors.red : Colors.amberAccent,
        textColor: Colors.white,
      ),
      body: BlocListener<EditTransactionBloc, EditTransactionState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) async {
          if (state.status == Status.success) {
            context.pop();
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
              controller.add(EditTransactionSelectAttachmentClose());
            }
          }
        },
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      l10n.how_much,
                      style: Theme.of(context).textTheme.button?.copyWith(
                            color: const Color(0xffFCFCFC),
                          ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Text(
                          r'$',
                          style:
                              Theme.of(context).textTheme.headline1?.copyWith(
                                    color: const Color(0xffFCFCFC),
                                  ),
                        ),
                      ),
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                            color: const Color(0xffFCFCFC),
                          ),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        controller.add(EditTransactionAmountChanged(value));
                      },
                    ),
                  ],
                ),
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
                    children: [
                      const SizedBox(height: 8),
                      const _CategoryDropdown(),
                      const SizedBox(height: 16),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: context.l10n.budgetDescription,
                        ),
                        onChanged: (value) {
                          controller
                              .add(EditTransactionDescriptionChanged(value));
                        },
                      ),
                      const SizedBox(height: 16),
                      const _WalletDropdown(),
                      const SizedBox(height: 16),
                      if (context.watch<EditTransactionBloc>().state.imgFile ==
                          null) ...[
                        ElevatedButton(
                          onPressed: () => controller.add(
                            EditTransactionSelectAttachment(),
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
                        ),
                      ],
                      if (context.watch<EditTransactionBloc>().state.imgFile !=
                          null) ...[
                        Row(
                          children: [
                            Stack(
                              children: [
                                Image.file(
                                  File(
                                    context
                                        .read<EditTransactionBloc>()
                                        .state
                                        .imgFile!
                                        .path,
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
                        ),
                      ],
                      const SizedBox(height: 16),
                      const _RepeatListTile(),
                      const SizedBox(height: 8),
                      if (isTransactionRepeated) ...[
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
                                textStyle:
                                    Theme.of(context).textTheme.bodyText2,
                                elevation: 0,
                                backgroundColor: kViolet20,
                                foregroundColor:
                                    Theme.of(context).colorScheme.primary,
                                padding: EdgeInsets.zero,
                                shape: const StadiumBorder(
                                  side: BorderSide(color: Color(0xffF1F1FA)),
                                ),
                              ),
                              child: const Text('Edit'),
                            )
                            // const Chip(label: Text('Edit'))
                          ],
                        ),
                      ],
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          controller.add(SubmitNewTransaction());
                        },
                        child: Text(context.l10n.continue_str),
                      ),
                    ],
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

class _CategoryDropdown extends StatelessWidget {
  const _CategoryDropdown();

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 8,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<Category>(
          isExpanded: true,
          hint: const Align(
            alignment: Alignment.centerLeft,
            child: Text('Category'),
          ),
          value: context.watch<EditTransactionBloc>().state.category,
          items: Category.categories
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  // child: Text(e.name),
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
    final body1 = Theme.of(context).textTheme.bodyText1;

    final isRepeated = context.select<EditTransactionBloc, bool>(
      (value) => value.state.isRepeated,
    );

    return SwitchListTile.adaptive(
      value: isRepeated,
      onChanged: (_) => controller.add(EditTransactionRepeatToggled()),
      title: Text(l10n.repeat_str, style: body1),
      subtitle: Text(l10n.repeat_transaction),
      contentPadding: EdgeInsets.zero,
    );
  }
}
