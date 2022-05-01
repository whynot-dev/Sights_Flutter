part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  factory MapState({
    BlocAction? action,
    @Default(false) bool mapLoaded,
    @Default(false) bool isLoading,
    @Default(const CameraPosition(target: LatLng(39.705013, 47.224373), zoom: 15)) CameraPosition cameraPosition,
    @Default([]) List<String> sights,
  }) = _MapState;
}
