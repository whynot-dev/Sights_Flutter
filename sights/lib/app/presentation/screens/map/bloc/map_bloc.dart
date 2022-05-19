import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/navigation/navigation_type.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sights/core/enums/message_type.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/data/repositories/map_repository.dart';
import 'package:sights/domain/entities/feature.dart';
import 'package:sights/domain/entities/network/request/get_features_body.dart';
import 'package:sights/domain/entities/network/response/feature_collection_response.dart';
import 'package:sights/domain/entities/sight_entity.dart';
import 'package:sights/domain/enums/sight_type.dart';

part 'map_state.dart';

part 'map_event.dart';

part 'map_bloc.freezed.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc({
    required this.mapRepository,
  }) : super(MapState()) {
    on<Init>(_init);
    on<OnMapCreated>(_onMapCreated);
    on<OnCameraMove>(_onCameraMove);
    on<OnCameraMoveStarted>(_onCameraMoveStarted);
    on<GetSights>(_getSights);
    on<OnMapTap>(_onMapTap);
    on<MyLocationClicked>(_myLocationClicked);
    on<SightClicked>(_sightClicked);
    on<SightInfoSlideChanged>(_sightInfoSlideChanged);
    on<ShowMessageNoGeo>(_showMessageNoGeo);
    on<RoutesClicked>(_routesClicked);
    on<RouteButtonClicked>(_routeButtonClicked);
    on<FilterClicked>(_filterClicked);
    on<FiltersChanged>(_filtersChanged);
    this.add(MapEvent.init());
  }

  MapRepository mapRepository;
  late GoogleMapController _mapController;
  Timer? _timer;
  bool _isMarkerTap = false;

  FutureOr<void> _init(Init event, Emitter<MapState> emit) {}

  FutureOr<void> _onMapCreated(OnMapCreated event, Emitter<MapState> emit) {
    _mapController = event.controller;
    this.add(MapEvent.getSights());
    emit(state.copyWith(mapLoaded: true));
  }

  FutureOr<void> _onCameraMove(OnCameraMove event, Emitter<MapState> emit) async {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = Timer(Duration(milliseconds: 300), () async {
      this.add(MapEvent.getSights());
    });
    emit(state.copyWith(cameraPosition: event.position));
  }

  FutureOr<void> _onCameraMoveStarted(OnCameraMoveStarted event, Emitter<MapState> emit) {
    if (!_isMarkerTap) {
      emit(state.copyWith(selectedSightPoint: null));
    } else {
      _isMarkerTap = false;
    }
  }

  FutureOr<void> _getSights(GetSights event, Emitter<MapState> emit) async {
    LatLngBounds latLngBounds = await _mapController.getVisibleRegion();
    GetFeaturesBody getFeaturesBody = GetFeaturesBody(
      lonMin: latLngBounds.southwest.longitude,
      lonMax: latLngBounds.northeast.longitude,
      latMin: latLngBounds.southwest.latitude,
      latMax: latLngBounds.northeast.latitude,
    );
    Either<List<SightEntity>, Failure> result = await mapRepository.getSights(body: getFeaturesBody);
    result.fold(
      (data) {
        emit(state.copyWith(sights: []));
        emit(state.copyWith(sights: _filtersApply(data)));
      },
      (error) {},
    );
  }

  FutureOr<void> _onMapTap(OnMapTap event, Emitter<MapState> emit) {
    emit(state.copyWith(selectedSightPoint: null));
    _isMarkerTap = false;
  }

  FutureOr<void> _myLocationClicked(MyLocationClicked event, Emitter<MapState> emit) async {
    Position? userPosition = await _determinePosition(emit);
    if (userPosition != null) {
      CameraPosition newCameraPosition = CameraPosition(
        target: LatLng(userPosition.latitude, userPosition.longitude),
        zoom: 16,
      );
      emit(state.copyWith(cameraPosition: newCameraPosition));
      _mapController.animateCamera(CameraUpdate.newCameraPosition(newCameraPosition));
    }
  }

  FutureOr<void> _sightClicked(SightClicked event, Emitter<MapState> emit) {
    emit(state.copyWith(selectedSightPoint: event.sight));
    _isMarkerTap = true;
  }

  FutureOr<void> _sightInfoSlideChanged(SightInfoSlideChanged event, Emitter<MapState> emit) {
    if (event.position > 0) {
      emit(state.copyWith(sightInfoIsExpanded: true));
    } else if (event.position == 0) {
      emit(state.copyWith(sightInfoIsExpanded: false));
    }
  }

  FutureOr<void> _showMessageNoGeo(ShowMessageNoGeo event, Emitter<MapState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: ShowMessage(messageType: MessageType.noGeoPermission)));
  }

  FutureOr<void> _routesClicked(RoutesClicked event, Emitter<MapState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateAction.navigateToRoutes(NavigateType.push)));
  }

  FutureOr<void> _routeButtonClicked(RouteButtonClicked event, Emitter<MapState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateAction.navigateToBuildingRoute(NavigateType.push)));
  }

  FutureOr<void> _filterClicked(FilterClicked event, Emitter<MapState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: ShowFilterModal()));
  }

  FutureOr<void> _filtersChanged(FiltersChanged event, Emitter<MapState> emit) {
    emit(state.copyWith(sightFilters: event.sightFilters));
    emit(state.copyWith(sights: _filtersApply(state.sights)));
  }

  Future<Position?> _determinePosition(Emitter<MapState> emit) async {
    emit(state.copyWith(action: null));
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      this.add(MapEvent.showMessageNoGeo());
      return null;
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return null;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      this.add(MapEvent.showMessageNoGeo());
      return null;
    }
    return await Geolocator.getCurrentPosition();
  }

  List<SightEntity> _filtersApply(List<SightEntity> sights) {
    List<SightEntity> _sights = List.from(sights);
    _sights.removeWhere((sight) => !state.sightFilters.contains(sight.sightType));
    return _sights;
  }
}
