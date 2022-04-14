part of 'navigation_bloc.dart';

@freezed
class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.init() = Init;
  const factory NavigationEvent.navigateToRoutes() = NavigateToRoutes;
  const factory NavigationEvent.navigateToMap() = NavigateToMap;
  const factory NavigationEvent.navigateToProfile() = NavigateToProfile;

}