import 'package:dotted_border/dotted_border.dart';
import 'package:expense_tracker/app/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/domain/transaction/models/category.dart';
import 'package:expense_tracker/domain/transaction/models/value_object.dart';
import 'package:expense_tracker/domain/transaction/models/wallet.dart';
import 'package:expense_tracker/injector.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewTransactionPage extends StatelessWidget {
  const AddNewTransactionPage({Key? key}) : super(key: key);
  static String routeName = '/add_transaction';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TransactionFormBloc>(),
      child: BlocConsumer<TransactionFormBloc, TransactionFormState>(
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (f) => f.map(
                unexpected: (_) => 'unexpected',
                insufficientPermission: (_) => 'insufficientPermission',
                unableToUpdate: (_) => 'unableToUpdate',
              ),
              (r) {
                print('successfully');
                Navigator.pop(context);
              },
            ),
          );
        },
        builder: (context, state) {
          final bloc = context.read<TransactionFormBloc>();

          return Scaffold(
            backgroundColor: kRed100,
            appBar: DefaultAppBar(
              color: kRed100,
              lead: GestureDetector(
                child: Image.asset('assets/icons/arrow-left.png',
                    color: kLight100),
                onTap: () => Navigator.pop(context),
              ),
              middle: Text('Expense', style: title3.copyWith(color: kLight100)),
            ),
            body: Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(kMediumPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How much',
                            style: title3.copyWith(color: kLight80),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            style: titleX.copyWith(color: kLight80),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '0',
                              prefixIcon: Text(
                                '\$',
                                style: titleX.copyWith(color: kLight80),
                              ),
                              hintStyle: titleX.copyWith(color: kLight80),
                            ),
                            textInputAction: TextInputAction.next,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            onChanged: (v) => bloc.add(
                              TransactionFormEvent.amountChanged(v),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: kLight100,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(kLargePadding),
                          topRight: Radius.circular(kLargePadding),
                        ),
                      ),
                      child: Form(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kMediumPadding,
                            vertical: 24,
                          ),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                    label: Text('Category')),
                                textInputAction: TextInputAction.next,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                                onChanged: (v) => bloc.add(
                                  TransactionFormEvent.categoryChanged(
                                      Category.empty()),
                                ),
                              ),
                              const SizedBox(height: kMediumPadding),
                              TextFormField(
                                decoration: const InputDecoration(
                                    label: Text('Description')),
                                textInputAction: TextInputAction.next,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                                onChanged: (v) => bloc.add(
                                  TransactionFormEvent.descriptionChanged(v),
                                ),
                              ),
                              const SizedBox(height: kMediumPadding),
                              TextFormField(
                                decoration: const InputDecoration(
                                    label: Text('Wallet')),
                                textInputAction: TextInputAction.next,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                                onChanged: (v) => bloc.add(
                                  TransactionFormEvent.walletChanged(
                                    Wallet.empty(),
                                  ),
                                ),
                              ),
                              const SizedBox(height: kMediumPadding),
                              DottedBorder(
                                borderType: BorderType.RRect,
                                radius: const Radius.circular(kDefaultRadius),
                                dashPattern: const [kDefaultPadding],
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(kDefaultRadius),
                                  child: DefaultButton(
                                    elevation: 0,
                                    onPress: () {},
                                    middle: Row(
                                      children: [
                                        Image.asset(
                                          'assets/icons/attachment.png',
                                          color: kDark25,
                                        ),
                                        Text(
                                          'Add attachment',
                                          style:
                                              title3.copyWith(color: kDark25),
                                        ),
                                      ],
                                    ),
                                    title: '',
                                    isGhost: true,
                                  ),
                                ),
                              ),
                              const SizedBox(height: kMediumPadding),
                              Material(
                                borderRadius:
                                    BorderRadius.circular(kMediumPadding),
                                child: ListTile(
                                  title: const Text('Repeat', style: body1),
                                  subtitle: const Text('Repeat transaction'),
                                  trailing: Switch(
                                    value: true,
                                    onChanged: (v) {},
                                    activeColor: kViolet100,
                                    inactiveTrackColor: kViolet20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: kLight100,
                      child: Padding(
                        padding: const EdgeInsets.all(kMediumPadding),
                        child: DefaultButton(
                          onPress: () {
                            bloc.add(const CommitPressed());
                          },
                          title: 'Continue',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
