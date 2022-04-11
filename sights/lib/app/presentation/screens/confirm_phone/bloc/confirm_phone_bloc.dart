import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libphonenumber_plugin/libphonenumber_plugin.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/navigation/navigation_type.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/enums/message_type.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/core/utils/phone_utils/phone_number.dart';
import 'package:sights/data/gateways/local/preferences_local_gateway.dart';
import 'package:sights/data/repositories/authorization_repository.dart';
import 'package:sights/domain/enums/enter_code_type.dart';
import 'package:sights/localization/app_localizations.dart';

part 'confirm_phone_bloc.freezed.dart';
part 'confirm_phone_event.dart';
part 'confirm_phone_state.dart';

class ConfirmPhoneBloc extends Bloc<ConfirmPhoneEvent, ConfirmPhoneState> {
  ConfirmPhoneBloc({
    required String phoneNumber,
    required this.authorizationRepository,
    required this.preferencesLocalGateway,
    required this.localizations,
  }) : super(ConfirmPhoneState(phoneNumber: phoneNumber)) {
    on<Init>(_onInit);
    on<ScreenOpened>(_onScreenOpened);
    on<CodeUpdated>(_onCodeUpdated);
    on<ChangePhoneClicked>(_onChangePhoneClicked);
    on<ResendCodeClicked>(_onResendCodeClicked);
    on<CountOfSecondsToResendChanged>(_onCountOfSecondsToResendChanged);
    on<CodeChanged>(_onCodeChanged);
    on<PopScopeCaught>(_popScopeCaught);
    this.add(ConfirmPhoneEvent.init());
  }

  AuthorizationRepository authorizationRepository;
  PreferencesLocalGateway preferencesLocalGateway;
  AppLocalizations localizations;


  Timer? _timer;
  int _currentCountSecondsToResend = 0;

  static const int _countSecondsToResend = 59;

  FutureOr<void> _onInit(Init event, Emitter<ConfirmPhoneState> emit) async {
    _resetTimer();
    //_sendCode();
  }

  void _resetTimer() {
    _timer?.cancel();
    _currentCountSecondsToResend = _countSecondsToResend;
    this.add(CountOfSecondsToResendChanged(_currentCountSecondsToResend));
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_currentCountSecondsToResend > 0) {
        this.add(CountOfSecondsToResendChanged(--_currentCountSecondsToResend));
      } else {
        timer.cancel();
      }
    });
  }

  // Stream<ConfirmPhoneState> _handleError(
  //   Failure? error,
  // ) async* {
  //   if (error is RequestFailure) {
  //     if (error.code == 403) {
  //       yield state.copyWith(isCodeValid: false, action: HideLoader());
  //     } else {
  //       yield state.copyWith(action: ShowMessage(messageType: MessageType.serverError));
  //     }
  //   }
  //   if (error is NetworkFailure) {
  //     yield state.copyWith(action: ShowMessage(messageType: MessageType.noConnection));
  //   }
  //   if (error is UndefinedFailure) {
  //     yield state.copyWith(action: ShowMessage(messageType: MessageType.serverError));
  //   }
  // }

  FutureOr<void> _onScreenOpened(ScreenOpened event, Emitter<ConfirmPhoneState> emit) {}

  FutureOr<void> _popScopeCaught(PopScopeCaught event, Emitter<ConfirmPhoneState> emit) async {
    emit(state.copyWith(action: RevertBack()));
  }

  FutureOr<void> _onCodeUpdated(CodeUpdated event, Emitter<ConfirmPhoneState> emit) async {
    emit(state.copyWith(code: event.code));
  }

  FutureOr<void> _onChangePhoneClicked(ChangePhoneClicked event, Emitter<ConfirmPhoneState> emit) async {
    emit(state.copyWith(action: RevertBack()));
  }

  FutureOr<void> _onResendCodeClicked(ResendCodeClicked event, Emitter<ConfirmPhoneState> emit) async {
    _resetTimer();
    if(_currentCountSecondsToResend >= 0) {
      await _resendCode(emit);
    }
  }

  FutureOr<void> _onCountOfSecondsToResendChanged(
    CountOfSecondsToResendChanged event,
    Emitter<ConfirmPhoneState> emit,
  ) async {
    emit(state.copyWith(countOfSecondsToResend: event.countSecondsToResendChanged));
  }

  FutureOr<void> _onCodeChanged(CodeChanged event, Emitter<ConfirmPhoneState> emit) async {
    emit(state.copyWith(code: event.code));
    if (state.code.length == 6) {
      await _checkCode(emit);
    }
  }

  FutureOr<void> _checkCode(Emitter<ConfirmPhoneState> emit) async {
    emit(state.copyWith(action: ShowLoader()));
    String? temporaryToken = await preferencesLocalGateway.getTemporaryToken();
    if (temporaryToken == null) {
      return;
    }
    var result = await authorizationRepository.checkCode(token: temporaryToken, code: state.code);
    String? token;
    String? refreshToken;
    Failure? error;
    result.fold(
      (data) {
        token = data.token;
        refreshToken = data.refresh;
      },
      (failure) => error = failure,
    );

    emit(state.copyWith(action: HideLoader()));
    if (error == null) {
      await preferencesLocalGateway.setTemporaryToken(null);
      await preferencesLocalGateway.setToken(token);
      await preferencesLocalGateway.setRefreshToken(refreshToken);
      emit(state.copyWith(action: NavigateToEnterPinCode(NavigateType.push, enterCodeType: EnterCodeType.create)));
    } else {
      await _handleError(emit,error);
    }
  }

  FutureOr<void> _handleError(Emitter<ConfirmPhoneState> emit, Failure? error) async {
    if (error is RequestFailure) {
      switch (error.code) {
        case 400:
          emit(state.copyWith(errorMessage: localizations.wrongCodeFromSms));
          break;
        default:
          emit(state.copyWith(action: ShowMessage(messageType: MessageType.serverError)));
      }
    }
    if (error is NetworkFailure) {
      emit(state.copyWith(action: ShowMessage(messageType: MessageType.noConnection)));
    }
    if (error is UndefinedFailure) {
      emit(state.copyWith(action: ShowMessage(messageType: MessageType.serverError)));
    }
  }

  Future<void> _resendCode(Emitter<ConfirmPhoneState> emit) async {
    String? temporaryToken = await preferencesLocalGateway.getTemporaryToken();
    if (temporaryToken == null) {
      return;
    }
    await authorizationRepository.resendCode(token: temporaryToken);
  }
}
