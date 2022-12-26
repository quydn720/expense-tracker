part of 'wallet_cubit.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState({
    @Default([]) List<Wallet> wallets,
    @Default(WalletStatus.initial) WalletStatus status,
  }) = _WalletState;
  const WalletState._();

  double get totalAmount {
    return wallets.fold(0, (p, c) => p + c.balance);
  }
}

enum WalletStatus { initial, loading, error, loaded }
