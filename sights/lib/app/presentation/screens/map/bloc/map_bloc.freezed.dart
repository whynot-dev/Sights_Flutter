// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapStateTearOff {
  const _$MapStateTearOff();

  _MapState call(
      {BlocAction? action,
      required MapMode mapMode,
      bool mapLoaded = false,
      bool isLoading = false,
      CameraPosition cameraPosition =
          const CameraPosition(target: LatLng(47.222078, 39.720358), zoom: 14),
      List<SightEntity> sights = const [],
      SightEntity? selectedSightPoint,
      List<SightType> sightFilters = SightType.values,
      bool sightInfoIsExpanded = false,
      LatLng? locationMarkerPosition,
      String? currentAddress,
      Direction? currentDirection,
      TransportType selectedTransport = TransportType.walking}) {
    return _MapState(
      action: action,
      mapMode: mapMode,
      mapLoaded: mapLoaded,
      isLoading: isLoading,
      cameraPosition: cameraPosition,
      sights: sights,
      selectedSightPoint: selectedSightPoint,
      sightFilters: sightFilters,
      sightInfoIsExpanded: sightInfoIsExpanded,
      locationMarkerPosition: locationMarkerPosition,
      currentAddress: currentAddress,
      currentDirection: currentDirection,
      selectedTransport: selectedTransport,
    );
  }
}

/// @nodoc
const $MapState = _$MapStateTearOff();

/// @nodoc
mixin _$MapState {
  BlocAction? get action => throw _privateConstructorUsedError;
  MapMode get mapMode => throw _privateConstructorUsedError;
  bool get mapLoaded => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  CameraPosition get cameraPosition => throw _privateConstructorUsedError;
  List<SightEntity> get sights => throw _privateConstructorUsedError;
  SightEntity? get selectedSightPoint => throw _privateConstructorUsedError;
  List<SightType> get sightFilters => throw _privateConstructorUsedError;
  bool get sightInfoIsExpanded => throw _privateConstructorUsedError;
  LatLng? get locationMarkerPosition => throw _privateConstructorUsedError;
  String? get currentAddress => throw _privateConstructorUsedError;
  Direction? get currentDirection => throw _privateConstructorUsedError;
  TransportType get selectedTransport => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      MapMode mapMode,
      bool mapLoaded,
      bool isLoading,
      CameraPosition cameraPosition,
      List<SightEntity> sights,
      SightEntity? selectedSightPoint,
      List<SightType> sightFilters,
      bool sightInfoIsExpanded,
      LatLng? locationMarkerPosition,
      String? currentAddress,
      Direction? currentDirection,
      TransportType selectedTransport});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? mapMode = freezed,
    Object? mapLoaded = freezed,
    Object? isLoading = freezed,
    Object? cameraPosition = freezed,
    Object? sights = freezed,
    Object? selectedSightPoint = freezed,
    Object? sightFilters = freezed,
    Object? sightInfoIsExpanded = freezed,
    Object? locationMarkerPosition = freezed,
    Object? currentAddress = freezed,
    Object? currentDirection = freezed,
    Object? selectedTransport = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      mapMode: mapMode == freezed
          ? _value.mapMode
          : mapMode // ignore: cast_nullable_to_non_nullable
              as MapMode,
      mapLoaded: mapLoaded == freezed
          ? _value.mapLoaded
          : mapLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraPosition: cameraPosition == freezed
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
      sights: sights == freezed
          ? _value.sights
          : sights // ignore: cast_nullable_to_non_nullable
              as List<SightEntity>,
      selectedSightPoint: selectedSightPoint == freezed
          ? _value.selectedSightPoint
          : selectedSightPoint // ignore: cast_nullable_to_non_nullable
              as SightEntity?,
      sightFilters: sightFilters == freezed
          ? _value.sightFilters
          : sightFilters // ignore: cast_nullable_to_non_nullable
              as List<SightType>,
      sightInfoIsExpanded: sightInfoIsExpanded == freezed
          ? _value.sightInfoIsExpanded
          : sightInfoIsExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      locationMarkerPosition: locationMarkerPosition == freezed
          ? _value.locationMarkerPosition
          : locationMarkerPosition // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      currentAddress: currentAddress == freezed
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      currentDirection: currentDirection == freezed
          ? _value.currentDirection
          : currentDirection // ignore: cast_nullable_to_non_nullable
              as Direction?,
      selectedTransport: selectedTransport == freezed
          ? _value.selectedTransport
          : selectedTransport // ignore: cast_nullable_to_non_nullable
              as TransportType,
    ));
  }
}

/// @nodoc
abstract class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) then) =
      __$MapStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      MapMode mapMode,
      bool mapLoaded,
      bool isLoading,
      CameraPosition cameraPosition,
      List<SightEntity> sights,
      SightEntity? selectedSightPoint,
      List<SightType> sightFilters,
      bool sightInfoIsExpanded,
      LatLng? locationMarkerPosition,
      String? currentAddress,
      Direction? currentDirection,
      TransportType selectedTransport});
}

/// @nodoc
class __$MapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(_MapState _value, $Res Function(_MapState) _then)
      : super(_value, (v) => _then(v as _MapState));

  @override
  _MapState get _value => super._value as _MapState;

  @override
  $Res call({
    Object? action = freezed,
    Object? mapMode = freezed,
    Object? mapLoaded = freezed,
    Object? isLoading = freezed,
    Object? cameraPosition = freezed,
    Object? sights = freezed,
    Object? selectedSightPoint = freezed,
    Object? sightFilters = freezed,
    Object? sightInfoIsExpanded = freezed,
    Object? locationMarkerPosition = freezed,
    Object? currentAddress = freezed,
    Object? currentDirection = freezed,
    Object? selectedTransport = freezed,
  }) {
    return _then(_MapState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      mapMode: mapMode == freezed
          ? _value.mapMode
          : mapMode // ignore: cast_nullable_to_non_nullable
              as MapMode,
      mapLoaded: mapLoaded == freezed
          ? _value.mapLoaded
          : mapLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraPosition: cameraPosition == freezed
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
      sights: sights == freezed
          ? _value.sights
          : sights // ignore: cast_nullable_to_non_nullable
              as List<SightEntity>,
      selectedSightPoint: selectedSightPoint == freezed
          ? _value.selectedSightPoint
          : selectedSightPoint // ignore: cast_nullable_to_non_nullable
              as SightEntity?,
      sightFilters: sightFilters == freezed
          ? _value.sightFilters
          : sightFilters // ignore: cast_nullable_to_non_nullable
              as List<SightType>,
      sightInfoIsExpanded: sightInfoIsExpanded == freezed
          ? _value.sightInfoIsExpanded
          : sightInfoIsExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      locationMarkerPosition: locationMarkerPosition == freezed
          ? _value.locationMarkerPosition
          : locationMarkerPosition // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      currentAddress: currentAddress == freezed
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      currentDirection: currentDirection == freezed
          ? _value.currentDirection
          : currentDirection // ignore: cast_nullable_to_non_nullable
              as Direction?,
      selectedTransport: selectedTransport == freezed
          ? _value.selectedTransport
          : selectedTransport // ignore: cast_nullable_to_non_nullable
              as TransportType,
    ));
  }
}

/// @nodoc

class _$_MapState implements _MapState {
  _$_MapState(
      {this.action,
      required this.mapMode,
      this.mapLoaded = false,
      this.isLoading = false,
      this.cameraPosition =
          const CameraPosition(target: LatLng(47.222078, 39.720358), zoom: 14),
      this.sights = const [],
      this.selectedSightPoint,
      this.sightFilters = SightType.values,
      this.sightInfoIsExpanded = false,
      this.locationMarkerPosition,
      this.currentAddress,
      this.currentDirection,
      this.selectedTransport = TransportType.walking});

  @override
  final BlocAction? action;
  @override
  final MapMode mapMode;
  @JsonKey(defaultValue: false)
  @override
  final bool mapLoaded;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(
      defaultValue:
          const CameraPosition(target: LatLng(47.222078, 39.720358), zoom: 14))
  @override
  final CameraPosition cameraPosition;
  @JsonKey(defaultValue: const [])
  @override
  final List<SightEntity> sights;
  @override
  final SightEntity? selectedSightPoint;
  @JsonKey(defaultValue: SightType.values)
  @override
  final List<SightType> sightFilters;
  @JsonKey(defaultValue: false)
  @override
  final bool sightInfoIsExpanded;
  @override
  final LatLng? locationMarkerPosition;
  @override
  final String? currentAddress;
  @override
  final Direction? currentDirection;
  @JsonKey(defaultValue: TransportType.walking)
  @override
  final TransportType selectedTransport;

  @override
  String toString() {
    return 'MapState(action: $action, mapMode: $mapMode, mapLoaded: $mapLoaded, isLoading: $isLoading, cameraPosition: $cameraPosition, sights: $sights, selectedSightPoint: $selectedSightPoint, sightFilters: $sightFilters, sightInfoIsExpanded: $sightInfoIsExpanded, locationMarkerPosition: $locationMarkerPosition, currentAddress: $currentAddress, currentDirection: $currentDirection, selectedTransport: $selectedTransport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MapState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.mapMode, mapMode) ||
                const DeepCollectionEquality()
                    .equals(other.mapMode, mapMode)) &&
            (identical(other.mapLoaded, mapLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.mapLoaded, mapLoaded)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.cameraPosition, cameraPosition) ||
                const DeepCollectionEquality()
                    .equals(other.cameraPosition, cameraPosition)) &&
            (identical(other.sights, sights) ||
                const DeepCollectionEquality().equals(other.sights, sights)) &&
            (identical(other.selectedSightPoint, selectedSightPoint) ||
                const DeepCollectionEquality()
                    .equals(other.selectedSightPoint, selectedSightPoint)) &&
            (identical(other.sightFilters, sightFilters) ||
                const DeepCollectionEquality()
                    .equals(other.sightFilters, sightFilters)) &&
            (identical(other.sightInfoIsExpanded, sightInfoIsExpanded) ||
                const DeepCollectionEquality()
                    .equals(other.sightInfoIsExpanded, sightInfoIsExpanded)) &&
            (identical(other.locationMarkerPosition, locationMarkerPosition) ||
                const DeepCollectionEquality().equals(
                    other.locationMarkerPosition, locationMarkerPosition)) &&
            (identical(other.currentAddress, currentAddress) ||
                const DeepCollectionEquality()
                    .equals(other.currentAddress, currentAddress)) &&
            (identical(other.currentDirection, currentDirection) ||
                const DeepCollectionEquality()
                    .equals(other.currentDirection, currentDirection)) &&
            (identical(other.selectedTransport, selectedTransport) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTransport, selectedTransport)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(mapMode) ^
      const DeepCollectionEquality().hash(mapLoaded) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(cameraPosition) ^
      const DeepCollectionEquality().hash(sights) ^
      const DeepCollectionEquality().hash(selectedSightPoint) ^
      const DeepCollectionEquality().hash(sightFilters) ^
      const DeepCollectionEquality().hash(sightInfoIsExpanded) ^
      const DeepCollectionEquality().hash(locationMarkerPosition) ^
      const DeepCollectionEquality().hash(currentAddress) ^
      const DeepCollectionEquality().hash(currentDirection) ^
      const DeepCollectionEquality().hash(selectedTransport);

  @JsonKey(ignore: true)
  @override
  _$MapStateCopyWith<_MapState> get copyWith =>
      __$MapStateCopyWithImpl<_MapState>(this, _$identity);
}

abstract class _MapState implements MapState {
  factory _MapState(
      {BlocAction? action,
      required MapMode mapMode,
      bool mapLoaded,
      bool isLoading,
      CameraPosition cameraPosition,
      List<SightEntity> sights,
      SightEntity? selectedSightPoint,
      List<SightType> sightFilters,
      bool sightInfoIsExpanded,
      LatLng? locationMarkerPosition,
      String? currentAddress,
      Direction? currentDirection,
      TransportType selectedTransport}) = _$_MapState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  MapMode get mapMode => throw _privateConstructorUsedError;
  @override
  bool get mapLoaded => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  CameraPosition get cameraPosition => throw _privateConstructorUsedError;
  @override
  List<SightEntity> get sights => throw _privateConstructorUsedError;
  @override
  SightEntity? get selectedSightPoint => throw _privateConstructorUsedError;
  @override
  List<SightType> get sightFilters => throw _privateConstructorUsedError;
  @override
  bool get sightInfoIsExpanded => throw _privateConstructorUsedError;
  @override
  LatLng? get locationMarkerPosition => throw _privateConstructorUsedError;
  @override
  String? get currentAddress => throw _privateConstructorUsedError;
  @override
  Direction? get currentDirection => throw _privateConstructorUsedError;
  @override
  TransportType get selectedTransport => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MapStateCopyWith<_MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MapEventTearOff {
  const _$MapEventTearOff();

  Init init() {
    return const Init();
  }

  OnBackClicked onBackClicked() {
    return const OnBackClicked();
  }

  OnMapCreated onMapCreated(GoogleMapController controller) {
    return OnMapCreated(
      controller,
    );
  }

  OnCameraMove onCameraMove(CameraPosition position) {
    return OnCameraMove(
      position,
    );
  }

  OnCameraMoveStarted onCameraMoveStarted() {
    return const OnCameraMoveStarted();
  }

  OnCameraIdle onCameraIdle() {
    return const OnCameraIdle();
  }

  GetSights getSights() {
    return const GetSights();
  }

  OnMapTap onMapTap(LatLng position) {
    return OnMapTap(
      position,
    );
  }

  MyLocationClicked myLocationClicked() {
    return const MyLocationClicked();
  }

  SightClicked sightClicked(SightEntity sight) {
    return SightClicked(
      sight,
    );
  }

  SightInfoSlideChanged sightInfoSlideChanged(double position) {
    return SightInfoSlideChanged(
      position,
    );
  }

  ShowMessageNoGeo showMessageNoGeo() {
    return const ShowMessageNoGeo();
  }

  RoutesClicked routesClicked() {
    return const RoutesClicked();
  }

  RouteButtonClicked routeButtonClicked() {
    return const RouteButtonClicked();
  }

  FilterClicked filterClicked() {
    return const FilterClicked();
  }

  FiltersChanged filtersChanged(List<SightType> sightFilters) {
    return FiltersChanged(
      sightFilters,
    );
  }

  GetCurrentAddress getCurrentAddress() {
    return const GetCurrentAddress();
  }

  SelectThisAddressClicked selectThisAddressClicked() {
    return const SelectThisAddressClicked();
  }

  DirectionChanged directionChanged(DirectionEntity directionEntity) {
    return DirectionChanged(
      directionEntity,
    );
  }

  BuildRouteWithSights buildRouteWithSights(List<LatLng> points) {
    return BuildRouteWithSights(
      points,
    );
  }
}

/// @nodoc
const $MapEvent = _$MapEventTearOff();

/// @nodoc
mixin _$MapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res> implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  final MapEvent _value;
  // ignore: unused_field
  final $Res Function(MapEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'MapEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements MapEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $OnBackClickedCopyWith<$Res> {
  factory $OnBackClickedCopyWith(
          OnBackClicked value, $Res Function(OnBackClicked) then) =
      _$OnBackClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBackClickedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $OnBackClickedCopyWith<$Res> {
  _$OnBackClickedCopyWithImpl(
      OnBackClicked _value, $Res Function(OnBackClicked) _then)
      : super(_value, (v) => _then(v as OnBackClicked));

  @override
  OnBackClicked get _value => super._value as OnBackClicked;
}

/// @nodoc

class _$OnBackClicked implements OnBackClicked {
  const _$OnBackClicked();

  @override
  String toString() {
    return 'MapEvent.onBackClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnBackClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return onBackClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (onBackClicked != null) {
      return onBackClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return onBackClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (onBackClicked != null) {
      return onBackClicked(this);
    }
    return orElse();
  }
}

abstract class OnBackClicked implements MapEvent {
  const factory OnBackClicked() = _$OnBackClicked;
}

/// @nodoc
abstract class $OnMapCreatedCopyWith<$Res> {
  factory $OnMapCreatedCopyWith(
          OnMapCreated value, $Res Function(OnMapCreated) then) =
      _$OnMapCreatedCopyWithImpl<$Res>;
  $Res call({GoogleMapController controller});
}

/// @nodoc
class _$OnMapCreatedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $OnMapCreatedCopyWith<$Res> {
  _$OnMapCreatedCopyWithImpl(
      OnMapCreated _value, $Res Function(OnMapCreated) _then)
      : super(_value, (v) => _then(v as OnMapCreated));

  @override
  OnMapCreated get _value => super._value as OnMapCreated;

  @override
  $Res call({
    Object? controller = freezed,
  }) {
    return _then(OnMapCreated(
      controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as GoogleMapController,
    ));
  }
}

/// @nodoc

class _$OnMapCreated implements OnMapCreated {
  const _$OnMapCreated(this.controller);

  @override
  final GoogleMapController controller;

  @override
  String toString() {
    return 'MapEvent.onMapCreated(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnMapCreated &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(controller);

  @JsonKey(ignore: true)
  @override
  $OnMapCreatedCopyWith<OnMapCreated> get copyWith =>
      _$OnMapCreatedCopyWithImpl<OnMapCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return onMapCreated(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (onMapCreated != null) {
      return onMapCreated(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return onMapCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (onMapCreated != null) {
      return onMapCreated(this);
    }
    return orElse();
  }
}

abstract class OnMapCreated implements MapEvent {
  const factory OnMapCreated(GoogleMapController controller) = _$OnMapCreated;

  GoogleMapController get controller => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnMapCreatedCopyWith<OnMapCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnCameraMoveCopyWith<$Res> {
  factory $OnCameraMoveCopyWith(
          OnCameraMove value, $Res Function(OnCameraMove) then) =
      _$OnCameraMoveCopyWithImpl<$Res>;
  $Res call({CameraPosition position});
}

/// @nodoc
class _$OnCameraMoveCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $OnCameraMoveCopyWith<$Res> {
  _$OnCameraMoveCopyWithImpl(
      OnCameraMove _value, $Res Function(OnCameraMove) _then)
      : super(_value, (v) => _then(v as OnCameraMove));

  @override
  OnCameraMove get _value => super._value as OnCameraMove;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(OnCameraMove(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
    ));
  }
}

/// @nodoc

class _$OnCameraMove implements OnCameraMove {
  const _$OnCameraMove(this.position);

  @override
  final CameraPosition position;

  @override
  String toString() {
    return 'MapEvent.onCameraMove(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnCameraMove &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  $OnCameraMoveCopyWith<OnCameraMove> get copyWith =>
      _$OnCameraMoveCopyWithImpl<OnCameraMove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return onCameraMove(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (onCameraMove != null) {
      return onCameraMove(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return onCameraMove(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (onCameraMove != null) {
      return onCameraMove(this);
    }
    return orElse();
  }
}

abstract class OnCameraMove implements MapEvent {
  const factory OnCameraMove(CameraPosition position) = _$OnCameraMove;

  CameraPosition get position => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnCameraMoveCopyWith<OnCameraMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnCameraMoveStartedCopyWith<$Res> {
  factory $OnCameraMoveStartedCopyWith(
          OnCameraMoveStarted value, $Res Function(OnCameraMoveStarted) then) =
      _$OnCameraMoveStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnCameraMoveStartedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res>
    implements $OnCameraMoveStartedCopyWith<$Res> {
  _$OnCameraMoveStartedCopyWithImpl(
      OnCameraMoveStarted _value, $Res Function(OnCameraMoveStarted) _then)
      : super(_value, (v) => _then(v as OnCameraMoveStarted));

  @override
  OnCameraMoveStarted get _value => super._value as OnCameraMoveStarted;
}

/// @nodoc

class _$OnCameraMoveStarted implements OnCameraMoveStarted {
  const _$OnCameraMoveStarted();

  @override
  String toString() {
    return 'MapEvent.onCameraMoveStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnCameraMoveStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return onCameraMoveStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (onCameraMoveStarted != null) {
      return onCameraMoveStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return onCameraMoveStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (onCameraMoveStarted != null) {
      return onCameraMoveStarted(this);
    }
    return orElse();
  }
}

abstract class OnCameraMoveStarted implements MapEvent {
  const factory OnCameraMoveStarted() = _$OnCameraMoveStarted;
}

/// @nodoc
abstract class $OnCameraIdleCopyWith<$Res> {
  factory $OnCameraIdleCopyWith(
          OnCameraIdle value, $Res Function(OnCameraIdle) then) =
      _$OnCameraIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnCameraIdleCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $OnCameraIdleCopyWith<$Res> {
  _$OnCameraIdleCopyWithImpl(
      OnCameraIdle _value, $Res Function(OnCameraIdle) _then)
      : super(_value, (v) => _then(v as OnCameraIdle));

  @override
  OnCameraIdle get _value => super._value as OnCameraIdle;
}

/// @nodoc

class _$OnCameraIdle implements OnCameraIdle {
  const _$OnCameraIdle();

  @override
  String toString() {
    return 'MapEvent.onCameraIdle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnCameraIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return onCameraIdle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (onCameraIdle != null) {
      return onCameraIdle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return onCameraIdle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (onCameraIdle != null) {
      return onCameraIdle(this);
    }
    return orElse();
  }
}

abstract class OnCameraIdle implements MapEvent {
  const factory OnCameraIdle() = _$OnCameraIdle;
}

/// @nodoc
abstract class $GetSightsCopyWith<$Res> {
  factory $GetSightsCopyWith(GetSights value, $Res Function(GetSights) then) =
      _$GetSightsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetSightsCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $GetSightsCopyWith<$Res> {
  _$GetSightsCopyWithImpl(GetSights _value, $Res Function(GetSights) _then)
      : super(_value, (v) => _then(v as GetSights));

  @override
  GetSights get _value => super._value as GetSights;
}

/// @nodoc

class _$GetSights implements GetSights {
  const _$GetSights();

  @override
  String toString() {
    return 'MapEvent.getSights()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetSights);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return getSights();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (getSights != null) {
      return getSights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return getSights(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (getSights != null) {
      return getSights(this);
    }
    return orElse();
  }
}

abstract class GetSights implements MapEvent {
  const factory GetSights() = _$GetSights;
}

/// @nodoc
abstract class $OnMapTapCopyWith<$Res> {
  factory $OnMapTapCopyWith(OnMapTap value, $Res Function(OnMapTap) then) =
      _$OnMapTapCopyWithImpl<$Res>;
  $Res call({LatLng position});
}

/// @nodoc
class _$OnMapTapCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $OnMapTapCopyWith<$Res> {
  _$OnMapTapCopyWithImpl(OnMapTap _value, $Res Function(OnMapTap) _then)
      : super(_value, (v) => _then(v as OnMapTap));

  @override
  OnMapTap get _value => super._value as OnMapTap;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(OnMapTap(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$OnMapTap implements OnMapTap {
  const _$OnMapTap(this.position);

  @override
  final LatLng position;

  @override
  String toString() {
    return 'MapEvent.onMapTap(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnMapTap &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  $OnMapTapCopyWith<OnMapTap> get copyWith =>
      _$OnMapTapCopyWithImpl<OnMapTap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return onMapTap(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (onMapTap != null) {
      return onMapTap(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return onMapTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (onMapTap != null) {
      return onMapTap(this);
    }
    return orElse();
  }
}

abstract class OnMapTap implements MapEvent {
  const factory OnMapTap(LatLng position) = _$OnMapTap;

  LatLng get position => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnMapTapCopyWith<OnMapTap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLocationClickedCopyWith<$Res> {
  factory $MyLocationClickedCopyWith(
          MyLocationClicked value, $Res Function(MyLocationClicked) then) =
      _$MyLocationClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyLocationClickedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $MyLocationClickedCopyWith<$Res> {
  _$MyLocationClickedCopyWithImpl(
      MyLocationClicked _value, $Res Function(MyLocationClicked) _then)
      : super(_value, (v) => _then(v as MyLocationClicked));

  @override
  MyLocationClicked get _value => super._value as MyLocationClicked;
}

/// @nodoc

class _$MyLocationClicked implements MyLocationClicked {
  const _$MyLocationClicked();

  @override
  String toString() {
    return 'MapEvent.myLocationClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MyLocationClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return myLocationClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (myLocationClicked != null) {
      return myLocationClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return myLocationClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (myLocationClicked != null) {
      return myLocationClicked(this);
    }
    return orElse();
  }
}

abstract class MyLocationClicked implements MapEvent {
  const factory MyLocationClicked() = _$MyLocationClicked;
}

/// @nodoc
abstract class $SightClickedCopyWith<$Res> {
  factory $SightClickedCopyWith(
          SightClicked value, $Res Function(SightClicked) then) =
      _$SightClickedCopyWithImpl<$Res>;
  $Res call({SightEntity sight});
}

/// @nodoc
class _$SightClickedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $SightClickedCopyWith<$Res> {
  _$SightClickedCopyWithImpl(
      SightClicked _value, $Res Function(SightClicked) _then)
      : super(_value, (v) => _then(v as SightClicked));

  @override
  SightClicked get _value => super._value as SightClicked;

  @override
  $Res call({
    Object? sight = freezed,
  }) {
    return _then(SightClicked(
      sight == freezed
          ? _value.sight
          : sight // ignore: cast_nullable_to_non_nullable
              as SightEntity,
    ));
  }
}

/// @nodoc

class _$SightClicked implements SightClicked {
  const _$SightClicked(this.sight);

  @override
  final SightEntity sight;

  @override
  String toString() {
    return 'MapEvent.sightClicked(sight: $sight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SightClicked &&
            (identical(other.sight, sight) ||
                const DeepCollectionEquality().equals(other.sight, sight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sight);

  @JsonKey(ignore: true)
  @override
  $SightClickedCopyWith<SightClicked> get copyWith =>
      _$SightClickedCopyWithImpl<SightClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return sightClicked(sight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (sightClicked != null) {
      return sightClicked(sight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return sightClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (sightClicked != null) {
      return sightClicked(this);
    }
    return orElse();
  }
}

abstract class SightClicked implements MapEvent {
  const factory SightClicked(SightEntity sight) = _$SightClicked;

  SightEntity get sight => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SightClickedCopyWith<SightClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SightInfoSlideChangedCopyWith<$Res> {
  factory $SightInfoSlideChangedCopyWith(SightInfoSlideChanged value,
          $Res Function(SightInfoSlideChanged) then) =
      _$SightInfoSlideChangedCopyWithImpl<$Res>;
  $Res call({double position});
}

/// @nodoc
class _$SightInfoSlideChangedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res>
    implements $SightInfoSlideChangedCopyWith<$Res> {
  _$SightInfoSlideChangedCopyWithImpl(
      SightInfoSlideChanged _value, $Res Function(SightInfoSlideChanged) _then)
      : super(_value, (v) => _then(v as SightInfoSlideChanged));

  @override
  SightInfoSlideChanged get _value => super._value as SightInfoSlideChanged;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(SightInfoSlideChanged(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SightInfoSlideChanged implements SightInfoSlideChanged {
  const _$SightInfoSlideChanged(this.position);

  @override
  final double position;

  @override
  String toString() {
    return 'MapEvent.sightInfoSlideChanged(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SightInfoSlideChanged &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  $SightInfoSlideChangedCopyWith<SightInfoSlideChanged> get copyWith =>
      _$SightInfoSlideChangedCopyWithImpl<SightInfoSlideChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return sightInfoSlideChanged(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (sightInfoSlideChanged != null) {
      return sightInfoSlideChanged(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return sightInfoSlideChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (sightInfoSlideChanged != null) {
      return sightInfoSlideChanged(this);
    }
    return orElse();
  }
}

abstract class SightInfoSlideChanged implements MapEvent {
  const factory SightInfoSlideChanged(double position) =
      _$SightInfoSlideChanged;

  double get position => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SightInfoSlideChangedCopyWith<SightInfoSlideChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowMessageNoGeoCopyWith<$Res> {
  factory $ShowMessageNoGeoCopyWith(
          ShowMessageNoGeo value, $Res Function(ShowMessageNoGeo) then) =
      _$ShowMessageNoGeoCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowMessageNoGeoCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $ShowMessageNoGeoCopyWith<$Res> {
  _$ShowMessageNoGeoCopyWithImpl(
      ShowMessageNoGeo _value, $Res Function(ShowMessageNoGeo) _then)
      : super(_value, (v) => _then(v as ShowMessageNoGeo));

  @override
  ShowMessageNoGeo get _value => super._value as ShowMessageNoGeo;
}

/// @nodoc

class _$ShowMessageNoGeo implements ShowMessageNoGeo {
  const _$ShowMessageNoGeo();

  @override
  String toString() {
    return 'MapEvent.showMessageNoGeo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowMessageNoGeo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return showMessageNoGeo();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (showMessageNoGeo != null) {
      return showMessageNoGeo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return showMessageNoGeo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (showMessageNoGeo != null) {
      return showMessageNoGeo(this);
    }
    return orElse();
  }
}

abstract class ShowMessageNoGeo implements MapEvent {
  const factory ShowMessageNoGeo() = _$ShowMessageNoGeo;
}

/// @nodoc
abstract class $RoutesClickedCopyWith<$Res> {
  factory $RoutesClickedCopyWith(
          RoutesClicked value, $Res Function(RoutesClicked) then) =
      _$RoutesClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoutesClickedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $RoutesClickedCopyWith<$Res> {
  _$RoutesClickedCopyWithImpl(
      RoutesClicked _value, $Res Function(RoutesClicked) _then)
      : super(_value, (v) => _then(v as RoutesClicked));

  @override
  RoutesClicked get _value => super._value as RoutesClicked;
}

/// @nodoc

class _$RoutesClicked implements RoutesClicked {
  const _$RoutesClicked();

  @override
  String toString() {
    return 'MapEvent.routesClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RoutesClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return routesClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (routesClicked != null) {
      return routesClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return routesClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (routesClicked != null) {
      return routesClicked(this);
    }
    return orElse();
  }
}

abstract class RoutesClicked implements MapEvent {
  const factory RoutesClicked() = _$RoutesClicked;
}

/// @nodoc
abstract class $RouteButtonClickedCopyWith<$Res> {
  factory $RouteButtonClickedCopyWith(
          RouteButtonClicked value, $Res Function(RouteButtonClicked) then) =
      _$RouteButtonClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouteButtonClickedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res>
    implements $RouteButtonClickedCopyWith<$Res> {
  _$RouteButtonClickedCopyWithImpl(
      RouteButtonClicked _value, $Res Function(RouteButtonClicked) _then)
      : super(_value, (v) => _then(v as RouteButtonClicked));

  @override
  RouteButtonClicked get _value => super._value as RouteButtonClicked;
}

/// @nodoc

class _$RouteButtonClicked implements RouteButtonClicked {
  const _$RouteButtonClicked();

  @override
  String toString() {
    return 'MapEvent.routeButtonClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RouteButtonClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return routeButtonClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (routeButtonClicked != null) {
      return routeButtonClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return routeButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (routeButtonClicked != null) {
      return routeButtonClicked(this);
    }
    return orElse();
  }
}

abstract class RouteButtonClicked implements MapEvent {
  const factory RouteButtonClicked() = _$RouteButtonClicked;
}

/// @nodoc
abstract class $FilterClickedCopyWith<$Res> {
  factory $FilterClickedCopyWith(
          FilterClicked value, $Res Function(FilterClicked) then) =
      _$FilterClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterClickedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $FilterClickedCopyWith<$Res> {
  _$FilterClickedCopyWithImpl(
      FilterClicked _value, $Res Function(FilterClicked) _then)
      : super(_value, (v) => _then(v as FilterClicked));

  @override
  FilterClicked get _value => super._value as FilterClicked;
}

/// @nodoc

class _$FilterClicked implements FilterClicked {
  const _$FilterClicked();

  @override
  String toString() {
    return 'MapEvent.filterClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FilterClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return filterClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (filterClicked != null) {
      return filterClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return filterClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (filterClicked != null) {
      return filterClicked(this);
    }
    return orElse();
  }
}

abstract class FilterClicked implements MapEvent {
  const factory FilterClicked() = _$FilterClicked;
}

/// @nodoc
abstract class $FiltersChangedCopyWith<$Res> {
  factory $FiltersChangedCopyWith(
          FiltersChanged value, $Res Function(FiltersChanged) then) =
      _$FiltersChangedCopyWithImpl<$Res>;
  $Res call({List<SightType> sightFilters});
}

/// @nodoc
class _$FiltersChangedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $FiltersChangedCopyWith<$Res> {
  _$FiltersChangedCopyWithImpl(
      FiltersChanged _value, $Res Function(FiltersChanged) _then)
      : super(_value, (v) => _then(v as FiltersChanged));

  @override
  FiltersChanged get _value => super._value as FiltersChanged;

  @override
  $Res call({
    Object? sightFilters = freezed,
  }) {
    return _then(FiltersChanged(
      sightFilters == freezed
          ? _value.sightFilters
          : sightFilters // ignore: cast_nullable_to_non_nullable
              as List<SightType>,
    ));
  }
}

/// @nodoc

class _$FiltersChanged implements FiltersChanged {
  const _$FiltersChanged(this.sightFilters);

  @override
  final List<SightType> sightFilters;

  @override
  String toString() {
    return 'MapEvent.filtersChanged(sightFilters: $sightFilters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FiltersChanged &&
            (identical(other.sightFilters, sightFilters) ||
                const DeepCollectionEquality()
                    .equals(other.sightFilters, sightFilters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sightFilters);

  @JsonKey(ignore: true)
  @override
  $FiltersChangedCopyWith<FiltersChanged> get copyWith =>
      _$FiltersChangedCopyWithImpl<FiltersChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return filtersChanged(sightFilters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (filtersChanged != null) {
      return filtersChanged(sightFilters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return filtersChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (filtersChanged != null) {
      return filtersChanged(this);
    }
    return orElse();
  }
}

abstract class FiltersChanged implements MapEvent {
  const factory FiltersChanged(List<SightType> sightFilters) = _$FiltersChanged;

  List<SightType> get sightFilters => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FiltersChangedCopyWith<FiltersChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentAddressCopyWith<$Res> {
  factory $GetCurrentAddressCopyWith(
          GetCurrentAddress value, $Res Function(GetCurrentAddress) then) =
      _$GetCurrentAddressCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentAddressCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $GetCurrentAddressCopyWith<$Res> {
  _$GetCurrentAddressCopyWithImpl(
      GetCurrentAddress _value, $Res Function(GetCurrentAddress) _then)
      : super(_value, (v) => _then(v as GetCurrentAddress));

  @override
  GetCurrentAddress get _value => super._value as GetCurrentAddress;
}

/// @nodoc

class _$GetCurrentAddress implements GetCurrentAddress {
  const _$GetCurrentAddress();

  @override
  String toString() {
    return 'MapEvent.getCurrentAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCurrentAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return getCurrentAddress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (getCurrentAddress != null) {
      return getCurrentAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return getCurrentAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (getCurrentAddress != null) {
      return getCurrentAddress(this);
    }
    return orElse();
  }
}

abstract class GetCurrentAddress implements MapEvent {
  const factory GetCurrentAddress() = _$GetCurrentAddress;
}

/// @nodoc
abstract class $SelectThisAddressClickedCopyWith<$Res> {
  factory $SelectThisAddressClickedCopyWith(SelectThisAddressClicked value,
          $Res Function(SelectThisAddressClicked) then) =
      _$SelectThisAddressClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectThisAddressClickedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res>
    implements $SelectThisAddressClickedCopyWith<$Res> {
  _$SelectThisAddressClickedCopyWithImpl(SelectThisAddressClicked _value,
      $Res Function(SelectThisAddressClicked) _then)
      : super(_value, (v) => _then(v as SelectThisAddressClicked));

  @override
  SelectThisAddressClicked get _value =>
      super._value as SelectThisAddressClicked;
}

/// @nodoc

class _$SelectThisAddressClicked implements SelectThisAddressClicked {
  const _$SelectThisAddressClicked();

  @override
  String toString() {
    return 'MapEvent.selectThisAddressClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectThisAddressClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return selectThisAddressClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (selectThisAddressClicked != null) {
      return selectThisAddressClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return selectThisAddressClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (selectThisAddressClicked != null) {
      return selectThisAddressClicked(this);
    }
    return orElse();
  }
}

abstract class SelectThisAddressClicked implements MapEvent {
  const factory SelectThisAddressClicked() = _$SelectThisAddressClicked;
}

/// @nodoc
abstract class $DirectionChangedCopyWith<$Res> {
  factory $DirectionChangedCopyWith(
          DirectionChanged value, $Res Function(DirectionChanged) then) =
      _$DirectionChangedCopyWithImpl<$Res>;
  $Res call({DirectionEntity directionEntity});
}

/// @nodoc
class _$DirectionChangedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $DirectionChangedCopyWith<$Res> {
  _$DirectionChangedCopyWithImpl(
      DirectionChanged _value, $Res Function(DirectionChanged) _then)
      : super(_value, (v) => _then(v as DirectionChanged));

  @override
  DirectionChanged get _value => super._value as DirectionChanged;

  @override
  $Res call({
    Object? directionEntity = freezed,
  }) {
    return _then(DirectionChanged(
      directionEntity == freezed
          ? _value.directionEntity
          : directionEntity // ignore: cast_nullable_to_non_nullable
              as DirectionEntity,
    ));
  }
}

/// @nodoc

class _$DirectionChanged implements DirectionChanged {
  const _$DirectionChanged(this.directionEntity);

  @override
  final DirectionEntity directionEntity;

  @override
  String toString() {
    return 'MapEvent.directionChanged(directionEntity: $directionEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DirectionChanged &&
            (identical(other.directionEntity, directionEntity) ||
                const DeepCollectionEquality()
                    .equals(other.directionEntity, directionEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(directionEntity);

  @JsonKey(ignore: true)
  @override
  $DirectionChangedCopyWith<DirectionChanged> get copyWith =>
      _$DirectionChangedCopyWithImpl<DirectionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return directionChanged(directionEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (directionChanged != null) {
      return directionChanged(directionEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return directionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (directionChanged != null) {
      return directionChanged(this);
    }
    return orElse();
  }
}

abstract class DirectionChanged implements MapEvent {
  const factory DirectionChanged(DirectionEntity directionEntity) =
      _$DirectionChanged;

  DirectionEntity get directionEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionChangedCopyWith<DirectionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildRouteWithSightsCopyWith<$Res> {
  factory $BuildRouteWithSightsCopyWith(BuildRouteWithSights value,
          $Res Function(BuildRouteWithSights) then) =
      _$BuildRouteWithSightsCopyWithImpl<$Res>;
  $Res call({List<LatLng> points});
}

/// @nodoc
class _$BuildRouteWithSightsCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res>
    implements $BuildRouteWithSightsCopyWith<$Res> {
  _$BuildRouteWithSightsCopyWithImpl(
      BuildRouteWithSights _value, $Res Function(BuildRouteWithSights) _then)
      : super(_value, (v) => _then(v as BuildRouteWithSights));

  @override
  BuildRouteWithSights get _value => super._value as BuildRouteWithSights;

  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(BuildRouteWithSights(
      points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc

class _$BuildRouteWithSights implements BuildRouteWithSights {
  const _$BuildRouteWithSights(this.points);

  @override
  final List<LatLng> points;

  @override
  String toString() {
    return 'MapEvent.buildRouteWithSights(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BuildRouteWithSights &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(points);

  @JsonKey(ignore: true)
  @override
  $BuildRouteWithSightsCopyWith<BuildRouteWithSights> get copyWith =>
      _$BuildRouteWithSightsCopyWithImpl<BuildRouteWithSights>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onBackClicked,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onCameraMoveStarted,
    required TResult Function() onCameraIdle,
    required TResult Function() getSights,
    required TResult Function(LatLng position) onMapTap,
    required TResult Function() myLocationClicked,
    required TResult Function(SightEntity sight) sightClicked,
    required TResult Function(double position) sightInfoSlideChanged,
    required TResult Function() showMessageNoGeo,
    required TResult Function() routesClicked,
    required TResult Function() routeButtonClicked,
    required TResult Function() filterClicked,
    required TResult Function(List<SightType> sightFilters) filtersChanged,
    required TResult Function() getCurrentAddress,
    required TResult Function() selectThisAddressClicked,
    required TResult Function(DirectionEntity directionEntity) directionChanged,
    required TResult Function(List<LatLng> points) buildRouteWithSights,
  }) {
    return buildRouteWithSights(points);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onBackClicked,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onCameraMoveStarted,
    TResult Function()? onCameraIdle,
    TResult Function()? getSights,
    TResult Function(LatLng position)? onMapTap,
    TResult Function()? myLocationClicked,
    TResult Function(SightEntity sight)? sightClicked,
    TResult Function(double position)? sightInfoSlideChanged,
    TResult Function()? showMessageNoGeo,
    TResult Function()? routesClicked,
    TResult Function()? routeButtonClicked,
    TResult Function()? filterClicked,
    TResult Function(List<SightType> sightFilters)? filtersChanged,
    TResult Function()? getCurrentAddress,
    TResult Function()? selectThisAddressClicked,
    TResult Function(DirectionEntity directionEntity)? directionChanged,
    TResult Function(List<LatLng> points)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (buildRouteWithSights != null) {
      return buildRouteWithSights(points);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnBackClicked value) onBackClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnCameraMoveStarted value) onCameraMoveStarted,
    required TResult Function(OnCameraIdle value) onCameraIdle,
    required TResult Function(GetSights value) getSights,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
    required TResult Function(SightClicked value) sightClicked,
    required TResult Function(SightInfoSlideChanged value)
        sightInfoSlideChanged,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(RoutesClicked value) routesClicked,
    required TResult Function(RouteButtonClicked value) routeButtonClicked,
    required TResult Function(FilterClicked value) filterClicked,
    required TResult Function(FiltersChanged value) filtersChanged,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(DirectionChanged value) directionChanged,
    required TResult Function(BuildRouteWithSights value) buildRouteWithSights,
  }) {
    return buildRouteWithSights(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnBackClicked value)? onBackClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnCameraMoveStarted value)? onCameraMoveStarted,
    TResult Function(OnCameraIdle value)? onCameraIdle,
    TResult Function(GetSights value)? getSights,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    TResult Function(SightClicked value)? sightClicked,
    TResult Function(SightInfoSlideChanged value)? sightInfoSlideChanged,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(RoutesClicked value)? routesClicked,
    TResult Function(RouteButtonClicked value)? routeButtonClicked,
    TResult Function(FilterClicked value)? filterClicked,
    TResult Function(FiltersChanged value)? filtersChanged,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(DirectionChanged value)? directionChanged,
    TResult Function(BuildRouteWithSights value)? buildRouteWithSights,
    required TResult orElse(),
  }) {
    if (buildRouteWithSights != null) {
      return buildRouteWithSights(this);
    }
    return orElse();
  }
}

abstract class BuildRouteWithSights implements MapEvent {
  const factory BuildRouteWithSights(List<LatLng> points) =
      _$BuildRouteWithSights;

  List<LatLng> get points => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildRouteWithSightsCopyWith<BuildRouteWithSights> get copyWith =>
      throw _privateConstructorUsedError;
}
