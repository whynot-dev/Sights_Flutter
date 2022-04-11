// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizationAddress _$AuthorizationAddressFromJson(Map<String, dynamic> json) {
  return AuthorizationAddress(
    type: json['type'] as String,
    city: json['city'] as String,
    street: json['street'] as String,
    house: json['house'] as String,
    apartment: json['apartment'] as String,
  );
}

Map<String, dynamic> _$AuthorizationAddressToJson(
        AuthorizationAddress instance) =>
    <String, dynamic>{
      'type': instance.type,
      'city': instance.city,
      'street': instance.street,
      'house': instance.house,
      'apartment': instance.apartment,
    };
