import 'package:budget_repository/budget_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../blocs/budget/budget_bloc.dart';
import '../../../blocs/transaction/category_model.dart';
import '../../../constants.dart';
import '../../components/default_button.dart';

class AddBudgetPage extends StatefulWidget {
  const AddBudgetPage({Key? key}) : super(key: key);

  @override
  State<AddBudgetPage> createState() => _AddBudgetPageState();
}

class _AddBudgetPageState extends State<AddBudgetPage> {
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(debugLabel: 'addBudgetPage_formKey');
  double _amount = 0;
  Category _category = Category.empty();
  bool _receiveAlert = false;
  double? _percent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Add new budget',
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
                      'How much do yo want to spend?',
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
                            hint: const Text('Account Type'),
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
                              _category = v!;
                            },
                          ),
                          const SizedBox(height: kMediumPadding),
                          ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 5),
                            subtitle: const Text(
                              'Receive alert when it reaches some point.',
                            ),
                            title: const Text('Receive Alert'),
                            trailing: CupertinoSwitch(
                              value: _receiveAlert,
                              activeColor: kViolet100,
                              trackColor: kViolet40,
                              onChanged: (v) => setState(() {
                                _receiveAlert = v;
                              }),
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              if (_receiveAlert == true) {
                                return SizedBox(
                                  width: double.infinity,
                                  child: Slider(
                                    max: 100,
                                    value: _percent ?? 80,
                                    onChanged: (v) => setState(
                                      () => _percent = v,
                                    ),
                                  ),
                                );
                              } else {
                                return const SizedBox.shrink();
                              }
                            },
                          ),
                          const SizedBox(height: kMediumPadding),
                          DefaultButton(
                            title: 'Continue',
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();

                                context.read<BudgetBloc>().add(
                                      BudgetEvent.addBudget(
                                        Budget(
                                          exceedLimit: _percent,
                                          amount: _amount,
                                          category: _category.name,
                                          monthApply: DateTime.now().month,
                                        ),
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
