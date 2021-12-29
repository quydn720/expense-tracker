import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/blocs/wallet/wallet_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
import 'package:expense_tracker/presentations/components/transaction_tile.dart';
import 'package:expense_tracker/size_config.dart';
import 'package:expense_tracker/utils/extension_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:transaction_repository/transaction_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

class WalletDetailPage extends StatelessWidget {
  const WalletDetailPage({Key? key, required Wallet wallet})
      : _wallet = wallet,
        super(key: key);
  final Wallet _wallet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account detail'),
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/edit.png'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BlocProvider.value(
                    value: context.read<WalletBloc>(),
                    child: _EditWalletPage(wallet: _wallet),
                  ),
                ),
              );
            },
          ),
          const SizedBox(width: 4),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight / 3.5,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquaredIconCard(imagePath: _wallet.iconPath, size: 60),
                    const SizedBox(height: 8),
                    Text(_wallet.name, style: title3),
                    const SizedBox(height: 4),
                    Text(_wallet.amount.toStringAsFixed(1), style: title2),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.55,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      ...context
                          .read<TransactionBloc>()
                          .transactionRepository
                          .currentTransaction
                          .where((e) => e.walletId == _wallet.id)
                          .toList()
                          .groupBy((trans) => DateTime(
                                trans.date.year,
                                trans.date.month,
                                trans.date.day,
                              ))
                          .entries
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: kMediumPadding,
                                vertical: kDefaultPadding,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.key.onlyDateFormatted,
                                    style: title3,
                                  ),
                                  const SizedBox(height: 8),
                                  ...e.value
                                      .map((e) => TransactionTile(
                                            transaction: e,
                                            canTouch: false,
                                          ))
                                      .toList(),
                                  const Divider(),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _EditWalletPage extends StatefulWidget {
  const _EditWalletPage({Key? key, required this.wallet}) : super(key: key);
  final Wallet wallet;
  @override
  State<_EditWalletPage> createState() => __EditWalletPageState();
}

class __EditWalletPageState extends State<_EditWalletPage> {
  String _selectedAccountType = '';
  double _balance = 0.0;
  String _name = '';
  String _iconPath = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _balance = widget.wallet.amount;
    _name = widget.wallet.name;
  }

  @override
  Widget build(BuildContext context) {
    final _items = ['Wallet', 'Bank', 'E-Wallet'];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Edit account',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kViolet100,
      ),
      backgroundColor: kViolet100,
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
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Balance',
                      style: title3.copyWith(color: kLight80),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      initialValue: _balance.toStringAsFixed(1),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 8),
                        isDense: true,
                        errorStyle:
                            const TextStyle(color: kRed40, fontSize: 14),
                        border: InputBorder.none,
                        hintText: '0.0',
                        hintStyle: titleX.copyWith(color: kLight80),
                        prefixIcon: Text(
                          '\$',
                          style: titleX.copyWith(color: kLight80),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      style: titleX.copyWith(color: kLight80),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onSaved: (v) {
                        setState(() => _balance = double.parse(v!));
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
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
                          TextFormField(
                            initialValue: _name,
                            decoration: const InputDecoration(hintText: 'Name'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "You must fullfill the field";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (v) => setState(
                              () => _name = v!,
                            ),
                          ),
                          const SizedBox(height: kMediumPadding),
                          DropdownButtonFormField<String>(
                            hint: const Text('Account Type'),
                            validator: (v) {
                              if (v == null) {
                                return "You must select account type";
                              } else {
                                return null;
                              }
                            },
                            items: _items
                                .map((e) =>
                                    DropdownMenuItem(value: e, child: Text(e)))
                                .toList(),
                            onChanged: (v) {
                              setState(() {
                                _selectedAccountType = v!;
                              });
                            },
                          ),
                          const SizedBox(height: kMediumPadding),
                          BankWidget(
                            selectedAccountType: _selectedAccountType,
                            onIconPathChanged: (ic) => setState(
                              () => _iconPath = ic,
                            ),
                          ),
                          const SizedBox(height: 8),
                          DefaultButton(
                            title: 'Continue',
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                debugPrint(_formKey.currentState.toString());
                                debugPrint(_balance.toString());
                                debugPrint(_name);
                                debugPrint(_selectedAccountType);
                                debugPrint(_iconPath);
                                if (_selectedAccountType == 'Wallet') {
                                  setState(() =>
                                      _iconPath = 'assets/icons/wallet-3.png');
                                }
                                context
                                    .read<WalletBloc>()
                                    .walletRepository
                                    .updateWallet(
                                      Wallet(
                                          id: widget.wallet.id,
                                          name: _name,
                                          iconPath: _iconPath,
                                          color: kViolet100,
                                          amount: _balance),
                                    );
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
    );
  }
}

class BankWidget extends StatefulWidget {
  const BankWidget({
    Key? key,
    required String selectedAccountType,
    required Function(String) onIconPathChanged,
  })  : _selectedAccountType = selectedAccountType,
        _onIconPathChanged = onIconPathChanged,
        super(key: key);
  final Function(String) _onIconPathChanged;
  final String _selectedAccountType;

  @override
  State<BankWidget> createState() => _BankWidgetState();
}

class _BankWidgetState extends State<BankWidget> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (_) {
      if ((widget._selectedAccountType == 'Bank')) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bank',
              style: body2,
            ),
            const SizedBox(height: 8),
            GridView.count(
              childAspectRatio: 1.6,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              children: List.generate(
                8,
                (index) {
                  if (index == 7) {
                    return InkWell(
                      onTap: () {}, // If have more bank to show
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffEEE5FF),
                        ),
                        child: const Center(child: Text('See other')),
                      ),
                    );
                  } else {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          i = index;
                        });
                        widget._onIconPathChanged(
                          'assets/icons/banks/${_imageAssets[index]}.png',
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        decoration: BoxDecoration(
                          border:
                              i == index ? Border.all(color: kViolet100) : null,
                          borderRadius: BorderRadius.circular(8),
                          color: i == index
                              ? const Color(0xffEEE5FF)
                              : const Color(0xffF1F1FA),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icons/banks/${_imageAssets[index]}.png',
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        );
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}

const _imageAssets = [
  'Chase',
  'BCA',
  'Citi',
  'Jago',
  'Mandiri',
  'Paypal',
  'Bank Of America',
];
