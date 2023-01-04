import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:expense_tracker/features/wallet/data/datasources/wallet_dao.dart';
import 'package:expense_tracker/features/wallet/domain/entities/wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'wallet_cubit.freezed.dart';
part 'wallet_state.dart';

@injectable
class WalletCubit extends Cubit<WalletState> {
  WalletCubit({
    required WalletsDao walletDao,
    required GetTransactionOfWallet getTransactionsUseCase,
  })  : _walletDao = walletDao,
        _getTransactionsUseCase = getTransactionsUseCase,
        super(const WalletState()) {
    _init();
  }

  final WalletsDao _walletDao;
  final GetTransactionOfWallet _getTransactionsUseCase;
  late final StreamSubscription<List<Wallet>> streamSubscription;

  void moveToAddWalletScreen() {}

  Future<void> _init() async {
    streamSubscription = _walletDao.getWallets().listen(
      (wallets) {
        emit(state.copyWith(wallets: wallets, status: WalletStatus.loaded));
      },
      onError: (e) => emit(state.copyWith(status: WalletStatus.error)),
    );
  }

  Future<void> c({required String walletId}) async {
    try {
      await _getTransactionsUseCase.call(walletId: walletId);
      emit(state.copyWith(status: WalletStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: WalletStatus.error));
    }
  }

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }

  Future<void> deleteWallet(Wallet wallet) async {
    await _walletDao.deleteWallet(wallet.id);
  }
}

@injectable
class GetTransactionOfWallet {
  const GetTransactionOfWallet(this._repository);

  final ITransactionRepository _repository;

  Future<List<TransactionEntity>> call({required String walletId}) =>
      _repository.getAllTransactionWithWalletId(walletId);
}
