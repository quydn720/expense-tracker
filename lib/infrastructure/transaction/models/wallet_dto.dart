import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:expense_tracker/domain/transaction/models/value_object.dart';
import 'package:expense_tracker/domain/transaction/models/wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_dto.freezed.dart';
part 'wallet_dto.g.dart';

@freezed
class WalletDTO with _$WalletDTO {
  const WalletDTO._();
  const factory WalletDTO({
    required String id,
    required double amount,
    required String imagePath,
    required String name,
  }) = _WalletDTO;

  Wallet toDomain() {
    return Wallet(
      id: UniqueId.fromUniqueString(id),
      imagePath: imagePath,
      name: WalletName(name),
      amount: MoneyAmount(amount.toString()),
    );
  }

  factory WalletDTO.fromDomain(Wallet w) {
    return WalletDTO(
      id: w.id.getOrCrash(),
      amount: w.amount.getOrCrash(),
      imagePath: w.imagePath,
      name: w.name.getOrCrash(),
    );
  }
  factory WalletDTO.fromJson(Map<String, dynamic> json) =>
      _$WalletDTOFromJson(json);
}
