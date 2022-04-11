part of 'enter_number_bloc.dart';

@freezed
class EnterNumberState with _$EnterNumberState {
  factory EnterNumberState({
    BlocAction? action,
    PhoneNumber? phoneNumber,
    @Default(false) bool isLoading,
    @Default(false) bool buttonEnabled,
  }) = _EnterNumberState;
}
