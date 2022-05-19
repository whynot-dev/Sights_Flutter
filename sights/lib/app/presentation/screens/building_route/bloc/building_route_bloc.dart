import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/domain/entities/route_point_entity.dart';

part 'building_route_state.dart';

part 'building_route_event.dart';

part 'building_route_bloc.freezed.dart';

class BuildingRouteBloc extends Bloc<BuildingRouteEvent, BuildingRouteState> {
  BuildingRouteBloc() : super(BuildingRouteState()) {
    on<Init>(_init);
  }

  FutureOr<void> _init(Init event, Emitter<BuildingRouteState> emit) {
    emit(state.copyWith());
  }
}
