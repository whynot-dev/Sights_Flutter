// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_address_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveAddressBody _$SaveAddressBodyFromJson(Map<String, dynamic> json) {
  return SaveAddressBody(
    type: json['type'] as String,
    city: json['city'] as String,
    street: json['street'] as String,
    house: json['house'] as String,
    name: json['name'] as String?,
    floor: json['floor'] as String?,
    apartment: json['apartment'] as String?,
    structure: json['structure'] as String?,
    comment: json['comment'] as String?,
    intercom: json['intercom'] as String?,
  );
}

Map<String, dynamic> _$SaveAddressBodyToJson(SaveAddressBody instance) =>
    <String, dynamic>{
      'type': instance.type,
      'city': instance.city,
      'street': instance.street,
      'house': instance.house,
      'name': instance.name,
      'floor': instance.floor,
      'apartment': instance.apartment,
      'structure': instance.structure,
      'intercom': instance.intercom,
      'comment': instance.comment,
    };
