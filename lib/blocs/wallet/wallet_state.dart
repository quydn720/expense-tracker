part of 'wallet_bloc.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.walletSuccess(List<Wallet> wallets) = WalletLoaded;
  const factory WalletState.walletLoading() = WalletLoading;
  const factory WalletState.walletError() = WalletError;
}
