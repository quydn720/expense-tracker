import '../../../../blocs/add_transaction/add_transaction_cubit.dart';
import '../../../../blocs/transaction/category_model.dart';
import '../../../../blocs/transaction/transaction_bloc.dart';
import '../../../../blocs/wallet/wallet_bloc.dart';
import '../../../../constants.dart';
import '../../../components/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:transaction_repository/transaction_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

class AddNewTransactionPage extends StatelessWidget {
  const AddNewTransactionPage({Key? key, Transaction? transaction})
      : _transaction = transaction,
        super(key: key);
  static String routeName = '/add_transaction';
  final Transaction? _transaction;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddTransactionCubit(),
      child: AddTransactionView(transaction: _transaction),
    );
  }
}

class AddTransactionView extends StatelessWidget {
  const AddTransactionView({
    Key? key,
    required Transaction? transaction,
  })  : _transaction = transaction,
        super(key: key);

  final Transaction? _transaction;

  @override
  Widget build(BuildContext context) {
    if (_transaction != null) {
      context.read<AddTransactionCubit>().typeChanged(_transaction!.type.index);
    }
    return BlocBuilder<AddTransactionCubit, AddTransactionState>(
      builder: (context, state) {
        return DefaultTabController(
          initialIndex: (_transaction != null) ? _transaction!.type.index : 0,
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              title: Text(
                (_transaction != null) ? 'Edit Transaction' : 'Add Transaction',
                style: const TextStyle(color: Colors.white),
              ),
              bottom: TabBar(
                tabs: const [
                  Tab(icon: Text('Expense')),
                  Tab(icon: Text('Income')),
                ],
                onTap: (v) =>
                    context.read<AddTransactionCubit>().typeChanged(v),
              ),
              backgroundColor: state.type.index == 0 ? kRed100 : kGreen100,
            ),
            backgroundColor: state.type.index == 0 ? kRed100 : kGreen100,
            body: Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: AddTransactionForm(
                  transaction: _transaction,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class AddTransactionForm extends StatelessWidget {
  const AddTransactionForm({Key? key, this.transaction}) : super(key: key);
  final Transaction? transaction;

  @override
  Widget build(BuildContext context) {
    if (transaction != null) {
      // context.read<AddTransactionCubit>().amountChanged(transaction!.amount);
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
                _AmountInput(
                  initAmount: transaction!.amount,
                ),
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
                _CategoryDropdown(
                  items: Category.categories.map((e) => e.name).toList(),
                  initCategory: transaction!.category,
                ),
                const SizedBox(height: kMediumPadding),
                _DescriptionInput(
                  initDescription: transaction!.description,
                ),
                const SizedBox(height: kMediumPadding),
                _WalletDropdown(
                  items: context
                      .read<WalletBloc>()
                      .walletRepository
                      .currentWallets,
                  initWallet: context
                      .read<WalletBloc>()
                      .walletRepository
                      .currentWallets
                      .where((e) => e.id == transaction!.walletId)
                      .first,
                ),
                const SizedBox(height: kMediumPadding),
                _SubmitButton(
                  id: transaction!.id,
                  date: transaction!.date,
                  type: transaction!.type,
                  oldAmount: transaction!.amount,
                  offset: transaction!.type == TransactionType.expense ? 1 : -1,
                ),
              ],
            ),
          ),
        ],
      );
    } else {
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
                _CategoryDropdown(
                  items: Category.categories.map((e) => e.name).toList(),
                ),
                const SizedBox(height: kMediumPadding),
                const _DescriptionInput(),
                const SizedBox(height: kMediumPadding),
                _WalletDropdown(
                  items: context
                      .read<WalletBloc>()
                      .walletRepository
                      .currentWallets,
                ),
                const SizedBox(height: kMediumPadding),
                const _SubmitButton(),
              ],
            ),
          ),
        ],
      );
    }
  }
}

class _AmountInput extends StatelessWidget {
  const _AmountInput({
    Key? key,
    this.initAmount,
  }) : super(key: key);
  final double? initAmount;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTransactionCubit, AddTransactionState>(
      buildWhen: (previous, current) => previous.amount != current.amount,
      builder: (context, state) {
        // if (initAmount != null) {
        //   context.read<AddTransactionCubit>().amountChanged(initAmount!);
        // }
        return TextFormField(
          initialValue: (initAmount != null) ? initAmount.toString() : null,
          key: const Key('addTransactionForm_description_textField'),
          keyboardType: TextInputType.number,
          onChanged: (v) {
            final amount = double.tryParse(v);
            context.read<AddTransactionCubit>().amountChanged(amount ?? 0);
          },
          style: titleX.copyWith(color: kLight80),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '0',
            hintStyle: titleX.copyWith(color: kLight80),
            prefixIcon: Text('\$', style: titleX.copyWith(color: kLight80)),
          ),
        );
      },
    );
  }
}

class _CategoryDropdown extends StatelessWidget {
  const _CategoryDropdown({
    Key? key,
    required this.items,
    this.initCategory,
  }) : super(key: key);

  final List<String> items;
  final String? initCategory;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTransactionCubit, AddTransactionState>(
      buildWhen: (previous, current) => previous.category != current.category,
      builder: (context, state) {
        if (initCategory != null) {
          context.read<AddTransactionCubit>().categoryChanged(initCategory!);
        }
        return DropdownButtonFormField<String>(
          value: initCategory,
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

class _DescriptionInput extends StatelessWidget {
  const _DescriptionInput({
    Key? key,
    this.initDescription,
  }) : super(key: key);
  final String? initDescription;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTransactionCubit, AddTransactionState>(
      buildWhen: (previous, current) =>
          previous.description != current.description,
      builder: (context, state) {
        return TextFormField(
          initialValue: initDescription,
          key: const Key('addTransactionForm_description_textField'),
          keyboardType: TextInputType.text,
          maxLines: 1,
          textInputAction: TextInputAction.done,
          onChanged: (v) {
            context.read<AddTransactionCubit>().descriptionChanged(v);
          },
          decoration: const InputDecoration(
            labelText: 'Description',
          ),
          scrollPadding: EdgeInsets.zero,
        );
      },
    );
  }
}

class _WalletDropdown extends StatelessWidget {
  const _WalletDropdown({
    Key? key,
    required this.items,
    this.initWallet,
  }) : super(key: key);

  final List<Wallet> items;
  final Wallet? initWallet;
  @override
  Widget build(BuildContext context) {
    if (initWallet != null) {
      context.read<AddTransactionCubit>().walletChanged(initWallet!);
    }
    return BlocBuilder<AddTransactionCubit, AddTransactionState>(
      buildWhen: (previous, current) => previous.wallet != current.wallet,
      builder: (context, state) {
        return DropdownButtonFormField<Wallet>(
          key: const Key('addTransactionForm_wallet_buttomFormField'),
          hint: const Text('Wallet (required)'),
          value: initWallet,
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

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({
    Key? key,
    this.id,
    this.date,
    this.type,
    this.oldAmount,
    this.offset,
  }) : super(key: key);
  final String? id;
  final DateTime? date;
  final TransactionType? type;
  final double? oldAmount;
  final int? offset;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTransactionCubit, AddTransactionState>(
      builder: (context, state) {
        return DefaultButton(
          title: (id != null) ? 'Edit' : 'Add',
          onPressed: (id != null)
              ? () {
                  context.read<TransactionBloc>().add(
                        UpdateTransactions(
                          Transaction(
                            id: id!,
                            amount: state.amount.value,
                            category: state.category,
                            type: state.type,
                            description: state.description,
                            date: date,
                            walletId: state.wallet.id,
                          ),
                        ),
                      );
                  int offsetB = state.type == TransactionType.income ? 1 : -1;
                  double a = state.wallet.amount +
                      oldAmount! * offset! +
                      state.amount.value * offsetB;
                  context
                      .read<WalletBloc>()
                      .add(UpdateWallet(state.wallet.copyWith(amount: a)));
                  Navigator.pop(context);
                  Navigator.pop(context);
                }
              : context.read<AddTransactionCubit>().state.status.isValidated
                  ? () {
                      context.read<TransactionBloc>().add(
                            AddTransactions(
                              Transaction(
                                amount: state.amount.value,
                                category: state.category,
                                type: state.type,
                                description: state.description,
                                date: DateTime.now(),
                                walletId: state.wallet.id,
                              ),
                            ),
                          );
                      int offset =
                          state.type == TransactionType.income ? 1 : -1;

                      context.read<WalletBloc>().add(UpdateWallet(state.wallet
                          .copyWith(
                              amount: state.wallet.amount +
                                  state.amount.value * offset)));
                      Navigator.pop(context);
                    }
                  : null,
        );
      },
    );
  }
}
