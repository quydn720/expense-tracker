import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_form_event.dart';
part 'transaction_form_state.dart';
part 'transaction_form_bloc.freezed.dart';

class TransactionFormBloc
    extends Bloc<TransactionFormEvent, TransactionFormState> {
  TransactionFormBloc() : super(const _Initial()) {
    on<TransactionFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
