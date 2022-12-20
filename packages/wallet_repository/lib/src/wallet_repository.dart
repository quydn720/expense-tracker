import 'package:wallet_repository/src/models/models.dart';

abstract class WalletRepository {
  List<Wallet> get currentWallets;
  double get totalAmount;
  Stream<List<Wallet>> wallets();
  Future<void> addNewWallet(Wallet wallet);
  Future<void> deleteWallet(Wallet wallet);
  Future<void> updateWallet(Wallet wallet);
}
