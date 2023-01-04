part of 'edit_wallet_cubit.dart';

enum EditWalletStatus { initial, loading, success, failure }

@freezed
class EditWalletState with _$EditWalletState {
  const factory EditWalletState({
    @Default('') String name,
    @Default(0.0) double amount,
    @Default(EditWalletStatus.initial) EditWalletStatus status,
  }) = _EditWalletState;
}
