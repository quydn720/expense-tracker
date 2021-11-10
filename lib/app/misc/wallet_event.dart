part of 'wallet_bloc.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.started() = _Started;
  const factory WalletEvent.getAllWallets() = GetAllWallet;
  const factory WalletEvent.walletsReceived(List<Wallet> wallets) =
      WalletsReceived;
  const factory WalletEvent.deleted(Wallet w) = Deleted;
}
