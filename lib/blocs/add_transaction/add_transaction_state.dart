part of 'add_transaction_cubit.dart';

@freezed
class AddTransactionState with _$AddTransactionState {
  const factory AddTransactionState({
    @Default(MoneyAmount.pure()) MoneyAmount amount,
    @Default('Category') String category,
    @Default(Wallet.pure('', 0, '', '', Color(0xff000000))) Wallet wallet,
    String? description,
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _AddTransactionState;
}
