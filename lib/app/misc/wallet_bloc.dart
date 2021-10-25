import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expense_tracker/domain/transaction/i_transaction_repository.dart';
import 'package:expense_tracker/domain/transaction/models/wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'wallet_event.dart';
part 'wallet_state.dart';
part 'wallet_bloc.freezed.dart';

@injectable
class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final ITransactionRepository _transactionRepository;
  late StreamSubscription _todosSubscription;

  WalletBloc(this._transactionRepository) : super(const _Initial()) {
    on<GetAllWallet>((event, emit) {
      emit(const WalletState.loadingProgress());

      _transactionRepository.getAllWallets().listen((wallets) {
        add(WalletEvent.walletsReceived(wallets));
      });
    });

    on<WalletsReceived>((event, emit) {
      emit(WalletState.loadSuccess(event.wallets));
    });
  }

  @override
  Future<void> close() {
    _todosSubscription.cancel();
    return super.close();
  }
}
