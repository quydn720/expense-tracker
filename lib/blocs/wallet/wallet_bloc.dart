import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_repository/wallet_repository.dart';

part 'wallet_event.dart';
part 'wallet_state.dart';
part 'wallet_bloc.freezed.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc(this.walletRepository) : super(const WalletLoading()) {
    on<LoadWallets>(_onLoadWallet);
    on<WalletUpdated>(_onWalletUpdated);
    on<AddWallet>(_onAddWallet);
    on<UpdateWallet>(_onUpdateWallet);
    on<DeleteWallet>(_onDeleteWallet);
  }
  final WalletRepository walletRepository;
  Future<void> _onLoadWallet(LoadWallets event, Emitter<WalletState> emit) {
    return emit.onEach<List<Wallet>>(
      walletRepository.wallets(),
      onData: (trans) => add(
        (WalletEvent.walletUpdated(trans)),
      ),
    );
  }

  void _onWalletUpdated(WalletUpdated event, Emitter<WalletState> emit) {
    emit(WalletLoaded(event.wallets));
  }

  void _onAddWallet(AddWallet event, Emitter<WalletState> emit) {
    walletRepository.addNewWallet(event.wallet);
  }

  void _onUpdateWallet(UpdateWallet event, Emitter<WalletState> emit) {
    walletRepository.updateWallet(event.updatedWallet);
  }

  void _onDeleteWallet(DeleteWallet event, Emitter<WalletState> emit) {
    walletRepository.deleteWallet(event.wallet);
  }
}
