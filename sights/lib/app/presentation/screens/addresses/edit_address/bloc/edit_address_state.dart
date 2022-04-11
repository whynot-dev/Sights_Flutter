part of 'edit_address_bloc.dart';

@freezed
class EditAddressState with _$EditAddressState {
  factory EditAddressState({
    BlocAction? action,
    required String address,
    String? apartment,
    String? entrance,
    String? floor,
    String? comment,
  }) = _EditAddressState;
}
