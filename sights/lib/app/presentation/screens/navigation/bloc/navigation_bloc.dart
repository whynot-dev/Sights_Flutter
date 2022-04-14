import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/data/gateways/local/preferences_local_gateway.dart';


part 'navigation_state.dart';

part 'navigation_event.dart';

part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc({
    required this.preferencesLocalGateway,
  }) : super(NavigationState()) {
    on<Init>(_init);
    on<NavigateToRoutes>(_navigateToRoutes);
    on<NavigateToMap>(_navigateToMap);
    on<NavigateToProfile>(_navigateToProfile);
    add(NavigationEvent.init());
  }

  final PreferencesLocalGateway preferencesLocalGateway;


  FutureOr<void> _init(Init event, Emitter<NavigationState> emit) async {

  }

  FutureOr<void> _navigateToRoutes(NavigateToRoutes event, Emitter<NavigationState> emit) async {
    emit(state.copyWith(selectedTabIndex: 0));
  }

  FutureOr<void> _navigateToMap(NavigateToMap event, Emitter<NavigationState> emit) async {
    emit(state.copyWith(selectedTabIndex: 1));
  }

  FutureOr<void> _navigateToProfile(NavigateToProfile event, Emitter<NavigationState> emit) async {
    emit(state.copyWith(selectedTabIndex: 2));
  }
}
