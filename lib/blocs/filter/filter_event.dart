part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.filterChanged(
    ActiveFilter filter,
    ActiveSort sort,
  ) = FilterChanged;
  const factory FilterEvent.updateTransactions(
    List<Transaction> transactions,
  ) = UpdateTransactions;
}
