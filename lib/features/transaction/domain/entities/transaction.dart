import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'transaction.freezed.dart';

@freezed
class TransactionEntity with _$TransactionEntity {
  const factory TransactionEntity({
    required String id,
    required CategoryEntity category,
    required DateTime dateCreated,
    required double amount,
    required String walletId,
    String? description,
    XFile? file,
    @Default(false) bool isRepeated,
  }) = _TransactionEntity;
}
