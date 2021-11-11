part of 'tab_bloc.dart';

@freezed
class TabEvent with _$TabEvent {
  const factory TabEvent.tabChanged(AppTab tab) = TabChanged;
}
