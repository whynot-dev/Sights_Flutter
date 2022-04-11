part of 'search_address_bloc.dart';

@freezed
class SearchAddressEvent with _$SearchAddressEvent {
  const factory SearchAddressEvent.init() = Init;
  const factory SearchAddressEvent.cancelClicked() = CancelClicked;
  const factory SearchAddressEvent.searchChanged(String text) = SearchChanged;
  const factory SearchAddressEvent.addressClicked(
    AddressItemEntity addressItemEntity,
    bool isSearchAddress,
  ) = AddressClicked;
}
