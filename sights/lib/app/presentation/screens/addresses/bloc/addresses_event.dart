part of 'addresses_bloc.dart';

@freezed
class AddressesEvent with _$AddressesEvent {
  const factory AddressesEvent.init() = Init;
  const factory AddressesEvent.getProfile() = GetProfile;
  const factory AddressesEvent.newAddressClicked() = NewAddressClicked;
  const factory AddressesEvent.addressClicked(AddressItemEntity addressItemEntity) = AddressClicked;
}