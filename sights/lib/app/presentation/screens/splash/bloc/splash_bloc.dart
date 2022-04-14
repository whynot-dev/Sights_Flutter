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
    on<CheckAuthorizationStatus>(_checkAuthorizationStatus);
  }

  PreferencesLocalGateway preferencesLocalGateway;


  FutureOr<void> _checkAuthorizationStatus(CheckAuthorizationStatus event, Emitter<SplashState> emit) async {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action:NavigateAction.navigateToNavigation(NavigateType.pushReplacement)));
    // String? token = await preferencesLocalGateway.getToken();
    // if (token != null ) {
    //   emit(state.copyWith(action: NavigateToEnterPhoneNumber(NavigateType.pushReplacement)));
    // }

  }

}
