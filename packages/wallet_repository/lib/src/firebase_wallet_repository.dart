import 'package:cloud_firestore/cloud_firestore.dart' as firestore;
import 'package:wallet_repository/src/wallet_repository.dart';

import 'entities/entities.dart';
import 'models/models.dart';

const key = 'wallet_cached_key';

class FirebaseWalletRepository implements WalletRepository {
  final Map<String, List<Wallet>> cachedWallet;

  final walletCollection =
      firestore.FirebaseFirestore.instance.collection('wallets');

  FirebaseWalletRepository({required this.cachedWallet});

  @override
  Future<void> addNewWallet(Wallet wallet) {
    return walletCollection.doc(wallet.id).set(wallet.toEntity().toDocument());
  }

  @override
  Future<void> deleteWallet(Wallet wallet) async {
    return walletCollection.doc(wallet.id).delete();
  }

  @override
  Stream<List<Wallet>> wallets() {
    return walletCollection.snapshots().map((snapshot) {
      final wallets = snapshot.docs
          .map((doc) => Wallet.fromEntity(
                WalletEntity.fromSnapshot(doc),
              ))
          .toList();
      cachedWallet[key] = wallets;
      return wallets;
    });
  }

  @override
  Future<void> updateWallet(Wallet wallet) {
    return walletCollection
        .doc(wallet.id)
        .update(wallet.toEntity().toDocument());
  }

  @override
  List<Wallet> get currentWallets {
    final value = cachedWallet[key];
    if (value is List<Wallet>) return value;
    return [];
  }

  @override
  double get totalAmount =>
      cachedWallet[key]
          ?.map((e) => e.amount)
          .toList()
          .reduce((a, b) => a + b) ??
      0;
}
