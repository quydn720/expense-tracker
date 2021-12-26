import 'package:authentication_repository/authentication_repository.dart';
import 'package:budget_repository/src/models/budget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'budget_repository.dart';
import 'entities/budget_entity.dart';

const key = 'budget_cached_key';

class FirebaseBudgetRepository implements BudgetRepository {
  final Map<String, List<Budget>> cachedBudget;

  final AuthenticationRepository authenticationRepository;
  final String userId;

  FirebaseBudgetRepository({
    required this.cachedBudget,
    required this.authenticationRepository,
  }) : userId = authenticationRepository.currentUser.id;

  @override
  Future<void> addNewBudget(Budget budget) async {
    final budgetCollection =
        FirebaseFirestore.instance.collection('users/$userId/budgets');
    return budgetCollection.doc(budget.id).set(budget.toEntity().toDocument());
  }

  @override
  Stream<List<Budget>> budgets() {
    final bC = FirebaseFirestore.instance.collection('users/$userId/budgets');
    return bC.snapshots().map((snapshot) {
      final wallets = snapshot.docs
          .map(
            (doc) => Budget.fromEntity(
              BudgetEntity.fromSnapshot(doc),
            ),
          )
          .toList();
      cachedBudget[key] = wallets;
      return wallets;
    });
  }

  @override
  List<Budget> get currentBudget {
    final value = cachedBudget[key];
    if (value is List<Budget>) return value;
    return [];
  }

  @override
  Future<void> deleteBudget(Budget budget) {
    final budgetCollection =
        FirebaseFirestore.instance.collection('users/$userId/budgets');
    return budgetCollection.doc(budget.id).delete();
  }

  @override
  Future<void> updateBudget(Budget budget) {
    final budgetCollection =
        FirebaseFirestore.instance.collection('users/$userId/budgets');
    return budgetCollection
        .doc(budget.id)
        .update(budget.toEntity().toDocument());
  }
}
