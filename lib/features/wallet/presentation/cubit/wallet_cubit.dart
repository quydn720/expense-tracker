import 'package:bloc/bloc.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:expense_tracker/features/wallet/domain/entities/wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'wallet_cubit.freezed.dart';
part 'wallet_state.dart';

@injectable
class WalletCubit extends Cubit<WalletState> {
  WalletCubit({
    required MyDatabase db,
    required GetTransactionOfWallet getTransactionsUseCase,
  })  : _db = db,
        _getTransactionsUseCase = getTransactionsUseCase,
        super(const WalletState()) {
    _init();
  }

  final MyDatabase _db;
  final GetTransactionOfWallet _getTransactionsUseCase;

  void moveToAddWalletScreen() {}

  Future<void> _init() async {
    try {
      final allWallets = await _db.getAllWallets();
      emit(state.copyWith(wallets: allWallets, status: WalletStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: WalletStatus.error));
    }
  }

  Future<void> c({required String walletId}) async {
    try {
      final c = _getTransactionsUseCase.call(walletId: walletId);
      emit(state.copyWith(status: WalletStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: WalletStatus.error));
    }
  }

  @override
  Future<void> close() {
    print('close wallet cubit');
    return super.close();
  }
}

@injectable
class GetTransactionOfWallet {
  const GetTransactionOfWallet(this._repository);

  final ITransactionRepository _repository;

  Future<List<TransactionEntity>> call({required String walletId}) =>
      _repository.getAllTransactionWithWalletId(walletId);
}
