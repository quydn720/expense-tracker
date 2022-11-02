import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:transaction_repository/transaction_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

part 'add_transaction_state.dart';
part 'add_transaction_cubit.freezed.dart';

class AddTransactionCubit extends Cubit<AddTransactionState> {
  AddTransactionCubit() : super(const _AddTransactionState());

  void typeChanged(int type) {
    final transactionType = TransactionType.values[type];
    emit(state.copyWith(type: transactionType));
  }

  void amountChanged(double value) {
    final amount = MoneyAmount.dirty(value);
    emit(
      state.copyWith(
        amount: amount,
        status: Formz.validate(
          [
            amount,
            state.wallet,
          ],
        ),
      ),
    );
  }

  void categoryChanged(String category) {
    emit(state.copyWith(category: category));
  }

  void walletChanged(Wallet wallet) {
    final w = Wallet.dirty(
      wallet.id,
      wallet.amount,
      wallet.name,
      wallet.iconPath,
      wallet.color,
    );
    emit(
      state.copyWith(
        wallet: wallet,
        status: Formz.validate([state.amount, w]),
      ),
    );
  }

  void descriptionChanged(String description) {
    emit(state.copyWith(description: description));
  }
}
