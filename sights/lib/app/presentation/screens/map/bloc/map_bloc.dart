import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'map_state.dart';

part 'map_event.dart';

part 'map_bloc.freezed.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(MapState()) {
    on<Init>(_init);
    on<OnMapCreated>(_onMapCreated);
    on<OnCameraMove>(_onCameraMove);
    on<MyLocationClicked>(_myLocationClicked);
    this.add(MapEvent.init());
  }

  GoogleMapController? _mapController;

  FutureOr<void> _init(Init event, Emitter<MapState> emit) {
    emit(state.copyWith());
  }

  FutureOr<void> _onMapCreated(OnMapCreated event, Emitter<MapState> emit) {
    _mapController = event.controller;
    emit(state.copyWith(mapLoaded: true));
  }

  FutureOr<void> _onCameraMove(OnCameraMove event, Emitter<MapState> emit) {
    emit(state.copyWith(cameraPosition: event.position));
  }

  FutureOr<void> _onMapTap(OnMapTap event, Emitter<MapState> emit) {}

  FutureOr<void> _myLocationClicked(MyLocationClicked event, Emitter<MapState> emit) {
    emit(state.copyWith());
  }

  Future<Position?> _determinePosition(Emitter<MapState> emit) async {
    emit(state.copyWith(action: null));
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      //emit(state.copyWith(action: ShowAlertMessage(messageType: MessageType.noGeoPermission)));
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
      //emit(state.copyWith(action: ShowAlertMessage(messageType: MessageType.noGeoPermission)));
      return null;
    }
    return await Geolocator.getCurrentPosition();
  }
}
