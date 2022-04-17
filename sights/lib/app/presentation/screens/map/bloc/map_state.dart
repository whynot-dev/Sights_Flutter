part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  factory MapState({
    BlocAction? action,
    @Default(false) bool mapLoaded,
    @Default(false) bool isLoading,
    @Default(const CameraPosition(target: LatLng(55.759171, 37.619101), zoom: 15)) CameraPosition cameraPosition,
    @Default([]) List<String> sights,
  }) = _MapState;
}
