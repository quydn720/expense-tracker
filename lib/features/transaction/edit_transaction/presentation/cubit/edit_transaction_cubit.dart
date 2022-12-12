import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/l10n/gen/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../usecases/add_transaction_use_case.dart';

part 'edit_transaction_cubit.freezed.dart';
part 'edit_transaction_state.dart';

@injectable
class EditTransactionCubit extends Cubit<EditTransactionState> {
  EditTransactionCubit(
    this._addTransaction, {
    @factoryParam this.initialTransaction,
  }) : super(
          (initialTransaction != null)
              ? EditTransactionState(
                  isNewTransaction: true,
                  date: initialTransaction.dateCreated,
                  description: initialTransaction.description ?? '',
                  category: CategoryField.pure(initialTransaction.category),
                  amount: AmountText.pure(initialTransaction.amount),
                )
              : EditTransactionState(date: DateTime.now()),
        );

  final TransactionEntity? initialTransaction;
  final AddTransactionUseCase _addTransaction;

  Future<void> deleted() async {
    debugPrint('delete done');
  }

  void attachmentSelectionDone(XFile? imgStr) {
    emit(state.copyWith(imgFile: imgStr));
  }

  void attachmentSelectionClosed() {
    emit(state.copyWith(status: Status.initital));
  }

  void attachmentSelectionPressed() {
    emit(state.copyWith(status: Status.selectImage));
  }

  void categoryChanged(CategoryEntity? categoryInput) {
    final category = CategoryField.dirty(categoryInput);
    final formzStatus = Formz.validate([category, state.amount]);
    emit(
      state.copyWith(
        category: category,
        formzStatus: formzStatus,
      ),
    );
  }

  void amountChanged(String amountStr) {
    final amount = AmountText.dirty(double.parse(amountStr));
    final formzStatus = Formz.validate([amount, state.category]);

    emit(
      state.copyWith(amount: amount, formzStatus: formzStatus),
    );
  }

  void descriptionChanged(String description) {
    emit(state.copyWith(description: description));
  }

  Future<void> newTransactionSubmitted() async {
    emit(state.copyWith(status: Status.loading));
    List<String>? images;

    if (state.imgFile?.path != null) {
      images = <String>[state.imgFile!.path];
    }

    final transaction = TransactionEntity(
      id: 'id',
      category: state.category.value!,
      dateCreated: state.date,
      amount: state.amount.value,
      walletId: 'walletId',
      description: state.description,
    );
    await _addTransaction.call(transaction);
    emit(state.copyWith(status: Status.success));
  }

  /// When user pressed the 'Repeat' switch button
  Future<void> repeatedButtonToggled() async {
    final reversedState = !state.isRepeated;

    emit(state.copyWith(isRepeated: reversedState));
  }

  Future<void> dateChanged(DateTime? date) async {
    emit(state.copyWith(date: date!));
  }
}
