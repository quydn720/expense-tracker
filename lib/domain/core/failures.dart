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
}
