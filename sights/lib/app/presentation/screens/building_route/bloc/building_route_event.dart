part of 'building_route_bloc.dart';

@freezed
class BuildingRouteEvent with _$BuildingRouteEvent {
  const factory BuildingRouteEvent.init() = Init;

  const factory BuildingRouteEvent.departureClicked() = DepartureClicked;

  const factory BuildingRouteEvent.destinationClicked() = DestinationClicked;

  const factory BuildingRouteEvent.routePointPicked(
    RoutePointEntity routePoint,
    SelectPointType selectPointType,
  ) = RoutePointPicked;

  const factory BuildingRouteEvent.buildRouteClicked() = BuildRouteClicked;

  const factory BuildingRouteEvent.transportChanged(TransportType transportType) = TransportChanged;
}
