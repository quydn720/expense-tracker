import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../../../transaction_overview/domain/usecases/load_transactions.dart';

part 'edit_transaction_bloc.freezed.dart';
part 'edit_transaction_event.dart';
part 'edit_transaction_state.dart';

@injectable
class EditTransactionBloc
    extends Bloc<EditTransactionEvent, EditTransactionState> {
  EditTransactionBloc(
    this._addTransaction, {
    @factoryParam this.initialTransaction,
  }) : super(
          EditTransactionState(
            isNewTransaction: initialTransaction == null,
            amount: initialTransaction?.amount ?? 0,
            description: initialTransaction?.description ?? '',
          ),
        ) {
    on<EditTransactionRepeatToggled>((event, emit) {
      emit(state.copyWith(isRepeated: !state.isRepeated));
    });
    on<SubmitNewTransaction>((event, emit) {
      emit(state.copyWith(status: Status.loading));
      List<String>? images;

      if (state.imgFile?.path != null) {
        images = <String>[state.imgFile!.path];
      }

      final transaction = (initialTransaction ?? Transaction.empty()).copyWith(
        amount: state.amount,
        description: state.description,
        category: state.category,
        imagesPath: images,
      );
      _addTransaction.call(transaction);
      emit(state.copyWith(status: Status.success));
    });
    on<EditTransactionDescriptionChanged>(
      (EditTransactionDescriptionChanged event, emit) => emit(
        state.copyWith(description: event.description),
      ),
    );
    on<EditTransactionAmountChanged>(
      (EditTransactionAmountChanged event, emit) => emit(
        state.copyWith(amount: double.parse(event.amount)),
      ),
    );
    on<EditTransactionCategoryChanged>(
        (EditTransactionCategoryChanged event, emit) {
      emit(state.copyWith(category: event.category));
    });
    on<EditTransactionSelectAttachment>((event, emit) {
      emit(state.copyWith(status: Status.selectImage));
    });
    on<EditTransactionSelectAttachmentClose>((event, emit) {
      emit(state.copyWith(status: Status.initital));
    });
    on<EditTransactionImageChosen>((event, emit) {
      emit(state.copyWith(imgFile: event.imgStr));
    });
    on<EditTransactionDeleteTransaction>((event, emit) {
      // emit(state.copyWith(imgFile: event.imgStr));
      debugPrint('delete done');
    });
  }

  final Transaction? initialTransaction;
  final AddTransaction _addTransaction;
}
