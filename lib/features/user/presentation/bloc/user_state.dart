part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserInitial;
  const factory UserState.loaded({required User user}) = UserLoaded;
}
