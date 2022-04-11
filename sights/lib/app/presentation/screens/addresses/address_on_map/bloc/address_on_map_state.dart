part of 'address_on_map_bloc.dart';

@freezed
class AddressOnMapState with _$AddressOnMapState {
  factory AddressOnMapState({
    BlocAction? action,
    AddressItemEntity? currentAddress,
    @Default(Point(latitude: 55.719450, longitude: 37.728756)) Point currentCoordinate,
    VisibleRegion? currentVisibleRegion,
    @Default([]) List<PickupPointEntity> pickupPoints,
    PickupPointEntity? selectedPickupPoint,
    @Default(13) double currentZoomLevel,
    @Default(false) bool cameraIsMoving,
    @Default(false) bool pickupInfoIsExpanded,
  }) = _AddressOnMapState;
}

class ChangeCamera extends BlocAction {}

class ShowChangeAddressBottomSheet extends BlocAction {
  ShowChangeAddressBottomSheet({
    required this.currentCoordinate,
    this.myAddresses,
  });

  Point currentCoordinate;
  List<AddressItemEntity>? myAddresses;
}
