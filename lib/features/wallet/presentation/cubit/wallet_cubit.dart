import 'package:bloc/bloc.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/wallet/domain/entities/wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'wallet_cubit.freezed.dart';
part 'wallet_state.dart';

@injectable
class WalletCubit extends Cubit<WalletState> {
  WalletCubit(this._db) : super(const WalletState()) {
    _init();
  }

  final MyDatabase _db;

  void moveToAddWalletScreen() {}

  Future<void> _init() async {
    try {
      final allWallets = await _db.getAllWallets();
      emit(state.copyWith(wallets: allWallets, status: WalletStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: WalletStatus.error));
    }
  }
}
