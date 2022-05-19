part of 'building_route_bloc.dart';

@freezed
class BuildingRouteEvent with _$BuildingRouteEvent {
  const factory BuildingRouteEvent.init() = Init;
  const factory BuildingRouteEvent.departureClicked() = DepartureClicked;
  const factory BuildingRouteEvent.destinationClicked() = DestinationClicked;
}