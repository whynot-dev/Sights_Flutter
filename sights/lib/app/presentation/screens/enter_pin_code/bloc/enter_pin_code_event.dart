part of 'enter_pin_code_bloc.dart';

@freezed
class EnterPinCodeEvent with _$EnterPinCodeEvent {
  factory EnterPinCodeEvent.init() = Init;
  factory EnterPinCodeEvent.digitClicked(String digit) = DigitClicked;
  factory EnterPinCodeEvent.backspaceClicked() = BackspaceClicked;
  factory EnterPinCodeEvent.enterUsingBiometricClicked() = EnterUsingBiometricClicked;
  factory EnterPinCodeEvent.continueClicked() = ContinueClicked;
  factory EnterPinCodeEvent.exitClicked() = ExitClicked;
}
