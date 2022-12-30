part of 'home_bloc.dart';

enum HomeStatus { initial, loading, success, failure }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default([]) List<TransactionEntity> transactions,
    @Default(0.0) double accountBalance,
    @Default('') String userAvatarUrl,
  }) = _HomeState;
}
