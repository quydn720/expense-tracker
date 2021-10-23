import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Adding more failure to union with the actual value
@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int maxLength,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.negativeNumber({
    required T failedValue,
  }) = NegativeNumber<T>;
  const factory ValueFailure.invalidNumber({
    required T failedValue,
  }) = InvalidNumber<T>;
}
