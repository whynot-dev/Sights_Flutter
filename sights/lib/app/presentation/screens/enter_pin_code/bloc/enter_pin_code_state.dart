part of 'enter_pin_code_bloc.dart';

@freezed
class EnterPinCodeState with _$EnterPinCodeState {
  factory EnterPinCodeState({
    BlocAction? action,
    required EnterCodeType enterCodeType,
    @Default('') String code,
    @Default(4) int codeLength,
    String? error,
    BiometricType? biometricType,
  }) = _EnterPinCodeState;
}
