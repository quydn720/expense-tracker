import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/usecases/add_transaction_use_case.dart';
import 'package:expense_tracker/features/wallet/domain/entities/wallet.dart';
import 'package:expense_tracker/l10n/gen/app_localizations.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

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
                  formzStatus: FormzStatus.valid,
                  isNewTransaction: false,
                  date: initialTransaction.dateCreated,
                  description: initialTransaction.description ?? '',
                  category: CategoryField.pure(initialTransaction.category),
                  amount: AmountText.pure(initialTransaction.amount.toString()),
                  imgFile: initialTransaction.file,
                  wallet: WalletField.pure(initialTransaction.wallet),
                )
              : EditTransactionState(date: DateTime.now()),
        );

  final TransactionEntity? initialTransaction;
  final AddTransactionUseCase _addTransaction;

  void attachmentSelectionDone(XFile? imgStr) {
    emit(state.copyWith(imgFile: imgStr, showMediaBottomSheet: false));
  }

  void closeMediaBottomSheet() {
    emit(state.copyWith(showMediaBottomSheet: false));
  }

  void openMediaBottomSheet() {
    emit(state.copyWith(showMediaBottomSheet: true));
  }

  void categoryChanged(CategoryEntity? categoryInput) {
    final category = CategoryField.dirty(categoryInput);
    final formzStatus = Formz.validate([category, state.amount, state.wallet]);

    emit(state.copyWith(category: category, formzStatus: formzStatus));
  }

  void amountChanged({required String amountStr, String? currencySymbol}) {
    final formattedString = amountStr.split(currencySymbol ?? '').join();

    final amount = AmountText.dirty(formattedString);
    final formzStatus = Formz.validate([amount, state.category, state.wallet]);

    emit(
      state.copyWith(amount: amount, formzStatus: formzStatus),
    );
  }

  void descriptionChanged(String description) {
    emit(state.copyWith(description: description));
  }

  Future<void> submitTransaction() async {
    emit(state.copyWith(formzStatus: FormzStatus.submissionInProgress));

    final transaction = TransactionEntity(
      id: initialTransaction?.id ?? const Uuid().v4(),
      category: state.category.value!,
      dateCreated: state.date,
      amount: double.parse(state.amount.value),
      walletId: state.wallet.value!.id,
      description: state.description,
      file: state.imgFile,
    );

    await _addTransaction.call(transaction);
    emit(state.copyWith(formzStatus: FormzStatus.submissionSuccess));
  }

  /// When user pressed the 'Repeat' switch button
  Future<void> repeatedButtonToggled() async {
    final reversedState = !state.isRepeated;

    emit(state.copyWith(isRepeated: reversedState));
  }

  Future<void> dateChanged(DateTime? date) async {
    emit(state.copyWith(date: date!));
  }

  void walletChanged(Wallet? walletInput) {
    final wallet = WalletField.dirty(walletInput);
    final formzStatus = Formz.validate([state.amount, state.category, wallet]);

    emit(state.copyWith(wallet: wallet, formzStatus: formzStatus));
  }
}
