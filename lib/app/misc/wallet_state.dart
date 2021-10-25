part of 'wallet_bloc.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.initial() = _Initial;
  const factory WalletState.loadingProgress() = LoadingProgress;
  const factory WalletState.loadSuccess(List<Wallet> wallets) = LoadSuccess;
  const factory WalletState.loadFailure(String failureMessage) = LoadFailure;
}
