import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/navigation/navigation_type.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/data/repositories/directions_repository.dart';
import 'package:sights/domain/entities/direction.dart';
import 'package:sights/domain/entities/direction_entity.dart';
import 'package:sights/domain/entities/route_point_entity.dart';
import 'package:sights/domain/enums/map_mode.dart';
import 'package:sights/domain/enums/transport_type.dart';

part 'building_route_state.dart';

part 'building_route_event.dart';

part 'building_route_bloc.freezed.dart';

class BuildingRouteBloc extends Bloc<BuildingRouteEvent, BuildingRouteState> {
  BuildingRouteBloc({
    required this.directionsRepository,
  }) : super(BuildingRouteState()) {
    on<Init>(_init);
    on<DepartureClicked>(_departureClicked);
    on<DestinationClicked>(_destinationClicked);
    on<RoutePointPicked>(_routePointPicked);
    on<BuildRouteClicked>(_buildRouteClicked);
    on<TransportChanged>(_transportChanged);
    on<RouteInterestChanged>(_routeInterestChanged);
  }

  final DirectionsRepository directionsRepository;

  FutureOr<void> _init(Init event, Emitter<BuildingRouteState> emit) {
    emit(state.copyWith());
  }

  FutureOr<void> _departureClicked(DepartureClicked event, Emitter<BuildingRouteState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(
      action: SelectPoint(
        navigateAction: NavigateAction.navigateToMap(NavigateType.push, mapMode: MapMode.selectPoint),
        selectPointType: SelectPointType.departure,
      ),
    ));
  }

  FutureOr<void> _destinationClicked(DestinationClicked event, Emitter<BuildingRouteState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(
      action: SelectPoint(
        navigateAction: NavigateAction.navigateToMap(NavigateType.push, mapMode: MapMode.selectPoint),
        selectPointType: SelectPointType.destination,
      ),
    ));
  }

  FutureOr<void> _routePointPicked(RoutePointPicked event, Emitter<BuildingRouteState> emit) {
    switch (event.selectPointType) {
      case SelectPointType.departure:
        emit(state.copyWith(departure: event.routePoint));
        break;
      case SelectPointType.destination:
        emit(state.copyWith(destination: event.routePoint));
        break;
      case SelectPointType.intermediate:
        List<RoutePointEntity> intermediatePoints = List.from(state.intermediatePoints);
        intermediatePoints.add(event.routePoint);
        emit(state.copyWith(intermediatePoints: intermediatePoints));
        break;
    }
    if (state.departure != null && state.destination != null) {
      emit(state.copyWith(buttonEnabled: true));
    }
  }

  FutureOr<void> _buildRouteClicked(BuildRouteClicked event, Emitter<BuildingRouteState> emit) async {
    if (state.departure != null && state.destination != null) {
      String coordinates = '${state.departure!.position.longitude},${state.departure!.position.latitude};'
          '${state.destination!.position.longitude},${state.destination!.position.latitude}'; //<lon>,<lat>;

      Direction? direction;

      Either<Direction, Failure> result = await directionsRepository.buildRoute(
        profile: state.selectedTransport.name,
        coordinates: coordinates,
      );
      result.fold(
        (data) {
          direction = data;
        },
        (error) {},
      );
      if (direction != null) {
        emit(state.copyWith(action: null));
        double valueInterest = 0.625;
        switch (state.routeInterestValue.toInt()) {
          case 0:
            valueInterest = 0.225;
            break;
          case 1:
            valueInterest = 0.425;
            break;
          case 2:
            valueInterest = 0.625;
            break;
          case 3:
            valueInterest = 0.825;
            break;
        }

        emit(
          state.copyWith(
            action: NavigateAction.navigateBack(
              result: DirectionEntity(
                direction: direction!,
                transportType: state.selectedTransport,
                routeInterestValue: valueInterest,
              ),
            ),
          ),
        );
      }
    }
  }

  FutureOr<void> _transportChanged(TransportChanged event, Emitter<BuildingRouteState> emit) {
    emit(state.copyWith(selectedTransport: event.transportType));
  }

  FutureOr<void> _routeInterestChanged(RouteInterestChanged event, Emitter<BuildingRouteState> emit) {
    emit(state.copyWith(routeInterestValue: event.value));
  }
}
