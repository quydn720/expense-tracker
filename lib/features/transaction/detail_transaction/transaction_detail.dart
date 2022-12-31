import 'dart:io';

import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/common/common_bottom_sheet.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/bloc/transaction_bloc.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

const editTransactionButtonKey =
    Key('transactionDetailScreen_edit_elevatedButton');
const deleteTransactionButtonKey =
    Key('transactionDetailScreen_delete_iconButton');

class TransactionDetailProvider extends StatelessWidget {
  const TransactionDetailProvider({
    super.key,
    required TransactionEntity transaction,
  }) : _transaction = transaction;

  final TransactionEntity _transaction;

  @override
  Widget build(BuildContext context) {
    return TransactionDetailScreen(transaction: _transaction);
  }
}

class TransactionDetailScreen extends StatelessWidget {
  const TransactionDetailScreen({
    super.key,
    required TransactionEntity transaction,
  }) : _transaction = transaction;
  final TransactionEntity _transaction;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final heading = Theme.of(context).textTheme.bodyText1?.copyWith(
          color: const Color(0xff91919F),
        );

    final numberFormatter = context.read<AppBloc>().state.numberFormatter;
    final textTheme = Theme.of(context).textTheme;

    final s16w600 = textTheme.bodyText2?.copyWith(fontWeight: FontWeight.w600);
    return Scaffold(
      appBar: DefaultAppBar(
        title: l10n.detail_transaction,
        trailings: [
          IconButton(
            key: deleteTransactionButtonKey,
            icon: const FaIcon(FontAwesomeIcons.trash),
            onPressed: () async {
              final controller = context.read<TransactionBloc>();
              await showModalBottomSheet<String>(
                context: context,
                builder: (_) => BlocProvider.value(
                  value: controller,
                  child: YesNoBottomSheet(
                    confirmCallback: () {
                      context.go('/transactions');
                      controller.add(
                        TransactionOverviewTransactionDeleted(_transaction),
                      );
                    },
                    title: l10n.delete_transaction,
                    subtitle: l10n.delete_transaction_confirmation,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  numberFormatter.format(_transaction.amount),
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  _transaction.category.name,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  _transaction.dateCreatedStr,
                  style: textTheme.subtitle2,
                ),
              ),
              const Divider(thickness: 2),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Type', style: textTheme.subtitle2),
                      const SizedBox(height: 4),
                      Text(
                        _transaction.category.categoryType.name,
                        style: s16w600,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Category', style: textTheme.subtitle2),
                      const SizedBox(height: 4),
                      Text(_transaction.category.name, style: s16w600),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Wallet', style: textTheme.subtitle2),
                      const SizedBox(height: 4),
                      Text(_transaction.wallet?.name ?? '', style: s16w600),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const Divider(thickness: 2),
              Flexible(
                child: ListView(
                  children: [
                    Text(l10n.description, style: heading),
                    if (_transaction.description.haveValue) ...[
                      Text(_transaction.description!, softWrap: true),
                    ],
                    const SizedBox(height: 16),
                    Text(l10n.attachment, style: heading),
                    if (_transaction.file != null) ...[
                      const SizedBox(height: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.file(File(_transaction.file!.path)),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                key: editTransactionButtonKey,
                onPressed: () {
                  context.push('/transaction', extra: _transaction);
                },
                child: Text(l10n.edit),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension StringX on String? {
  bool get isNullOrEmpty => this?.isEmpty ?? true;
  bool get haveValue => !isNullOrEmpty;
}
