import 'package:expense_tracker/blocs/add_transaction/add_transaction_cubit.dart';
import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/blocs/wallet/wallet_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:transaction_repository/transaction_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

class AddNewTransactionPage extends StatelessWidget {
  const AddNewTransactionPage({Key? key}) : super(key: key);
  static String routeName = '/add_transaction';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddTransactionCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Expense', style: TextStyle(color: Colors.white)),
          backgroundColor: kRed100,
        ),
        backgroundColor: kRed100,
        body: const Align(
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            child: AddTransactionForm(),
          ),
        ),
      ),
    );
  }
}

class AddTransactionForm extends StatelessWidget {
  const AddTransactionForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      'Food',
      'Shopping',
      'Family',
      'Some things',
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How much?',
                style: title3.copyWith(color: kLight80),
              ),
              const _AmountInput(),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(kMediumPadding),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(kLargeRadius),
              topRight: Radius.circular(kLargeRadius),
            ),
          ),
          child: Column(
            children: [
              _CategoryDropdown(items: items),
              const _DescriptionInput(),
              _WalletDropdown(
                  items: context
                      .read<WalletBloc>()
                      .walletRepository
                      .currentWallets),
              const _SubmitButton(),
            ],
          ),
        ),
      ],
    );
  }
}

class _AmountInput extends StatelessWidget {
  const _AmountInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTransactionCubit, AddTransactionState>(
      buildWhen: (previous, current) => previous.amount != current.amount,
      builder: (context, state) {
        return TextField(
          key: const Key('addTransactionForm_description_textField'),
          keyboardType: TextInputType.number,
          onChanged: (v) {
            final amount = double.tryParse(v);
            context.read<AddTransactionCubit>().amountChanged(amount ?? 0);
          },
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '0',
            hintStyle: titleX.copyWith(color: kLight80),
            prefixIcon: Text('\$', style: titleX.copyWith(color: kLight80)),
            helperText: '',
          ),
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTransactionCubit, AddTransactionState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return DefaultButton(
          title: 'Add',
          onPressed:
              context.read<AddTransactionCubit>().state.status.isValidated
                  ? () {
                      final addBloc = context.read<AddTransactionCubit>().state;
                      context.read<TransactionBloc>().add(
                            AddTransactions(
                              Transaction(
                                amount: addBloc.amount.value,
                                category: addBloc.category,
                                type: TransactionType.expense,
                                wallet: addBloc.wallet!.name,
                                description: addBloc.description,
                                date: DateTime.now(),
                              ),
                            ),
                          );
                      Navigator.pop(context);
                    }
                  : null,
        );
      },
    );
  }
}

class _WalletDropdown extends StatelessWidget {
  const _WalletDropdown({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Wallet> items;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTransactionCubit, AddTransactionState>(
      buildWhen: (previous, current) => previous.wallet != current.wallet,
      builder: (context, state) {
        return DropdownButtonFormField<Wallet>(
          key: const Key('addTransactionForm_wallet_buttomFormField'),
          hint: const Text('Wallet'),
          onChanged: (v) {
            context.read<AddTransactionCubit>().walletChanged(v!);
          },
          items: items
              .map((e) => DropdownMenuItem(value: e, child: Text(e.name)))
              .toList(),
          icon: Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding),
            child: Image.asset(
              'assets/icons/arrow-down-2.png',
              color: kViolet100,
            ),
          ),
        );
      },
    );
  }
}

class _DescriptionInput extends StatelessWidget {
  const _DescriptionInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTransactionCubit, AddTransactionState>(
      buildWhen: (previous, current) =>
          previous.description != current.description,
      builder: (context, state) {
        return TextField(
          key: const Key('addTransactionForm_description_textField'),
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          onChanged: (v) {
            context.read<AddTransactionCubit>().descriptionChanged(v);
          },
          decoration: const InputDecoration(
            labelText: 'Description',
            helperText: '',
          ),
          scrollPadding: EdgeInsets.zero,
        );
      },
    );
  }
}

class _CategoryDropdown extends StatelessWidget {
  const _CategoryDropdown({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTransactionCubit, AddTransactionState>(
      buildWhen: (previous, current) => previous.category != current.category,
      builder: (context, state) {
        return DropdownButtonFormField<String>(
          key: const Key('addTransactionForm_category_buttomFormField'),
          onChanged: (v) {
            context.read<AddTransactionCubit>().categoryChanged(v!);
          },
          hint: const Text('Category'),
          items: items
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          icon: Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding),
            child: Image.asset(
              'assets/icons/arrow-down-2.png',
              color: kViolet100,
            ),
          ),
        );
      },
    );
  }
}
