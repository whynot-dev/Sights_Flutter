// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressItem _$AddressItemFromJson(Map<String, dynamic> json) {
  return AddressItem(
    id: json['id'] as int,
    isDefault: json['isDefault'] as bool,
    type: json['type'] as String,
    address: json['address'] as String,
    name: json['name'] as String?,
    city: json['city'] as String,
    street: json['street'] as String,
    house: json['house'] as String,
    floor: json['floor'] as String?,
    apartment: json['apartment'] as String?,
    structure: json['structure'] as String?,
    intercom: json['intercom'] as String?,
    comment: json['comment'] as String?,
  );
}

Map<String, dynamic> _$AddressItemToJson(AddressItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isDefault': instance.isDefault,
      'type': instance.type,
      'address': instance.address,
      'name': instance.name,
      'city': instance.city,
      'street': instance.street,
      'house': instance.house,
      'floor': instance.floor,
      'apartment': instance.apartment,
      'structure': instance.structure,
      'intercom': instance.intercom,
      'comment': instance.comment,
    };
