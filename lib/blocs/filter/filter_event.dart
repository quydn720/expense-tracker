part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.transactionsUpdated(
    List<Transaction> transactions,
  ) = TransactionsUpdated;
  const factory FilterEvent.filterReseted() = FilterReseted;
  const factory FilterEvent.filterSubmitted() = FilterSubmitted;
  const factory FilterEvent.sortChanged(ActiveSort sort) = SortChanged;
  const factory FilterEvent.filterChanged(ActiveFilter filter) = FilterChanged;
}
