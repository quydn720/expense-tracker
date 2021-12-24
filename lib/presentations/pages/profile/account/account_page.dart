import 'package:wallet_repository/wallet_repository.dart';

import '../../../../blocs/wallet/wallet_bloc.dart';
import '../../../../constants.dart';
import '../../../components/default_button.dart';
import '../../../components/squared_icon_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);
  static String routeName = '/account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: const [
          _StackImageAmount(),
          Divider(),
          _WalletList(),
          _AddNewWalletButton(),
        ],
      ),
    );
  }
}

class _WalletList extends StatelessWidget {
  const _WalletList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _wallets = context.read<WalletBloc>().walletRepository.currentWallets;
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: _wallets.length,
        itemBuilder: (context, index) {
          final wallet = _wallets[index];
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kMediumPadding,
                vertical: kDefaultPadding,
              ),
              child: Row(
                children: [
                  SquaredIconCard(
                    imagePath: wallet.iconPath.toString().replaceAll('\'', ''),
                    size: 48,
                    color: const Color(0xffF1F1FA),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: kMediumPadding),
                      child: Text(
                        wallet.name,
                        style: title3.copyWith(color: kDark75),
                      ),
                    ),
                  ),
                  Text(
                    '\$ ${wallet.amount.toStringAsFixed(1)}',
                    style: title3.copyWith(color: kDark75),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
          endIndent: kLargePadding,
          indent: kLargePadding,
        ),
      ),
    );
  }
}

class _AddNewWalletButton extends StatelessWidget {
  const _AddNewWalletButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kMediumPadding),
      child: DefaultButton(
        key: const Key('accountPage_addNewWallet_button'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddNewWalletPage()),
          );
        },
        title: '+  Add new wallet',
      ),
    );
  }
}

class _StackImageAmount extends StatelessWidget {
  const _StackImageAmount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _total = context.read<WalletBloc>().walletRepository.totalAmount;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Column(
          children: [
            const Text('Account Balance', style: body3),
            const SizedBox(height: kDefaultPadding),
            Text(
              _total.toStringAsFixed(1),
              style: title1,
            ),
          ],
        ),
        Image.asset(
          'assets/images/BG.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
      ],
    );
  }
}

class AddNewWalletPage extends StatefulWidget {
  const AddNewWalletPage({Key? key}) : super(key: key);

  @override
  State<AddNewWalletPage> createState() => _AddNewWalletPageState();
}

class _AddNewWalletPageState extends State<AddNewWalletPage> {
  String _selectedAccountType = '';
  double _balance = 0.0;
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
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Balance',
                      style: title3.copyWith(color: kLight80),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
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
                                    .addNewWallet(
                                      Wallet(
                                          name: _name,
                                          iconPath: _iconPath,
                                          color: kViolet100,
                                          amount: _balance),
                                    );
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

class BankWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Builder(builder: (_) {
      if (!(_selectedAccountType == 'Wallet')) {
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
                      onTap: () {},
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
                      onTap: () => _onIconPathChanged(
                        'assets/icons/banks/${_imageAssets[index]}.png',
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffEEE5FF),
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
