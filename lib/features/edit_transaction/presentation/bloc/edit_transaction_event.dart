part of 'edit_transaction_bloc.dart';

abstract class EditTransactionEvent extends Equatable {
  const EditTransactionEvent();

  @override
  List<Object> get props => [];
}

class SubmitNewTransaction extends EditTransactionEvent {}

class EditTransactionRepeatToggle extends EditTransactionEvent {}

class EditTransactionDescriptionChanged extends EditTransactionEvent {
  const EditTransactionDescriptionChanged(this.description);

  final String description;
}

class EditTransactionAmountChanged extends EditTransactionEvent {
  const EditTransactionAmountChanged(this.amount);

  final String amount;
}

class EditTransactionSelectAttachment extends EditTransactionEvent {}

class EditTransactionSelectAttachmentClose extends EditTransactionEvent {}

class EditTransactionImageChosen extends EditTransactionEvent {
  const EditTransactionImageChosen(this.imgStr);

  final XFile imgStr;
}
