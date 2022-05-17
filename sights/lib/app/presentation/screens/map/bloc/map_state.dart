part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  factory MapState({
    BlocAction? action,
    @Default(false) bool mapLoaded,
    @Default(false) bool isLoading,
    @Default(const CameraPosition(target: LatLng(47.222078, 39.720358), zoom: 13)) CameraPosition cameraPosition,
    @Default([]) List<Feature> sights,
    Feature? selectedSightPoint,
    @Default(false) bool sightInfoIsExpanded,
  }) = _MapState;
}
