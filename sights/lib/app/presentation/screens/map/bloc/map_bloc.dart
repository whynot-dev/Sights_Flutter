import 'dart:async';
import 'dart:collection';
import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive/hive.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/navigation/navigation_type.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sights/core/enums/message_type.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/data/repositories/directions_repository.dart';
import 'package:sights/domain/entities/direction.dart';
import 'package:sights/domain/entities/direction_entity.dart';
import 'package:sights/domain/entities/node.dart';
import 'package:sights/domain/entities/route_point_entity.dart';
import 'package:sights/domain/entities/save_route_entity.dart';
import 'package:sights/domain/enums/transport_type.dart';
import 'package:sights/data/repositories/map_repository.dart';
import 'package:sights/domain/entities/network/request/get_features_body.dart';
import 'package:sights/domain/entities/sight_entity.dart';
import 'package:sights/domain/enums/map_mode.dart';
import 'package:sights/domain/enums/sight_type.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

part 'map_state.dart';

part 'map_event.dart';

part 'map_bloc.freezed.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc({
    required MapMode mapMode,
    required this.mapRepository,
    required this.directionsRepository,
  }) : super(MapState(mapMode: mapMode)) {
    on<Init>(_init);
    on<OnBackClicked>(_onBackClicked);
    on<OnMapCreated>(_onMapCreated);
    on<OnCameraMove>(_onCameraMove);
    on<OnCameraMoveStarted>(_onCameraMoveStarted);
    on<OnCameraIdle>(_onCameraIdle);
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
    on<GetCurrentAddress>(_getCurrentAddress);
    on<SelectThisAddressClicked>(_selectThisAddressClicked);
    on<DirectionChanged>(_directionChanged);
    on<BuildRouteWithSights>(_buildRouteWithSights);
    on<SaveRouteClicked>(_saveRouteClicked);
    on<CloseRouteClicked>(_closeRouteClicked);
    this.add(MapEvent.init());
  }

  final MapRepository mapRepository;
  final DirectionsRepository directionsRepository;
  late GoogleMapController _mapController;
  late Box<SaveRouteEntity> _box;

  Timer? _timer;
  bool _isMarkerTap = false;
  PolylinePoints _polylinePoints = PolylinePoints();

  FutureOr<void> _init(Init event, Emitter<MapState> emit) async {
    Directory directory = await pathProvider.getApplicationDocumentsDirectory();
    _box = await Hive.openBox('routes', path: directory.path);
  }

  FutureOr<void> _onBackClicked(OnBackClicked event, Emitter<MapState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateAction.navigateBack()));
  }

  FutureOr<void> _onMapCreated(OnMapCreated event, Emitter<MapState> emit) {
    _mapController = event.controller;
    this.add(MapEvent.getSights());
    emit(state.copyWith(mapLoaded: true));
    if (state.mapMode == MapMode.selectPoint) {
      this.add(MapEvent.getCurrentAddress());
    }
  }

  FutureOr<void> _onCameraMove(OnCameraMove event, Emitter<MapState> emit) async {
    // if (_timer?.isActive ?? false) {
    //   _timer?.cancel();
    // }
    // _timer = Timer(Duration(milliseconds: 300), () async {
    //   this.add(MapEvent.getSights());
    // });
    emit(state.copyWith(cameraPosition: event.position));
  }

  FutureOr<void> _onCameraMoveStarted(OnCameraMoveStarted event, Emitter<MapState> emit) {
    if (!_isMarkerTap) {
      emit(state.copyWith(selectedSightPoint: null));
    } else {
      _isMarkerTap = false;
    }
  }

  FutureOr<void> _onCameraIdle(OnCameraIdle event, Emitter<MapState> emit) {
    if (state.currentDirection == null) {
      if (_timer?.isActive ?? false) {
        _timer?.cancel();
      }
      _timer = Timer(Duration(milliseconds: 300), () async {
        this.add(MapEvent.getSights());
      });
    }

    if (state.mapMode == MapMode.selectPoint) {
      this.add(MapEvent.getCurrentAddress());
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

    if (state.mapMode == MapMode.selectPoint) {
      emit(state.copyWith(locationMarkerPosition: event.position));
    }
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

  FutureOr<void> _getCurrentAddress(GetCurrentAddress event, Emitter<MapState> emit) async {
    List<Placemark> placeMarks = await placemarkFromCoordinates(
      state.cameraPosition.target.latitude,
      state.cameraPosition.target.longitude,
      localeIdentifier: 'ru',
    );

    if (placeMarks.isNotEmpty) {
      String address = placeMarks[0].street ?? '';
      if (placeMarks[0].subThoroughfare?.isNotEmpty == true) {
        address += ", ${placeMarks[0].subThoroughfare}";
      }
      emit(state.copyWith(currentAddress: address));
    }
  }

  FutureOr<void> _selectThisAddressClicked(SelectThisAddressClicked event, Emitter<MapState> emit) {
    if (state.currentAddress != null) {
      emit(state.copyWith(action: null));
      emit(state.copyWith(
        action: NavigateAction.navigateBack(
          result: RoutePointEntity(address: state.currentAddress!, position: state.cameraPosition.target),
        ),
      ));
    }
  }

  FutureOr<void> _directionChanged(DirectionChanged event, Emitter<MapState> emit) async {
    emit(state.copyWith(
      selectedTransport: event.directionEntity.transportType,
      currentDirectionIsSaved: event.directionEntity.isSaved,
    ));

    List<LatLng> points = _polylinePoints
        .decodePolyline(event.directionEntity.direction.geometry)
        .map((item) => LatLng(item.latitude, item.longitude))
        .toList();

    List<LatLng> sortedLatitudePoints = List.from(points);
    List<LatLng> sortedLongitudePoints = List.from(points);
    sortedLatitudePoints.sort((min, max) => min.latitude.compareTo(max.latitude));
    sortedLongitudePoints.sort((min, max) => min.longitude.compareTo(max.longitude));

    GetFeaturesBody getFeaturesBody = GetFeaturesBody(
      lonMin: sortedLongitudePoints.first.longitude,
      lonMax: sortedLongitudePoints.last.longitude,
      latMin: sortedLatitudePoints.first.latitude,
      latMax: sortedLatitudePoints.last.latitude,
    );
    Either<List<SightEntity>, Failure> result = await mapRepository.getSights(body: getFeaturesBody);
    result.fold(
      (data) {
        emit(state.copyWith(sights: []));
        emit(state.copyWith(sights: _filtersApply(data)));
        if (!event.directionEntity.isSaved) {
          List<LatLng> pointsForGraph = [];
          pointsForGraph.add(points.first);
          pointsForGraph.addAll(state.sights.map(
            (item) => LatLng(item.feature.geometry.coordinates[1], item.feature.geometry.coordinates[0]),
          ));
          pointsForGraph.add(points.last);
          _createGraph(pointsForGraph);
        } else {
          emit(state.copyWith(
            currentDirection: event.directionEntity.direction,
            countSightsInRoute: points.length - 2,
          ));
          _mapController.animateCamera(CameraUpdate.newLatLng(points.first));
        }
      },
      (error) {},
    );
  }

  FutureOr<void> _buildRouteWithSights(BuildRouteWithSights event, Emitter<MapState> emit) async {
    Direction? direction;
    String coordinates = _getStringCoordinates(event.points);
    Either<Direction, Failure> result = await directionsRepository.buildRoute(
      profile: state.selectedTransport.name,
      coordinates: coordinates,
    );
    result.fold(
      (data) {
        direction = data;
      },
      (error) {},
    );
    if (direction != null) {
      emit(state.copyWith(currentDirection: direction, countSightsInRoute: event.points.length - 2));
      _mapController.animateCamera(CameraUpdate.newLatLng(event.points.first));
    }
  }

  FutureOr<void> _saveRouteClicked(SaveRouteClicked event, Emitter<MapState> emit) async {
    if (!state.currentDirectionIsSaved && state.currentDirection != null) {
      var points = _polylinePoints.decodePolyline(state.currentDirection!.geometry);
      String startAddress = '';
      String finishAddress = '';

      List<Placemark> placeMarksStart = await placemarkFromCoordinates(
        points.first.latitude,
        points.first.longitude,
        localeIdentifier: 'ru',
      );

      if (placeMarksStart.isNotEmpty) {
        startAddress = placeMarksStart.first.street ?? '';
        if (placeMarksStart.first.subThoroughfare?.isNotEmpty == true) {
          startAddress += ", ${placeMarksStart.first.subThoroughfare}";
        }
      }

      List<Placemark> placeMarksFinish = await placemarkFromCoordinates(
        points.last.latitude,
        points.last.longitude,
        localeIdentifier: 'ru',
      );

      if (placeMarksFinish.isNotEmpty) {
        finishAddress = placeMarksFinish.first.street ?? '';
        if (placeMarksFinish.first.subThoroughfare?.isNotEmpty == true) {
          finishAddress += ", ${placeMarksFinish.first.subThoroughfare}";
        }
      }

      _box.add(SaveRouteEntity(
        direction: state.currentDirection!,
        transportType: state.selectedTransport,
        startAddress: startAddress,
        finishAddress: finishAddress,
        countSights: state.countSightsInRoute,
      ));
      emit(state.copyWith(currentDirectionIsSaved: true));
    }
  }

  FutureOr<void> _closeRouteClicked(CloseRouteClicked event, Emitter<MapState> emit) {
    emit(state.copyWith(currentDirection: null));
    this.add(MapEvent.getSights());
  }

  void _createGraph(List<LatLng> points) {
    Map<Node, List<Node>> graph = {};
    List<Node> nodes = [];
    for (int i = 0; i < points.length; i++) {
      nodes = [];
      if (i == 0) {
        points.forEachIndexed((index, item) {
          if (index != i && index != points.length - 1) {
            nodes.add(Node(index, _getManhattanDistance(points[i], item)));
          }
        });
      } else if (i == points.length - 1) {
        points.forEachIndexed((index, item) {
          if (index != i && index != 0) {
            nodes.add(Node(index, _getManhattanDistance(points[i], item)));
          }
        });
      } else {
        points.forEachIndexed((index, item) {
          if (index != i) {
            nodes.add(Node(index, _getManhattanDistance(points[i], item)));
          }
        });
      }
      graph[Node(i, 0)] = nodes;
    }

    _aStarSearch(points, graph, graph.keys.first, graph.keys.last);
  }

  void _aStarSearch(List<LatLng> points, Map<Node, List<Node>> graph, Node start, Node goal) {
    Map<Node, Node> cameFrom = Map<Node, Node>();
    Map<Node, double> costSoFar = Map<Node, double>();

    const double coefficientCurrentLengthToFinish = 1 / 1.6;

    PriorityQueue<MapEntry<Node, double>> priorityQueue =
        PriorityQueue<MapEntry<Node, double>>((min, max) => min.value.compareTo(max.value));

    priorityQueue.add(MapEntry<Node, double>(start, 0));

    cameFrom[start] = start;
    costSoFar[start] = 0;
    double minDistance = 999.0;

    while (priorityQueue.isNotEmpty) {
      var current = priorityQueue.removeFirst();
      if (current.key == goal) {
        break;
      }

      graph[current.key]?.forEach((next) {
        double distanceNextToFinish = _getManhattanDistance(points[next.id], points[goal.id]);

        double distanceCurrentToFinish = _getManhattanDistance(points[current.key.id], points[goal.id]);
        double distance = _getManhattanDistance(points[current.key.id], points[next.id]) +
            distanceNextToFinish * coefficientCurrentLengthToFinish;

        if (distance < minDistance && distanceNextToFinish < distanceCurrentToFinish) {
          minDistance = distance;
          priorityQueue.add(MapEntry<Node, double>(next, distance));
          cameFrom[next] = current.key;
        }
      });
    }

    List<LatLng> pointsRoute = cameFrom.keys.map((key) => points[key.id]).toList();
    pointsRoute.add(points.last);
    this.add(MapEvent.buildRouteWithSights(pointsRoute));
  }

  double _getManhattanDistance(LatLng a, LatLng b) {
    return _getPythagorasDistance(a, b) + _getPythagorasDistance(a, b);
  }

  double _getPythagorasDistance(LatLng a, LatLng b) {
    double dLat = (a.latitude + b.latitude) / 2;
    double lon1P = a.longitude * cos(_toDegrees(dLat)); // поправка из-за разницы широты и долготы
    double lon2P = b.longitude * cos(_toDegrees(dLat));
    return sqrt(pow(a.latitude - b.latitude, 2) + pow(lon1P - lon2P, 2));
  }

  double _toDegrees(double angrad) {
    return angrad * 180.0 / pi;
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

  String _getStringCoordinates(List<LatLng> points) {
    String coordinates = '';
    points.forEach((point) {
      coordinates += '${point.longitude},${point.latitude};';
    });
    coordinates = coordinates.replaceRange(coordinates.length - 1, null, '');

    return coordinates;
  }
}
