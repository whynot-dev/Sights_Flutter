import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'routes_state.dart';

part 'routes_event.dart';

part 'routes_bloc.freezed.dart';

class RoutesBloc extends Bloc<RoutesEvent, RoutesState> {
  RoutesBloc() : super(RoutesState()) {
    on<Init>(_init);
    this.add(RoutesEvent.init());
  }

  late Box _box;

  FutureOr<void> _init(Init event, Emitter<RoutesState> emit) async {
    _box = await Hive.openBox('routes');
    

    emit(state.copyWith());
  }

  FutureOr<void> _routeClicked(RouteClicked event, Emitter<RoutesState> emit) async {
    emit(state.copyWith());
  }

  FutureOr<void> _routeDeleteClicked(RouteDeleteClicked event, Emitter<RoutesState> emit) async {
    emit(state.copyWith());
  }

}
