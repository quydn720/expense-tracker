import 'package:budget_repository/budget_repository.dart';
import 'package:expense_tracker/blocs/budget/budget_bloc.dart';
import 'package:expense_tracker/blocs/transaction/category_model.dart';
import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
import 'package:expense_tracker/presentations/pages/budget/budget_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BudgetDetail extends StatelessWidget {
  const BudgetDetail(this.budget, {Key? key}) : super(key: key);
  final Budget budget;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Budget'),
        actions: [
          IconButton(
            icon: Image.asset("assets/icons/trash.png"),
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (_) => BlocProvider.value(
                value: context.read<BudgetBloc>(),
                child: DeleteBudgetBottomSheet(budget: budget),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Blocbuilder -> budget bloc
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kDefaultRadius),
                side: const BorderSide(color: kLight20),
              ),
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kMediumPadding,
                    vertical: kDefaultPadding,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SquaredIconCard(
                        imagePath: Category.fromName(budget.category).iconPath,
                        size: 56,
                        imageColor:
                            Category.fromName(budget.category).iconColor,
                        color:
                            Category.fromName(budget.category).backgroundColor,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        budget.category,
                        style: title3,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              "Remaining",
              style: title2,
              textAlign: TextAlign.center,
            ),
            BlocBuilder<TransactionBloc, TransactionState>(
              builder: (context, state) {
                if (state is TransactionLoaded) {
                  final used =
                      state.transactions.totalOfCategory(budget.category);
                  final isExceeded = used > budget.amount;
                  return Text(
                    "\$${(isExceeded) ? 0 : (budget.amount - used).toStringAsFixed(1)}",
                    style: titleX,
                    textAlign: TextAlign.center,
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: BlocBuilder<TransactionBloc, TransactionState>(
                builder: (context, state) {
                  if (state is TransactionLoaded) {
                    final used =
                        state.transactions.totalOfCategory(budget.category);
                    return ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                        value: used / budget.amount,
                        backgroundColor: kLight20,
                        minHeight: 12,
                        color: Category.colorByName(budget.category),
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ),
            const SizedBox(height: 16),
            BlocBuilder<TransactionBloc, TransactionState>(
              builder: (context, state) {
                if (state is TransactionLoaded) {
                  final used =
                      state.transactions.totalOfCategory(budget.category);
                  final isExceeded = used > budget.amount;
                  if (isExceeded) {
                    return Chip(
                      backgroundColor: kRed100,
                      label: Row(
                        children: [
                          Image.asset(
                            'assets/icons/warning.png',
                            color: kLight100,
                          ),
                          Text("You've exceed the limit",
                              style: body3.copyWith(color: kLight100)),
                        ],
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              child: DefaultButton(
                  title: 'Edit',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BlocProvider.value(
                          value: context.read<BudgetBloc>(),
                          child: _EditBudgetPage(budget: budget),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class DeleteBudgetBottomSheet extends StatelessWidget {
  const DeleteBudgetBottomSheet({
    Key? key,
    required this.budget,
  }) : super(key: key);

  final Budget budget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kMediumPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Remove this budget?', style: title3),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Are you sure do you wanna remove this budget?',
                style: body1,
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DefaultButton(
                  isSmall: true,
                  title: 'No',
                  isSecondary: true,
                  onPressed: () => Navigator.pop(context),
                ),
                DefaultButton(
                  isSmall: true,
                  title: 'Yes',
                  onPressed: () {
                    context.read<BudgetBloc>().add(DeleteBudget(budget));
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

class _EditBudgetPage extends StatefulWidget {
  const _EditBudgetPage({
    Key? key,
    required this.budget,
  }) : super(key: key);
  final Budget budget;
  @override
  State<_EditBudgetPage> createState() => _EditBudgetState();
}

class _EditBudgetState extends State<_EditBudgetPage> {
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(debugLabel: 'addBudgetPage_formKey');
  double _amount = 0;
  Category _category = Category.empty();
  bool _receiveAlert = false;
  double? _percent;

  @override
  void initState() {
    super.initState();
    _amount = widget.budget.amount;
    _category = Category.fromName(widget.budget.category);
    _percent = widget.budget.exceedLimit;
    _receiveAlert = widget.budget.exceedLimit != null;
  }

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
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'How much do yo want to spend?',
                      style: title3.copyWith(color: kLight80),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      initialValue: _amount.toStringAsFixed(1),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(top: 8),
                        isDense: true,
                        hintText: '0.0',
                        hintStyle: titleX.copyWith(color: kLight80),
                        prefixIcon: Text(
                          '\$',
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
                          DropdownButtonFormField<Category>(
                            value: _category,
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
                          Builder(builder: (context) {
                            if (_receiveAlert == true) {
                              return SizedBox(
                                width: double.infinity,
                                child: Slider(
                                  max: 100,
                                  min: 0,
                                  value: _percent ?? 80,
                                  onChanged: (v) => setState(
                                    () => _percent = v,
                                  ),
                                ),
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
                          }),
                          const SizedBox(height: kMediumPadding),
                          DefaultButton(
                            title: 'Continue',
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                context.read<BudgetBloc>().add(
                                      BudgetEvent.updateBudget(
                                        Budget(
                                          id: widget.budget.id,
                                          exceedLimit: _percent,
                                          amount: _amount,
                                          category: _category.name,
                                          monthApply: DateTime.now().month,
                                        ),
                                      ),
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
