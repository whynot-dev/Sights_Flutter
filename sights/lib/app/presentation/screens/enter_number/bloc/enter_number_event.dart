part of 'enter_number_bloc.dart';

@freezed
class EnterNumberEvent with _$EnterNumberEvent {
  factory EnterNumberEvent.init() = Init;
  factory EnterNumberEvent.phoneChanged(PhoneNumber number) = PhoneChanged;
  factory EnterNumberEvent.sendCodeClicked() = SendCodeClicked;
  factory EnterNumberEvent.popScopeCaught() = PopScopeCaught;
  factory EnterNumberEvent.screenResumed() = ScreenResumed;

}
