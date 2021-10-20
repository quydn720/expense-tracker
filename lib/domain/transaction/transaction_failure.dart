import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_failure.freezed.dart';

@freezed
class TransactionFailure with _$TransactionFailure {
  const factory TransactionFailure.unexpected() = _Unexpected;
  const factory TransactionFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory TransactionFailure.unableToUpdate() = _UnableToUpdate;
}
