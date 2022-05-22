part of 'building_route_bloc.dart';

@freezed
class BuildingRouteState with _$BuildingRouteState {
  factory BuildingRouteState({
    BlocAction? action,
    RoutePointEntity? departure,
    @Default([]) List<RoutePointEntity> intermediatePoints,
    RoutePointEntity? destination,
    @Default(TransportType.walking) TransportType selectedTransport,
    @Default(false) bool buttonEnabled,
    @Default(1) double routeInterestValue,
  }) = _BuildingRouteState;
}

class SelectPoint extends BlocAction {
  SelectPoint({
    required this.navigateAction,
    required this.selectPointType,
  });

  NavigateAction navigateAction;
  SelectPointType selectPointType;
}

enum SelectPointType {
  departure,
  destination,
  intermediate,
}
