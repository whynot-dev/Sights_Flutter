part of 'confirm_account_bloc.dart';

@freezed
class ConfirmAccountEvent with _$ConfirmAccountEvent {
  factory ConfirmAccountEvent.confirmClicked() = ConfirmClicked;
  factory ConfirmAccountEvent.notNowClicked() = NotNowClicked;
}
