import 'package:bloc/bloc.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/wallet/domain/entities/wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'edit_wallet_state.dart';
part 'edit_wallet_cubit.freezed.dart';

class EditWalletCubit extends Cubit<EditWalletState> {
  EditWalletCubit({
    required AddNewWallet addNewWallet,
    this.initialWallet,
  })  : _addNewWallet = addNewWallet,
        super(const EditWalletState());

  final AddNewWallet _addNewWallet;
  final Wallet? initialWallet;

  void changeName(String name) {
    emit(state.copyWith(name: name));
  }

  void changeAmount({
    required String amountStr,
    required String currencySymbol,
  }) {
    // TODO
    emit(state.copyWith(amount: 0));
  }

  Future<void> submit() async {
    emit(state.copyWith(status: EditWalletStatus.loading));

    final wallet = Wallet(
      id: initialWallet?.id ?? const Uuid().v1(),
      balance: state.amount,
      name: state.name,
      iconPath: 'iconPath',
    );

    try {
      await _addNewWallet(wallet);
      emit(state.copyWith(status: EditWalletStatus.success));
    } catch (_) {
      emit(state.copyWith(status: EditWalletStatus.failure));
    }
  }
}

class AddNewWallet {
  AddNewWallet(this.db);

  final MyDatabase db;

  Future<void> call(Wallet wallet) async {
    await db.addNewWallet(
      WalletsCompanion.insert(
        id: wallet.id,
        name: wallet.name,
        walletType: 'wallet.walletType',
        balance: wallet.balance,
      ),
    );
  }
}
