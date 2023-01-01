import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/usecases/create_budget.dart';
import 'package:expense_tracker/features/budget/domain/usecases/update_budget.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/cubit/edit_transaction_cubit.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'edit_budget_cubit.freezed.dart';
part 'edit_budget_state.dart';

class EditBudgetCubit extends Cubit<EditBudgetState> {
  EditBudgetCubit({
    required UpdateBudget update,
    required CreateBudget create,
    required GetCategoryById getCategoryById,
    Budget? initialBudget,
  })  : _create = create,
        _update = update,
        _getCategoryById = getCategoryById,
        super(
          EditBudgetState(
            amountText: AmountText.pure(initialBudget?.amount.toString() ?? ''),
            category: initialBudget?.category,
            initialBudget: initialBudget,
            whenToNotify:
                initialBudget?.whenToNotify ?? _defaultPortionToNotify,
            receiveAlert: initialBudget?.receiveNotification ?? _receiveAlert,
          ),
        );

  final CreateBudget _create;
  final GetCategoryById _getCategoryById;
  final UpdateBudget _update;

  Future<void> createNewBudget() async {
    emit(state.copyWith(status: EditBudgetStatus.loading));

    final budget =
        (state.initialBudget ?? Budget(id: const Uuid().v4())).copyWith(
      amount: double.parse(state.amountText.value),
      category: state.category!,
      whenToNotify: state.receiveAlert ? state.whenToNotify : 0,
    );
    // if (budget.receiveNotification) {}

    try {
      if (state.initialBudget != null) {
        await _update.call(state.initialBudget!.id, budget);
      } else {
        await _create(budget);
      }
      emit(state.copyWith(status: EditBudgetStatus.success));
    } catch (e) {
      emit(state.copyWith(status: EditBudgetStatus.failure));
    }
  }

  void switchToggled() {
    final reversedState = !state.receiveAlert;
    emit(
      state.copyWith(receiveAlert: reversedState),
    );
  }

  void amountChanged({required String amountStr, String? currencySymbol}) {
    final formattedString = amountStr.split(currencySymbol ?? '').join();

    final amount = AmountText.dirty(formattedString);
    final formzStatus = Formz.validate([amount]);

    emit(state.copyWith(amountText: amount, formzStatus: formzStatus));
  }

  void amountSlide(double value) {
    emit(state.copyWith(whenToNotify: value));
  }

  Future<void> categoryChanged(String categoryId) async {
    final result = await _getCategoryById(categoryId);
    result.fold(
      (l) => emit(state.copyWith(status: EditBudgetStatus.failure)),
      (category) {
        emit(state.copyWith(category: category, whenToNotify: 0.2));
      },
    );
  }
}

class GetCategoryById {
  GetCategoryById(this._repo);

  final ICategoryRepository _repo;

  Future<Either<Failure, CategoryEntity>> call(String id) async {
    return _repo.getCategoryById(id: id);
  }
}
