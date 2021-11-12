import 'package:bloc/bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_transaction_state.dart';
part 'add_transaction_cubit.freezed.dart';

class AddTransactionCubit extends Cubit<AddTransactionState> {
  AddTransactionCubit() : super(const _AddTransactionState());

  void amountChanged(double value) {
    final amount = MoneyAmount.dirty(value);
    emit(
      state.copyWith(
        amount: amount,
        status: Formz.validate(
          [amount],
        ),
      ),
    );
  }

  void categoryChanged(String category) {
    emit(state.copyWith(category: category));
  }

  void walletChanged(String wallet) {
    emit(state.copyWith(wallet: wallet));
  }

  void descriptionChanged(String description) {
    emit(state.copyWith(description: description));
  }
}
