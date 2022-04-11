part of 'confirm_phone_bloc.dart';

@freezed
class ConfirmPhoneState with _$ConfirmPhoneState {
  factory ConfirmPhoneState({
    BlocAction? action,
    required String phoneNumber,
    @Default('') String code,
    @Default(0) int countOfSecondsToResend,
    @Default(true) bool isCodeValid,
    String? errorMessage,
  }) = _ConfirmPhoneState;
}

class RevertBack extends BlocAction {}
