part of 'confirm_phone_bloc.dart';

@freezed
class ConfirmPhoneEvent with _$ConfirmPhoneEvent {
  factory ConfirmPhoneEvent.init() = Init;
  factory ConfirmPhoneEvent.screenOpened() = ScreenOpened;
  factory ConfirmPhoneEvent.codeUpdated(String code) = CodeUpdated;
  factory ConfirmPhoneEvent.changePhoneClicked() = ChangePhoneClicked;
  factory ConfirmPhoneEvent.resendCodeClicked() = ResendCodeClicked;
  factory ConfirmPhoneEvent.countOfSecondsToResendChanged(int countSecondsToResendChanged) =
      CountOfSecondsToResendChanged;
  factory ConfirmPhoneEvent.codeChanged(String code) = CodeChanged;
  factory ConfirmPhoneEvent.popScopeCaught() = PopScopeCaught;

}
