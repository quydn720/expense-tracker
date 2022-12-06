import 'package:expense_tracker/features/category/domain/entities/category.dart';

class Budget {
  Budget(this.id, this.amount, this.whenToNotify, this.category);

  final String id;
  final double amount;
  final double whenToNotify;
  final CategoryEntity category;
}
