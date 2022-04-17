part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.init() = Init;
  const factory MapEvent.onMapCreated(GoogleMapController controller) = OnMapCreated;
  const factory MapEvent.onCameraMove(CameraPosition position) = OnCameraMove;
  const factory MapEvent.onMapTap() = OnMapTap;
  const factory MapEvent.myLocationClicked() = MyLocationClicked;
}