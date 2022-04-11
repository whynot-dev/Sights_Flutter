import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:pausable_timer/pausable_timer.dart';
import 'package:yandex_geocoder/yandex_geocoder.dart' as geocoder;
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/navigation/navigation_type.dart';
import 'package:sights/app/presentation/screens/addresses/bloc/addresses_bloc.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/core/enums/message_type.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/data/gateways/local/preferences_local_gateway.dart';
import 'package:sights/data/repositories/profile_repository.dart';
import 'package:sights/domain/entities/address_item_entity.dart';
import 'package:sights/domain/entities/network/city.dart';
import 'package:sights/domain/entities/pickup_point_entity.dart';
import 'package:sights/domain/enums/address_type.dart';

part 'address_on_map_state.dart';

part 'address_on_map_event.dart';

part 'address_on_map_bloc.freezed.dart';

class AddressOnMapBloc extends Bloc<AddressOnMapEvent, AddressOnMapState> {
  AddressOnMapBloc({
    required this.preferencesLocalGateway,
    required this.profileRepository,
    required this.actionForPopUntil,
    this.myAddresses,
    this.addressesBloc,
  }) : super(AddressOnMapState()) {
    on<Init>(_init);
    on<BackButtonClicked>(_backButtonClicked);
    on<ChangeAddressClicked>(_changeAddressClicked);
    on<PlusClicked>(_plusClicked);
    on<MinusClicked>(_minusClicked);
    on<MyPositionClicked>(_myPositionClicked);
    on<OnMapCreated>(_onMapCreated);
    on<OnCameraMove>(_onCameraMove);
    on<SelectThisAddressClicked>(_selectThisAddressClicked);
    on<ShowMessageNoGeo>(_showMessageNoGeo);
    on<GetCurrentAddress>(_getCurrentAddress);
    on<GetPickupPoints>(_getPickupPoints);
    on<PickupPointOnMapClicked>(_pickupPointOnMapClicked);
    on<PickupInfoSlideChanged>(_pickupInfoSlideChanged);
    on<CurrentAddressChanged>(_currentAddressChanged);
    this.add(AddressOnMapEvent.init());
  }

  final PreferencesLocalGateway preferencesLocalGateway;
  final ProfileRepository profileRepository;
  final AddressesBloc? addressesBloc;
  final List<AddressItemEntity>? myAddresses;
  final NavigateAction actionForPopUntil;
  PickupPointEntity? _selectedPoint;
  PausableTimer _getPickupsTimer = PausableTimer(const Duration(milliseconds: 300), () {});

  bool _isOnlyZoomChanged = false;

  FutureOr<void> _init(Init event, Emitter<AddressOnMapState> emit) {
    emit(state.copyWith(
      currentAddress: AddressItemEntity(
        id: 0,
        isDefault: false,
        type: AddressType.delivery,
        address: '',
        city: '',
        street: '',
        house: '',
      ),
    ));
  }

  FutureOr<void> _backButtonClicked(BackButtonClicked event, Emitter<AddressOnMapState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateBack()));
  }

  FutureOr<void> _changeAddressClicked(ChangeAddressClicked event, Emitter<AddressOnMapState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(
        action: ShowChangeAddressBottomSheet(
      myAddresses: myAddresses,
      currentCoordinate: state.currentCoordinate,
    )));
  }

  FutureOr<void> _plusClicked(PlusClicked event, Emitter<AddressOnMapState> emit) {
    if (!state.cameraIsMoving) {}
    _isOnlyZoomChanged = true;
    emit(state.copyWith(action: null));
    emit(state.copyWith(
      action: ChangeCamera(),
      currentZoomLevel: state.currentZoomLevel + 1,
    ));
  }

  FutureOr<void> _minusClicked(MinusClicked event, Emitter<AddressOnMapState> emit) {
    _isOnlyZoomChanged = true;
    emit(state.copyWith(action: null));
    emit(state.copyWith(
      action: ChangeCamera(),
      currentZoomLevel: state.currentZoomLevel - 1,
    ));
  }

  FutureOr<void> _myPositionClicked(MyPositionClicked event, Emitter<AddressOnMapState> emit) async {
    Point? currentCoordinate = await _getCurrentCoordinate(isMyPositionClicked: true);
    if (currentCoordinate != null) {
      emit(state.copyWith(action: null));
      emit(state.copyWith(
        currentCoordinate: currentCoordinate,
        action: ChangeCamera(),
        currentZoomLevel: 17,
      ));
    }
  }

  FutureOr<void> _onMapCreated(OnMapCreated event, Emitter<AddressOnMapState> emit) async {
    emit(state.copyWith(action: null));
    Point firstCoordinate = await _getCurrentCoordinate() ?? state.currentCoordinate;
    state.copyWith(currentCoordinate: firstCoordinate);
    this.add(AddressOnMapEvent.getCurrentAddress());
    emit(state.copyWith(currentCoordinate: firstCoordinate, currentZoomLevel: 13, action: ChangeCamera()));
  }

  FutureOr<void> _onCameraMove(OnCameraMove event, Emitter<AddressOnMapState> emit) async {
    if (!event.cameraIsMoving) {
      emit(state.copyWith(selectedPickupPoint: _isOnlyZoomChanged ? state.selectedPickupPoint : _selectedPoint));
      this.add(AddressOnMapEvent.getCurrentAddress());
      if (_getPickupsTimer.isActive) {
        await Future.delayed(_getPickupsTimer.elapsed);
        this.add(AddressOnMapEvent.getPickupPoints());
        _getPickupsTimer.reset();
        _getPickupsTimer.start();
      } else {
        this.add(AddressOnMapEvent.getPickupPoints());
        _getPickupsTimer.reset();
        _getPickupsTimer.start();
      }
      _selectedPoint = null;
      emit(state.copyWith(
        currentCoordinate: event.cameraPosition.target,
        currentZoomLevel: event.cameraPosition.zoom,
        currentVisibleRegion: event.visibleRegion,
        cameraIsMoving: _isOnlyZoomChanged ? false : event.cameraIsMoving,
      ));
      _isOnlyZoomChanged = false;
    } else {
      emit(state.copyWith(
        currentCoordinate: event.cameraPosition.target,
        currentZoomLevel: event.cameraPosition.zoom,
        currentVisibleRegion: event.visibleRegion,
        cameraIsMoving: _isOnlyZoomChanged ? false : event.cameraIsMoving,
        selectedPickupPoint: _isOnlyZoomChanged ? state.selectedPickupPoint : _selectedPoint,
      ));
    }
  }

  FutureOr<void> _selectThisAddressClicked(SelectThisAddressClicked event, Emitter<AddressOnMapState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(
      action: NavigateAction.navigateToEditAddress(
        NavigateType.push,
        addressItemEntity: state.currentAddress,
        addressesBloc: addressesBloc,
        isNewAddress: true,
        actionForPopUntil: actionForPopUntil,
      ),
    ));
  }

  FutureOr<void> _showMessageNoGeo(ShowMessageNoGeo event, Emitter<AddressOnMapState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: ShowMessage(messageType: MessageType.noGeoPermission)));
  }

  FutureOr<void> _getCurrentAddress(GetCurrentAddress event, Emitter<AddressOnMapState> emit) async {
    final geocoder.YandexGeocoder _geoCoder = geocoder.YandexGeocoder(apiKey: 'ec2b6437-8432-4316-9a68-d60c091fd2df');

    final geocoder.GeocodeResponse geocodeFromPoint = await _geoCoder.getGeocode(
      geocoder.GeocodeRequest(
        geocode: geocoder.PointGeocode(
          latitude: state.currentCoordinate.latitude,
          longitude: state.currentCoordinate.longitude,
        ),
      ),
    );
    String address = geocodeFromPoint.response?.geoObjectCollection?.featureMember?[0].geoObject?.name ?? '';
    List<geocoder.Component> addressComponents = geocodeFromPoint.response?.geoObjectCollection?.featureMember?[0]
            .geoObject?.metaDataProperty?.geocoderMetaData?.address?.components ??
        [];
    String city =
        addressComponents.firstWhereOrNull((component) => component.kind == geocoder.KindResponse.locality)?.name ?? '';
    String street =
        addressComponents.firstWhereOrNull((component) => component.kind == geocoder.KindResponse.street)?.name ?? '';
    String house =
        addressComponents.firstWhereOrNull((component) => component.kind == geocoder.KindResponse.house)?.name ?? '';
    emit(state.copyWith(
        currentAddress: state.currentAddress?.copyWith(address: address, city: city, street: street, house: house)));
  }

  FutureOr<void> _getPickupPoints(GetPickupPoints event, Emitter<AddressOnMapState> emit) async {
    String token = await preferencesLocalGateway.getToken() ?? '';
    List<PickupPointEntity>? pickupPoints;
    if (state.currentVisibleRegion != null) {
      Either<List<PickupPointEntity>, Failure> result = await profileRepository.getPickupPoints(
        token: token,
        pointOne: state.currentVisibleRegion!.bottomLeft,
        pointTwo: state.currentVisibleRegion!.topRight,
      );
      result.fold(
        (data) {
          pickupPoints = data;
        },
        (error) {},
      );
      emit(state.copyWith(pickupPoints: pickupPoints ?? []));
    }
  }

  FutureOr<void> _pickupPointOnMapClicked(PickupPointOnMapClicked event, Emitter<AddressOnMapState> emit) {
    _selectedPoint = event.pickupPointEntity;
    emit(state.copyWith(
      action: ChangeCamera(),
      currentCoordinate: event.pickupPointEntity.point,
      selectedPickupPoint: _selectedPoint,
      currentAddress: state.currentAddress?.copyWith(address: _selectedPoint?.address ?? ''),
    ));
  }

  FutureOr<void> _pickupInfoSlideChanged(PickupInfoSlideChanged event, Emitter<AddressOnMapState> emit) {
    if (event.position > 0) {
      emit(state.copyWith(pickupInfoIsExpanded: true));
    } else if (event.position == 0) {
      emit(state.copyWith(pickupInfoIsExpanded: false));
    }
  }

  FutureOr<void> _currentAddressChanged(CurrentAddressChanged event, Emitter<AddressOnMapState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(
      currentCoordinate: event.point,
      action: ChangeCamera(),
      currentZoomLevel: 16,
    ));
  }

  Future<Point?> _getCurrentCoordinate({bool isMyPositionClicked = false}) async {
    Position? position = await _determinePosition();
    Point currentCoordinate;
    if (position != null) {
      currentCoordinate = Point(latitude: position.latitude, longitude: position.longitude);
    } else if (isMyPositionClicked) {
      return null;
    } else {
      String token = await preferencesLocalGateway.getToken() ?? '';
      List<City> cities = [];
      Either<List<City>, Failure> result = await profileRepository.getCities(
        token: token,
      );
      result.fold(
        (data) {
          cities = data;
        },
        (error) {},
      );
      City? currentCity = cities.firstWhereOrNull((city) => city.selected);
      if (currentCity != null) {
        currentCoordinate = Point(latitude: currentCity.center.point.lat, longitude: currentCity.center.point.long);
      } else if (cities.isNotEmpty) {
        currentCoordinate = Point(latitude: cities[0].center.point.lat, longitude: cities[0].center.point.long);
      } else {
        currentCoordinate = state.currentCoordinate;
      }
    }
    return currentCoordinate;
  }

  Future<Position?> _determinePosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      this.add(AddressOnMapEvent.showMessageNoGeo());
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return null;
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        this.add(AddressOnMapEvent.showMessageNoGeo());
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return null;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      this.add(AddressOnMapEvent.showMessageNoGeo());
      // Permissions are denied forever, handle appropriately.
      return null;
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
}
