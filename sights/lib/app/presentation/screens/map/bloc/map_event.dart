part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.init() = Init;
  const factory MapEvent.onMapCreated(GoogleMapController controller) = OnMapCreated;
  const factory MapEvent.onCameraMove(CameraPosition position) = OnCameraMove;
  const factory MapEvent.onCameraMoveStarted() = OnCameraMoveStarted;
  const factory MapEvent.getSights() = GetSights;
  const factory MapEvent.onMapTap() = OnMapTap;
  const factory MapEvent.myLocationClicked() = MyLocationClicked;
  const factory MapEvent.sightClicked(Feature sight) = SightClicked;
  const factory MapEvent.sightInfoSlideChanged(double position) = SightInfoSlideChanged;
  const factory MapEvent.showMessageNoGeo() = ShowMessageNoGeo;
}