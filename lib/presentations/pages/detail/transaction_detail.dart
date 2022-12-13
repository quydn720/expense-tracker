import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/cubit/edit_transaction_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../constants.dart';
import '../../../di/injector.dart';

class TransactionDetailPage extends StatelessWidget {
  const TransactionDetailPage({
    super.key,
    required TransactionEntity transaction,
  }) : _transaction = transaction;

  final TransactionEntity _transaction;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<EditTransactionCubit>(),
      child: _TransactionDetail(
        transaction: _transaction,
      ),
    );
  }
}

class _TransactionDetail extends StatelessWidget {
  const _TransactionDetail({
    required TransactionEntity transaction,
  }) : _transaction = transaction;
  final TransactionEntity _transaction;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Detail Transaction',
        trailings: [
          IconButton(
            onPressed: () {
              context.read<EditTransactionCubit>();
            },
            icon: const Icon(Icons.garage),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Text(_transaction.category.name),
              Text(_transaction.amount.toString()),
              // Text(_transaction.description),
              const Text('Attachment'),
              // if (_transaction.imagesPath != null)
              //   Image.file(File(_transaction.imagesPath![0])),
              const Spacer(),
              ElevatedButton(
                onPressed: () => context.push(
                  '/transaction',
                  extra: _transaction,
                ),
                child: const Text('Edit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeleteTransactionBottomSheet extends StatelessWidget {
  const DeleteTransactionBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kMediumPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Remove this transaction?', style: title3),
            const Text(
              'Are you sure do you wanna remove this transaction?',
              style: body1,
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: const Text('No'),
                  onPressed: () => Navigator.pop(context),
                ),
                ElevatedButton(
                  child: const Text('Yes'),
                  onPressed: () {
                    context.read<EditTransactionCubit>().deleted();

                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
