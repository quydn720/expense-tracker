import 'package:expense_tracker/features/transaction_overview/data/models/category.dart';

class Budget {
  Budget(this.id, this.amount, this.whenToNotify, this.category);

  final String id;
  final double amount;
  final double whenToNotify;
  final Category category;
}
