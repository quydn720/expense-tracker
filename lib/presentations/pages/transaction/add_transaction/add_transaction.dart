import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transaction_repository/transaction_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

import '../../../../blocs/transaction/category_model.dart';
import '../../../../blocs/transaction/transaction_bloc.dart';
import '../../../../blocs/wallet/wallet_bloc.dart';
import '../../../../constants.dart';
import '../../../components/default_button.dart';

class AddTransactionPage extends StatefulWidget {
  const AddTransactionPage({Key? key}) : super(key: key);

  @override
  AddTransactionPageState createState() => AddTransactionPageState();
}

class AddTransactionPageState extends State<AddTransactionPage> {
  int _type = 0;
  double _amount = 0;
  late Wallet _wallet;
  String? _description;
  late Category _category;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: const [
              Tab(icon: Text('Expense')),
              Tab(icon: Text('Income')),
            ],
            onTap: (v) => setState(() => _type = v),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Add new budget',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: _type == 0 ? kRed100 : kGreen100,
        ),
        backgroundColor: _type == 0 ? kRed100 : kGreen100,
        body: SafeArea(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'How much?',
                        style: title3.copyWith(color: kLight80),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.only(top: 8),
                          isDense: true,
                          hintText: '0.0',
                          hintStyle: titleX.copyWith(color: kLight80),
                          prefixIcon: Text(
                            r'$',
                            style: titleX.copyWith(color: kLight80),
                          ),
                          errorStyle:
                              const TextStyle(color: kRed40, fontSize: 14),
                        ),
                        keyboardType: TextInputType.number,
                        style: titleX.copyWith(color: kLight80),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onSaved: (v) => setState(
                          () => _amount = double.parse(v!),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(kLargeRadius),
                          topRight: Radius.circular(kLargeRadius),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(kMediumPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DropdownButtonFormField<Category>(
                              hint: const Text('Category'),
                              validator: (Category? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please choose a category';
                                }
                                return null;
                              },
                              items: Category.categories
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e.name),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (v) {
                                setState(() {
                                  _category = v!;
                                });
                              },
                            ),
                            const SizedBox(height: kMediumPadding),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Description',
                              ),
                              onSaved: (v) => setState(
                                () => _description = v,
                              ),
                            ),
                            const SizedBox(height: kMediumPadding),
                            DropdownButtonFormField<Wallet>(
                              hint: const Text('Wallet (required)'),
                              validator: (Wallet? value) {
                                if (value == null) {
                                  return 'Please choose a wallet';
                                }
                                return null;
                              },
                              items: context
                                  .read<WalletBloc>()
                                  .walletRepository
                                  .currentWallets
                                  .map((e) => DropdownMenuItem(
                                      value: e, child: Text(e.name),),)
                                  .toList(),
                              onChanged: (v) {
                                setState(() {
                                  _wallet = v!;
                                });
                              },
                            ),
                            const SizedBox(height: kMediumPadding),
                            DefaultButton(
                              title: 'Continue',
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                 

                                  context.read<TransactionBloc>().add(
                                        AddTransactions(
                                          Transaction(
                                            amount: _amount,
                                            category: _category.name,
                                            type: TransactionType.values[_type],
                                            description: _description,
                                            date: DateTime.now(),
                                            walletId: _wallet.id,
                                          ),
                                        ),
                                      );
                                  final offset = (_type == 1) ? 1 : -1;

                                  context.read<WalletBloc>().add(UpdateWallet(
                                      _wallet.copyWith(
                                          amount: _wallet.amount +
                                              _amount * offset,),),);
                                  Navigator.pop(context);
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EditTransactionPage extends StatefulWidget {
  const EditTransactionPage({Key? key, required this.transaction})
      : super(key: key);
  final Transaction transaction;
  @override
  EditTransactionPageState createState() => EditTransactionPageState();
}

class EditTransactionPageState extends State<EditTransactionPage> {
  int _type = 0;
  double _amount = 0;
  late Wallet _wallet;
  String? _description;
  late Category _category;
  late DateTime _date;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _type = widget.transaction.type.index;
    _amount = widget.transaction.amount;
    _wallet = context
        .read<WalletBloc>()
        .walletRepository
        .currentWallets
        .where((e) => e.id == widget.transaction.walletId)
        .first;
    _category = Category.fromName(widget.transaction.category);
    _description = widget.transaction.description;
    _date = widget.transaction.date;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _type,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: const [
              Tab(icon: Text('Expense')),
              Tab(icon: Text('Income')),
            ],
            onTap: (v) => setState(() => _type = v),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Edit transaction',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: _type == 0 ? kRed100 : kGreen100,
        ),
        backgroundColor: _type == 0 ? kRed100 : kGreen100,
        body: SafeArea(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'How much?',
                        style: title3.copyWith(color: kLight80),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: TextFormField(
                        initialValue: _amount.toStringAsFixed(1),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.only(top: 8),
                          isDense: true,
                          hintText: '0.0',
                          hintStyle: titleX.copyWith(color: kLight80),
                          prefixIcon: Text(
                            r'$',
                            style: titleX.copyWith(color: kLight80),
                          ),
                          errorStyle:
                              const TextStyle(color: kRed40, fontSize: 14),
                        ),
                        keyboardType: TextInputType.number,
                        style: titleX.copyWith(color: kLight80),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onSaved: (v) => setState(
                          () => _amount = double.parse(v!),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(kLargeRadius),
                          topRight: Radius.circular(kLargeRadius),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(kMediumPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DropdownButtonFormField<Category>(
                              value: _category,
                              hint: const Text('Category'),
                              validator: (Category? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please choose a category';
                                }
                                return null;
                              },
                              items: Category.categories
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e.name),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (v) {
                                setState(() {
                                  _category = v!;
                                });
                              },
                            ),
                            const SizedBox(height: kMediumPadding),
                            TextFormField(
                              initialValue: _description ?? '',
                              decoration: const InputDecoration(
                                labelText: 'Description',
                              ),
                              onSaved: (v) => setState(
                                () => _description = v,
                              ),
                            ),
                            const SizedBox(height: kMediumPadding),
                            DropdownButtonFormField<Wallet>(
                              value: _wallet,
                              hint: const Text('Wallet (required)'),
                              validator: (Wallet? value) {
                                if (value == null) {
                                  return 'Please choose a wallet';
                                }
                                return null;
                              },
                              items: context
                                  .read<WalletBloc>()
                                  .walletRepository
                                  .currentWallets
                                  .map((e) => DropdownMenuItem(
                                      value: e, child: Text(e.name),),)
                                  .toList(),
                              onChanged: (v) {
                                setState(() {
                                  _wallet = v!;
                                });
                              },
                            ),
                            const SizedBox(height: kMediumPadding),
                            DefaultButton(
                              title: 'Continue',
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                 

                                  context.read<TransactionBloc>().add(
                                        UpdateTransactions(
                                          Transaction(
                                            id: widget.transaction.id,
                                            amount: _amount,
                                            category: _category.name,
                                            type: TransactionType.values[_type],
                                            description: _description,
                                            date: _date,
                                            walletId: _wallet.id,
                                          ),
                                        ),
                                      );
                                  final offsetB = _type == 1 ? 1 : -1;
                                  final offsetA = (widget.transaction.type ==
                                          TransactionType.expense)
                                      ? 1
                                      : -1;

                                  final a = _wallet.amount +
                                      widget.transaction.amount * offsetA +
                                      _amount * offsetB;

                                  context.read<WalletBloc>().add(UpdateWallet(
                                      _wallet.copyWith(amount: a),),);
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
