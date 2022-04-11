import 'package:sights/domain/enums/address_type.dart';

import 'network/address_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_item_entity.freezed.dart';

@freezed
class AddressItemEntity with _$AddressItemEntity {
  factory AddressItemEntity({
    required int id,
    required bool isDefault,
    required AddressType type,
    required String address,
    String? name,
    required String city,
    required String street,
    required String house,
    String? floor,
    String? apartment,
    String? structure,
    String? intercom,
    String? comment,
    String? country,
  }) = _AddressItemEntity;

  factory AddressItemEntity.fromResponse(AddressItem response) => AddressItemEntity(
        id: response.id,
        isDefault: response.isDefault,
        type: _getAddressType(response.type),
        address: response.address,
        name: response.name,
        city: response.city,
        street: response.street,
        house: response.house,
        floor: response.floor,
        apartment: response.apartment,
        structure: response.structure,
        intercom: response.intercom,
        comment: response.comment,
      );
}

AddressType _getAddressType(String type) {
  switch (type) {
    case 'registration':
      return AddressType.registration;
    case 'delivery':
      return AddressType.delivery;
  }
  return AddressType.none;
}
