part of 'addresses_bloc.dart';

@freezed
class AddressesState with _$AddressesState {
  factory AddressesState({
    BlocAction? action,
    @Default([]) List<AddressItemEntity> addresses,
  }) = _AddressesState;
}
