import 'package:expense_tracker/presentations/models/transaction.dart';

final listTransaction = <Transaction>[
  Transaction(
      payeeName: 'Buy grocery',
      dateCreated: DateTime.now(),
      amount: 12.0,
      category: 'Food'),
  Transaction(
      payeeName: 'T-shirt',
      dateCreated: DateTime.now(),
      amount: 45.0,
      category: 'Shopping'),
  Transaction(
      payeeName: 'Movie ticket',
      dateCreated: DateTime.now(),
      amount: 10.0,
      category: 'Entertainment'),
  Transaction(
      payeeName: 'Buy grocery',
      dateCreated: DateTime.now().add(Duration(days: -1)),
      amount: 5.0,
      category: 'Food'),
  Transaction(
      payeeName: 'Buy grocery',
      dateCreated: DateTime.now().add(Duration(days: -2)),
      amount: 5.0,
      category: 'Food'),
  Transaction(
      payeeName: 'Buy grocery',
      dateCreated: DateTime.now().add(Duration(days: 3)),
      amount: 5.0,
      category: 'Food'),
  Transaction(
      payeeName: 'Buy grocery',
      dateCreated: DateTime.now().add(Duration(days: 2)),
      amount: 5.0,
      category: 'Food'),
  Transaction(
      payeeName: 'Buy grocery',
      dateCreated: DateTime.now().add(Duration(days: -1)),
      amount: 5.0,
      category: 'Food'),
];
