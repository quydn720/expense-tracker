import 'package:flutter/material.dart';

import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/bars.dart';
import 'package:expense_tracker/presentations/components/default_app_widget.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:expense_tracker/presentations/pages/transaction/add_transaction/expense_income_form.dart';

import 'export_result_page.dart';

class ExportPage extends StatefulWidget {
  const ExportPage({Key? key}) : super(key: key);
  static String routeName = '/Export';

  @override
  State<ExportPage> createState() => _ExportPageState();
}

class _ExportPageState extends State<ExportPage> {
  final items = ['CSV', 'Excel', 'Word'];
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultAppWidget(
      body: Padding(
        padding: const EdgeInsets.all(kMediumPadding),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  DefaultBar(
                    title:
                        Text('What data do you want to export?', style: body1),
                  ),
                  SelectionFormField(title: 'All'),
                  DefaultBar(
                    title: Text('When date range?', style: body1),
                  ),
                  SelectionFormField(title: 'Last 30 days'),
                  DefaultBar(
                    title: Text('What format do you want to export?',
                        style: body1),
                  ),
                  DropdownButtonFormField<int>(
                    value: _selected,
                    onChanged: (v) => setState(() {
                      _selected = v!;
                    }),
                    items: [0, 1, 2]
                        .map((e) =>
                            DropdownMenuItem(value: e, child: Text(items[e])))
                        .toList(),
                    icon: Padding(
                      padding: const EdgeInsets.only(right: kDefaultPadding),
                      child: Image.asset(
                        'assets/icons/arrow-down-2.png',
                        color: kViolet100,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DefaultButton(
              title: 'Export',
              onPress: () {
                // TODO: Bloc add Send file to email
                Navigator.pushReplacementNamed(
                    context, ExportDataPromptPage.routeName);
              },
              icon: Image.asset('assets/icons/download.png', color: kLight100),
            ),
          ],
        ),
      ),
      title: 'Export Data',
    );
  }
}

// class SelectionFormFieldx extends StatelessWidget {
//   const SelectionFormFieldx({
//     Key? key,
//     required this.selectionItems,
//   }) : super(key: key);

//   final List<String> selectionItems;
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField<int>(
//       value: bloc.state.value.,
//       onChanged: (v) => setState(() {
//         _selected = v!;
//       }),
//       items: [0, 1, 2]
//           .map((e) => DropdownMenuItem(value: e, child: Text(selectionItems[e])))
//           .toList(),
//       icon: Padding(
//         padding: const EdgeInsets.only(right: kDefaultPadding),
//         child: Image.asset(
//           'assets/icons/arrow-down-2.png',
//           color: kViolet100,
//         ),
//       ),
//     );
//   }
// }