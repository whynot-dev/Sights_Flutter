part of 'address_on_map_bloc.dart';

@freezed
class AddressOnMapEvent with _$AddressOnMapEvent {
  const factory AddressOnMapEvent.init() = Init;
  const factory AddressOnMapEvent.backButtonClicked() = BackButtonClicked;
  const factory AddressOnMapEvent.changeAddressClicked() = ChangeAddressClicked;
  const factory AddressOnMapEvent.plusClicked() = PlusClicked;
  const factory AddressOnMapEvent.minusClicked() = MinusClicked;
  const factory AddressOnMapEvent.myPositionClicked() = MyPositionClicked;
  const factory AddressOnMapEvent.onMapCreated() = OnMapCreated;
  const factory AddressOnMapEvent.onCameraMove({
    required CameraPosition cameraPosition,
    required bool cameraIsMoving,
    VisibleRegion? visibleRegion,
  }) = OnCameraMove;

  const factory AddressOnMapEvent.selectThisAddressClicked() = SelectThisAddressClicked;
  const factory AddressOnMapEvent.showMessageNoGeo() = ShowMessageNoGeo;
  const factory AddressOnMapEvent.getCurrentAddress() = GetCurrentAddress;
  const factory AddressOnMapEvent.getPickupPoints() = GetPickupPoints;
  const factory AddressOnMapEvent.pickupPointOnMapClicked(PickupPointEntity pickupPointEntity) = PickupPointOnMapClicked;
  const factory AddressOnMapEvent.pickupInfoSlideChanged(double position) = PickupInfoSlideChanged;
  const factory AddressOnMapEvent.currentAddressChanged(Point point) = CurrentAddressChanged;
}
