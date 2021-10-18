import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
    required String? name,
    required String? email,
  }) = _User;
}
