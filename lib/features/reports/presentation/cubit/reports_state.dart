part of 'reports_cubit.dart';

enum ReportStatus { initial, loading, success, failure }

@freezed
class ReportsState with _$ReportsState {
  const factory ReportsState({
    @Default([]) Iterable<TransactionEntity> expenses,
    @Default([]) Iterable<TransactionEntity> incomes,
    @Default(ReportStatus.initial) ReportStatus status,
    @Default(Period.week) Period period,
  }) = _ReportsState;
}
