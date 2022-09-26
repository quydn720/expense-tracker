import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet_repository/wallet_repository.dart';

import '../../../../blocs/wallet/wallet_bloc.dart';
import '../../../../constants.dart';

class AddNewWalletPage extends StatefulWidget {
  const AddNewWalletPage({super.key});

  @override
  State<AddNewWalletPage> createState() => _AddNewWalletPageState();
}

class _AddNewWalletPageState extends State<AddNewWalletPage> {
  String _selectedAccountType = '';
  double _balance = 0;
  String _name = '';
  String _iconPath = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final _items = ['Wallet', 'Bank', 'E-Wallet'];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Add new account',
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
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Balance',
                      style: title3.copyWith(color: kLight80),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 8),
                        isDense: true,
                        errorStyle:
                            const TextStyle(color: kRed40, fontSize: 14),
                        border: InputBorder.none,
                        hintText: '0.0',
                        hintStyle: titleX.copyWith(color: kLight80),
                        prefixIcon: Text(
                          r'$',
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
                          TextFormField(
                            decoration: const InputDecoration(hintText: 'Name'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'You must fullfill the field';
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
                            items: _items
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  ),
                                )
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
                          ElevatedButton(
                            child: const Text('Continue'),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();

                                if (_selectedAccountType == 'Wallet') {
                                  setState(
                                    () =>
                                        _iconPath = 'assets/icons/wallet-3.png',
                                  );
                                }
                                context
                                    .read<WalletBloc>()
                                    .walletRepository
                                    .addNewWallet(
                                      Wallet(
                                        name: _name,
                                        iconPath: _iconPath,
                                        color: kViolet100,
                                        amount: _balance,
                                      ),
                                    );
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
    super.key,
    required String selectedAccountType,
    required void Function(String) onIconPathChanged,
  })  : _selectedAccountType = selectedAccountType,
        _onIconPathChanged = onIconPathChanged;
  final void Function(String) _onIconPathChanged;
  final String _selectedAccountType;

  @override
  State<BankWidget> createState() => _BankWidgetState();
}

class _BankWidgetState extends State<BankWidget> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (_) {
        if (widget._selectedAccountType == 'Bank') {
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
                            border: i == index
                                ? Border.all(color: kViolet100)
                                : null,
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
      },
    );
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
