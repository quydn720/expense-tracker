import 'package:expense_tracker/components/default_app_bar.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/models/transaction.dart';
import 'package:expense_tracker/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddNewTransactionPage extends StatefulWidget {
  static String routeName = '/add_new_transaction';
  const AddNewTransactionPage({Key? key}) : super(key: key);

  @override
  State<AddNewTransactionPage> createState() => _AddNewTransactionPageState();
}

class _AddNewTransactionPageState extends State<AddNewTransactionPage> {
  int currentIndex = 0;
  final TextEditingController _controller = TextEditingController();
  late FocusNode focusNode;

  String testing = '';
  @override
  void initState() {
    focusNode = FocusNode();
    _controller.addListener(() {
      print(_controller.text);
      setState(() {
        testing = _controller.text;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DefaultAppBar(
              elevation: 2,
              iconPosition: IconPosition.RIGHT,
              height: SizeConfig.screenHeight * 0.125,
              title: 'Add new transaction',
              action: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: FaIcon(
                  FontAwesomeIcons.times,
                  size: SizeConfig.defaultSize * 2.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => buildIndicators(index),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                child: ReversedListTile(
                                  leading: CircleAvatar(
                                    child: Icon(Icons.ac_unit),
                                  ),
                                  onTap: () {
                                    focusNode.requestFocus();
                                    print(_controller.text);
                                  },
                                  title: 'Transaction type',
                                  subtitle: 'Expense',
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: ReversedListTile(
                                  title: 'Amount',
                                  subtitle: '\$3.000.000.000',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: ReversedListTile(
                            leading: CircleAvatar(
                              child: FaIcon(FontAwesomeIcons.accessibleIcon),
                            ),
                            title: 'Payee',
                            subtitle: 'Motorbike engine oil',
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: ReversedListTile(
                            leading: CircleAvatar(
                              child: FaIcon(FontAwesomeIcons.accessibleIcon),
                            ),
                            title: 'Date',
                            subtitle: '05-10-2020',
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: ReversedListTile(
                            leading: CircleAvatar(
                              child: FaIcon(FontAwesomeIcons.accessibleIcon),
                            ),
                            title: 'Date',
                            subtitle: '05-10-2020',
                          ),
                        ),
                      ],
                      // color: Colors.blueAccent,
                    ),
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.1,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            focusNode: focusNode,
                            controller: _controller,
                            onChanged: (newValue) {},
                            onSubmitted: (_) => _controller.clear(),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                              Transaction(
                                  payeeName: 'payeeName',
                                  dateCreated: DateTime.now(),
                                  amount: 20,
                                  category: 'category'),
                            );
                          },
                          child: Text('Finish'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

// TODO: come back later
  Container buildIndicators(int index) {
    return Container(
      height: 2.0,
      width: (SizeConfig.screenWidth - 2 * 30.0) / 5,
      color: index == currentIndex ? kPrimaryColor : Colors.grey,
    );
  }
}

class ReversedListTile extends StatelessWidget {
  const ReversedListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    this.onTap,
    this.leading,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final Function()? onTap;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      onTap: onTap,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.subtitle1,
        maxLines: 1,
        // overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

// bấm vào tile nào thì hiển thị text input với controller tương ứng
// state textInputIndex => hiển thị text input nào ở đáy, hoặc null - k hiển thị
