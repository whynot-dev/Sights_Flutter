import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/navigation/navigation_type.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/core/utils/phone_utils/phone_number.dart';
import 'package:sights/data/gateways/local/preferences_local_gateway.dart';
import 'package:sights/data/repositories/authorization_repository.dart';

part 'enter_number_bloc.freezed.dart';

part 'enter_number_event.dart';

part 'enter_number_state.dart';

class EnterNumberBloc extends Bloc<EnterNumberEvent, EnterNumberState> {
  EnterNumberBloc({
    required this.authorizationRepository,
    required this.preferencesLocalGateway,
  }) : super(EnterNumberState()) {
    on<Init>(_onInit);
    on<PhoneChanged>(_onPhoneChanged);
    on<SendCodeClicked>(_onSendCodeClicked);
    on<PopScopeCaught>(_popScopeCaught);
    on<ScreenResumed>(_screenResumed);
  }

  AuthorizationRepository authorizationRepository;
  PreferencesLocalGateway preferencesLocalGateway;

  FutureOr<void> _onPhoneChanged(PhoneChanged event, Emitter<EnterNumberState> emit) async {
    bool? validNumber = await event.number.isValid;
    emit(state.copyWith(phoneNumber: event.number, buttonEnabled: validNumber == true));
  }

  FutureOr<void> _onSendCodeClicked(SendCodeClicked event, Emitter<EnterNumberState> emit) async {
    if (state.phoneNumber != null) {
      await _sendCode(emit);
    }
  }

  FutureOr<void> _onInit(Init event, Emitter<EnterNumberState> emit) {}

  FutureOr<void> _screenResumed(ScreenResumed event, Emitter<EnterNumberState> emit) async {
    bool? validNumber = await state.phoneNumber?.isValid;
    emit(state.copyWith(buttonEnabled: validNumber == true));
  }

  FutureOr<void> _popScopeCaught(PopScopeCaught event, Emitter<EnterNumberState> emit) async {
    if (!state.isLoading) emit(state.copyWith(action: NavigateBack()));
  }

  FutureOr<void> _sendCode(Emitter<EnterNumberState> emit) async {
    // emit(state.copyWith(action: ShowLoader()));
    emit(state.copyWith(isLoading: true, buttonEnabled: false));
    // emit(state.copyWith(buttonEnabled: false));
    String phone = state.phoneNumber!.number.replaceAll(RegExp(r'[^0-9]'), '');
    var result = await authorizationRepository.login(username: phone);
    String? token;
    Failure? error;
    result.fold(
      (data) => token = data.token,
      (failure) => error = failure,
    );
    emit(state.copyWith(isLoading: false,buttonEnabled: true));

    if (token != null) {
      await preferencesLocalGateway.setTemporaryToken(token);

      emit(
        state.copyWith(
          action: NavigateToConfirmPhone(
            NavigateType.push,
            phoneNumber: (await state.phoneNumber!.number),
          ),
        ),
      );
      preferencesLocalGateway.setPhoneNumber(state.phoneNumber!.number);
    } else {
      await _handleError(emit, error);
    }
    emit(state.copyWith(action: null));
  }

  FutureOr<void> _handleError(Emitter<EnterNumberState> emit, Failure? error) async {}
}
