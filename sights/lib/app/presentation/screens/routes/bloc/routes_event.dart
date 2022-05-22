part of 'routes_bloc.dart';

@freezed
class RoutesEvent with _$RoutesEvent {
  const factory RoutesEvent.init() = Init;
  const factory RoutesEvent.routeClicked(int index) = RouteClicked;
  const factory RoutesEvent.routeDeleteClicked(int index) = RouteDeleteClicked;
}