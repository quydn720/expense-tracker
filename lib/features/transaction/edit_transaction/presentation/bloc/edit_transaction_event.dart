part of 'edit_transaction_bloc.dart';

@freezed
class EditTransactionEvent with _$EditTransactionEvent {
  const factory EditTransactionEvent.editTransactionSubmitNewTransaction() =
      EditTransactionSubmitNewTransaction;
  const factory EditTransactionEvent.editTransactionDeleteTransaction() =
      EditTransactionDeleteTransaction;
  const factory EditTransactionEvent.editTransactionDescriptionChanged(
    String description,
  ) = EditTransactionDescriptionChanged;
  const factory EditTransactionEvent.editTransactionAmountChanged(
    String amount,
  ) = EditTransactionAmountChanged;
  const factory EditTransactionEvent.editTransactionRepeatToggled() =
      EditTransactionRepeatToggled;
  const factory EditTransactionEvent.editTransactionCategoryChanged(
    CategoryEntity? category,
  ) = EditTransactionCategoryChanged;
  const factory EditTransactionEvent.editTransactionImageChosen(
    XFile imgStr,
  ) = EditTransactionImageChosen;
  const factory EditTransactionEvent.editTransactionSelectAttachmentClose() =
      EditTransactionSelectAttachmentClose;
  const factory EditTransactionEvent.editTransactionSelectAttachment() =
      EditTransactionSelectAttachment;
  const factory EditTransactionEvent.editTransactionDateChanged(
    DateTime? date,
  ) = EditTransactionDateChanged;
}

// class EditTransactionRepeatToggled extends EditTransactionEvent {}

// class EditTransactionDescriptionChanged extends EditTransactionEvent {
//   const EditTransactionDescriptionChanged(this.description);

//   final String description;
// }

// class EditTransactionAmountChanged extends EditTransactionEvent {
//   const EditTransactionAmountChanged(this.amount);

//   final String amount;
// }

// class EditTransactionCategoryChanged extends EditTransactionEvent {
//   const EditTransactionCategoryChanged(this.category);

//   final Category category;
// }

// class EditTransactionSelectAttachment extends EditTransactionEvent {}

// class EditTransactionSelectAttachmentClose extends EditTransactionEvent {}

// class EditTransactionImageChosen extends EditTransactionEvent {
//   const EditTransactionImageChosen(this.imgStr);

//   final XFile imgStr;
// }
