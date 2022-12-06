import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:expense_tracker/l10n/gen/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../../domain/usecases/add_transaction_use_case.dart';

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
          (initialTransaction != null)
              ? EditTransactionState(
                  isNewTransaction: true,
                  description: initialTransaction.description,
                  category: CategoryField.pure(initialTransaction.category),
                  amount: AmountText.pure(initialTransaction.amount),
                )
              : const EditTransactionState(),
        ) {
    on<EditTransactionRepeatToggled>(_onRepeatedButtonToggled);
    on<EditTransactionSubmitNewTransaction>(_onNewTransactionSubmitted);
    on<EditTransactionDescriptionChanged>(_onDescriptionChanged);
    on<EditTransactionAmountChanged>(_onAmountChanged);
    on<EditTransactionCategoryChanged>(_onCategoryChanged);
    on<EditTransactionSelectAttachment>(_onAttachmentSelectionPressed);
    on<EditTransactionSelectAttachmentClose>(_onAttachmentSelectionClosed);
    on<EditTransactionImageChosen>(_onAttachmentSelectionDone);
    on<EditTransactionDeleteTransaction>(_onDeleted);
  }

  final Transaction? initialTransaction;
  final AddTransactionUseCase _addTransaction;

  Future<void> _onDeleted(
    EditTransactionDeleteTransaction event,
    Emitter<EditTransactionState> emit,
  ) async {
    debugPrint('delete done');
  }

  Future<void> _onAttachmentSelectionDone(
    EditTransactionImageChosen event,
    Emitter<EditTransactionState> emit,
  ) async {
    emit(state.copyWith(imgFile: event.imgStr));
  }

  Future<void> _onAttachmentSelectionClosed(
    EditTransactionSelectAttachmentClose event,
    Emitter<EditTransactionState> emit,
  ) async {
    emit(state.copyWith(status: Status.initital));
  }

  Future<void> _onAttachmentSelectionPressed(
    EditTransactionSelectAttachment event,
    Emitter<EditTransactionState> emit,
  ) async {
    emit(state.copyWith(status: Status.selectImage));
  }

  Future<void> _onCategoryChanged(
    EditTransactionCategoryChanged event,
    Emitter<EditTransactionState> emit,
  ) async {
    final category = CategoryField.dirty(event.category);
    final formzStatus = Formz.validate([category, state.amount]);
    emit(
      state.copyWith(
        category: category,
        formzStatus: formzStatus,
      ),
    );
  }

  Future<void> _onAmountChanged(
    EditTransactionAmountChanged event,
    Emitter<EditTransactionState> emit,
  ) async {
    final amount = AmountText.dirty(double.parse(event.amount));
    final formzStatus = Formz.validate([amount, state.category]);

    emit(
      state.copyWith(amount: amount, formzStatus: formzStatus),
    );
  }

  Future<void> _onDescriptionChanged(
    EditTransactionDescriptionChanged event,
    Emitter<EditTransactionState> emit,
  ) async =>
      emit(
        state.copyWith(description: event.description),
      );

  Future<void> _onNewTransactionSubmitted(
    EditTransactionSubmitNewTransaction event,
    Emitter<EditTransactionState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    List<String>? images;

    if (state.imgFile?.path != null) {
      images = <String>[state.imgFile!.path];
    }

    final transaction = (initialTransaction ?? Transaction.empty()).copyWith(
      amount: state.amount.value,
      description: state.description,
      imagesPath: images,
    );
    await _addTransaction.call(transaction);
    emit(state.copyWith(status: Status.success));
  }

  /// When user pressed the 'Repeat' switch button
  Future<void> _onRepeatedButtonToggled(
    EditTransactionRepeatToggled event,
    Emitter<EditTransactionState> emit,
  ) async {
    final reversedState = !state.isRepeated;

    emit(state.copyWith(isRepeated: reversedState));
  }
}
