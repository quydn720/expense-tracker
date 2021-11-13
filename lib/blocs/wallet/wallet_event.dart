part of 'wallet_bloc.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.loadWallets() = LoadWallets;
  const factory WalletEvent.addTransaction(Wallet wallet) = AddWallet;
  const factory WalletEvent.deleteWallet(Wallet wallet) = DeleteWallet;
  const factory WalletEvent.updateWallet(Wallet updatedWallet) = UpdateWallet;
  const factory WalletEvent.walletUpdated(List<Wallet> wallets) = WalletUpdated;
}
