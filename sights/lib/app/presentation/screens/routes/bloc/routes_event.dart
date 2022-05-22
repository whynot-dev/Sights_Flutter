part of 'routes_bloc.dart';

@freezed
class RoutesEvent with _$RoutesEvent {
  const factory RoutesEvent.init() = Init;
  const factory RoutesEvent.routeClicked() = RouteClicked;
  const factory RoutesEvent.routeDeleteClicked() = RouteDeleteClicked;
}