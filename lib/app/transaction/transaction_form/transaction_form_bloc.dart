import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/domain/transaction/i_transaction_repository.dart';
import 'package:expense_tracker/domain/transaction/models/category.dart';
import 'package:expense_tracker/domain/transaction/models/value_object.dart';
import 'package:expense_tracker/domain/transaction/models/wallet.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart';
import 'package:expense_tracker/domain/transaction/transaction_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transaction_form_event.dart';
part 'transaction_form_state.dart';
part 'transaction_form_bloc.freezed.dart';

@injectable
class TransactionFormBloc
    extends Bloc<TransactionFormEvent, TransactionFormState> {
  final ITransactionRepository _transactionRepository;
  TransactionFormBloc(this._transactionRepository)
      : super(TransactionFormState.initial()) {
    on<AmountChanged>((event, emit) {
      emit(state.copyWith(
        isEditing: true,
        transaction:
            state.transaction.copyWith(amount: TransactionAmount(event.amount)),
      ));
    });
    on<CategoryChanged>((event, emit) {
      emit(state.copyWith(
          isEditing: true,
          transaction: state.transaction.copyWith(category: event.category)));
    });
    on<WalletChanged>((event, emit) {
      emit(state.copyWith(
          isEditing: true,
          transaction: state.transaction.copyWith(wallet: event.wallet)));
    });

    on<DescriptionChanged>((event, emit) {
      emit(state.copyWith(
          isEditing: true,
          transaction:
              state.transaction.copyWith(description: event.description)));
    });

    on<CommitPressed>((event, emit) async {
      emit(state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      ));
      Either<TransactionFailure, Unit> failureOrSuccess =
          left(const TransactionFailure.unexpected());
      //! Nếu không xảy ra lỗi (empty amount, .... )
      //! Cần xử lí lỗi ở đây
      if (state.transaction.failureOption.isNone()) {
        failureOrSuccess =
            await _transactionRepository.create(state.transaction);
      }
      emit(state.copyWith(
        isSaving: true,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
  }
}
