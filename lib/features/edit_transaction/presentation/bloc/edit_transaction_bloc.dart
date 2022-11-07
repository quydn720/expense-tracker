import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../../../transaction_overview/domain/usecases/load_transactions.dart';

part 'edit_transaction_bloc.freezed.dart';
part 'edit_transaction_event.dart';
part 'edit_transaction_state.dart';

class EditTransactionBloc
    extends Bloc<EditTransactionEvent, EditTransactionState> {
  EditTransactionBloc(
    this._addTransaction, {
    this.initialTransaction,
  }) : super(
          EditTransactionState(
            isNewTransaction: initialTransaction == null,
            amount: initialTransaction?.amount ?? 0,
            description: initialTransaction?.description ?? '',
          ),
        ) {
    on<EditTransactionRepeatToggle>((event, emit) {
      emit(state.copyWith(isRepeated: !state.isRepeated));
    });
    on<SubmitNewTransaction>((event, emit) {
      emit(state.copyWith(status: Status.loading));
      final transaction = (initialTransaction ?? Transaction.empty()).copyWith(
        amount: state.amount,
        description: state.description,
      );
      _addTransaction.call(transaction);
      emit(state.copyWith(status: Status.success));
    });
    on<EditTransactionDescriptionChanged>(
      (event, emit) => emit(state.copyWith(description: event.description)),
    );
    on<EditTransactionAmountChanged>(
      (event, emit) => emit(
        state.copyWith(amount: double.parse(event.amount)),
      ),
    );
    on<EditTransactionSelectAttachment>((event, emit) {
      emit(state.copyWith(status: Status.selectImage));
    });
    on<EditTransactionSelectAttachmentClose>((event, emit) {
      emit(state.copyWith(status: Status.initital));
    });
    on<EditTransactionImageChosen>((event, emit) {
      emit(state.copyWith(imgFile: event.imgStr));
    });
  }

  final Transaction? initialTransaction;
  final AddTransaction _addTransaction;
}
