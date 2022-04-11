import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/navigation/navigation_type.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/data/gateways/local/preferences_local_gateway.dart';
import 'package:sights/domain/enums/enter_code_type.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({
    required this.preferencesLocalGateway,
  }) : super(SplashState()) {
    this.add(SplashEvent.checkAuthorizationStatus());
  }

  PreferencesLocalGateway preferencesLocalGateway;

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    if (event is CheckAuthorizationStatus) {
     // await preferencesLocalGateway.setPinCode('1398');
//      await preferencesLocalGateway.setPhoneNumber('1398');
//      await preferencesLocalGateway.setBiometricAuthType(BiometricType.fingerprint);
      String? token = await preferencesLocalGateway.getToken();
      String? phoneNumber = await preferencesLocalGateway.getPhoneNumber();
      String? pinCode = await preferencesLocalGateway.getPinCode();
        if (token != null && pinCode != null && phoneNumber != null) {
          yield state.copyWith(action: NavigateToEnterPinCode(NavigateType.pushReplacement, enterCodeType: EnterCodeType.enter));
        } else {
          yield state.copyWith(action: NavigateToEnterPhoneNumber(NavigateType.pushReplacement));
        }
      //yield state.copyWith(action:NavigateAction.navigateToNavigation(NavigateType.pushReplacement));
      // yield state.copyWith(action:NavigateAction.navigateToProduct(NavigateType.pushReplacement));
    }
  }
}
