// import 'package:expense_tracker/presentations/pages/home/widgets/line_chard_widget.dart';
// import 'package:flutter/material.dart';

// class FinancialReportPage extends StatelessWidget {
//   const FinancialReportPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Financial Report'),
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Chip(
//                   label: Text('Month'),
//                 ),
//               ],
//             ),
//             LineChartWidget(),
//             SizedBox(
//               height: 100,
//               child: PageView.builder(
//                 itemBuilder: (context, index) {
//                   return Container(
//                     height: 100,
//                     color: index == 0 ? Colors.green : Colors.red,
//                   );
//                 },
//                 itemCount: 2,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
