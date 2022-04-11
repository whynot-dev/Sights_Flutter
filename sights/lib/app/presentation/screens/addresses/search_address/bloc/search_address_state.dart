part of 'search_address_bloc.dart';

@freezed
class SearchAddressState with _$SearchAddressState {
  factory SearchAddressState({
    BlocAction? action,
    String? searchText,
    @Default([])List<AddressItemEntity> myAddresses,
    @Default({})Map<AddressItemEntity, Point?> searchAddresses,
    @Default(true)bool needShowMyAddresses,
  }) = _SearchAddressState;
}
