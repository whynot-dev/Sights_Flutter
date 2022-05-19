part of 'building_route_bloc.dart';

@freezed
class BuildingRouteState with _$BuildingRouteState {
  factory BuildingRouteState({
    BlocAction? action,
    RoutePointEntity? departure,
    RoutePointEntity? destination,
  }) = _BuildingRouteState;
}
