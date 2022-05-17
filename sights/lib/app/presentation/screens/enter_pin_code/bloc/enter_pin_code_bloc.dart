import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/error_codes.dart';
import 'package:local_auth/local_auth.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/navigation/navigation_type.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/enums/message_type.dart';
import 'package:sights/data/gateways/local/preferences_local_gateway.dart';

import 'package:sights/domain/enums/enter_code_type.dart';
import 'package:sights/localization/app_localizations.dart';
import 'package:device_info_plus/device_info_plus.dart';

part 'enter_pin_code_bloc.freezed.dart';

part 'enter_pin_code_event.dart';

part 'enter_pin_code_state.dart';

class EnterPinCodeBloc extends Bloc<EnterPinCodeEvent, EnterPinCodeState> {
  EnterPinCodeBloc({
    required this.localAuth,
    required this.localization,
    required EnterCodeType enterCodeType,
    required this.preferencesLocalGateway,
  }) : super(EnterPinCodeState(enterCodeType: enterCodeType)) {
    on<Init>(_init);
    on<DigitClicked>(_onDigitClicked);
    on<BackspaceClicked>(_onBackspaceClicked);
    on<ContinueClicked>(_onContinueClicked);
    on<ExitClicked>(_onExitClicked);
    this.add(EnterPinCodeEvent.init());
  }

  AppLocalizations localization;
  LocalAuthentication localAuth;
  PreferencesLocalGateway preferencesLocalGateway;

  int _amountTrying = 0;
  Timer? _timer;

  FutureOr<void> _init(Init event, Emitter<EnterPinCodeState> emit) async {
    if (state.enterCodeType == EnterCodeType.enter) {
      BiometricType? biometricType = await preferencesLocalGateway.getBiometricAuthType();
      String? pinCode = await preferencesLocalGateway.getPinCode();
      int codeLength = 4;
      if (pinCode != null) {
        codeLength = pinCode.length;
      }
      if (Platform.isAndroid) {
        var androidInfo = await DeviceInfoPlugin().androidInfo;
        var sdkInt = androidInfo.version.sdkInt;
        if (sdkInt! < 28) {
          biometricType = null;
        }
      }
      emit(state.copyWith(biometricType: biometricType, codeLength: codeLength));
    }
  }

  FutureOr<void> _onDigitClicked(DigitClicked event, Emitter<EnterPinCodeState> emit) async {
    String code = state.code;
    if (state.enterCodeType == EnterCodeType.enter) {
      if (code.length < state.codeLength) {
        code += event.digit;
        emit(state.copyWith(code: code));
      }
      if (code.length == state.codeLength) {
        if (_amountTrying > 4) {
          String error = localization.toMuchTryAgainLater;
          if (_timer == null) {
            _timer = Timer.periodic(const Duration(minutes: 3), (timer) {
              _amountTrying = 0;
              _timer!.cancel();
              _timer = null;
            });
          }
          emit(state.copyWith(error: error));
        } else {
          String? pinCode = await preferencesLocalGateway.getPinCode();
          if (pinCode == state.code) {
            await _navigateToNextScreen(emit);
          } else {
            String error = localization.wrongPinCode;
            _amountTrying++;
            emit(state.copyWith(error: error));
          }
        }
      }
    } else {
      if (code.length < 3) {
        code += event.digit;
        emit(state.copyWith(code: code));
      } else {
        if (code.length < 8) {
          code += event.digit;
        } else {
          code = code.substring(0, code.length - 1) + event.digit;
        }
        emit(state.copyWith(code: code));
      }
    }
  }

  FutureOr<void> _onBackspaceClicked(BackspaceClicked event, Emitter<EnterPinCodeState> emit) {
    String code = state.code;
    if (code.length > 0) {
      code = code.substring(0, code.length - 1);
      emit(state.copyWith(code: code, error: null));
    }
  }

  FutureOr<void> _onContinueClicked(ContinueClicked event, Emitter<EnterPinCodeState> emit) async {
    await preferencesLocalGateway.setPinCode(state.code);
    await _navigateToNextScreen(emit);
  }

  FutureOr<void> _onExitClicked(ExitClicked event, Emitter<EnterPinCodeState> emit) async {
    emit(state.copyWith(action: NavigateToEnterPhoneNumber(NavigateType.pushReplacement)));
  }

  Future<void> _navigateToNextScreen(Emitter<EnterPinCodeState> emit) async {
    emit(state.copyWith(action: null));

    //emit(state.copyWith(action: NavigateToNavigation(NavigateType.pushReplacement)));
  }
}
