part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.init() = Init;
  const factory MapEvent.onBackClicked() = OnBackClicked;
  const factory MapEvent.onMapCreated(GoogleMapController controller) = OnMapCreated;
  const factory MapEvent.onCameraMove(CameraPosition position) = OnCameraMove;
  const factory MapEvent.onCameraMoveStarted() = OnCameraMoveStarted;
  const factory MapEvent.onCameraIdle() = OnCameraIdle;
  const factory MapEvent.zoomPlusClicked() = ZoomPlusClicked;
  const factory MapEvent.zoomMinusClicked() = ZoomMinusClicked;
  const factory MapEvent.getSights() = GetSights;
  const factory MapEvent.onMapTap(LatLng position) = OnMapTap;
  const factory MapEvent.myLocationClicked() = MyLocationClicked;
  const factory MapEvent.sightClicked(SightEntity sight) = SightClicked;
  const factory MapEvent.sightInfoSlideChanged(double position) = SightInfoSlideChanged;
  const factory MapEvent.showMessageNoGeo() = ShowMessageNoGeo;
  const factory MapEvent.routesClicked() = RoutesClicked;
  const factory MapEvent.routeButtonClicked() = RouteButtonClicked;
  const factory MapEvent.filterClicked() = FilterClicked;
  const factory MapEvent.filtersChanged(List<SightType> sightFilters) = FiltersChanged;
  const factory MapEvent.getCurrentAddress() = GetCurrentAddress;
  const factory MapEvent.selectThisAddressClicked() = SelectThisAddressClicked;
  const factory MapEvent.directionChanged(DirectionEntity directionEntity) = DirectionChanged;
  const factory MapEvent.buildRouteWithSights(List<LatLng> points) = BuildRouteWithSights;
  const factory MapEvent.saveRouteClicked() = SaveRouteClicked;
  const factory MapEvent.closeRouteClicked() = CloseRouteClicked;
}