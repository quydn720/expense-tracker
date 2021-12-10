import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_event.dart';
part 'tab_state.dart';
part 'tab_bloc.freezed.dart';

class TabBloc extends Bloc<TabEvent, AppTab> {
  TabBloc() : super(AppTab.home) {
    on<TabChanged>((event, emit) => emit(event.tab));
  }
}
