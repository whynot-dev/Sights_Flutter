// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickupPoint _$PickupPointFromJson(Map<String, dynamic> json) {
  return PickupPoint(
    id: json['id'] as String,
    name: json['name'] as String,
    geo: (json['geo'] as List<dynamic>)
        .map((e) => (e as num).toDouble())
        .toList(),
    type: json['type'] as String,
    enabled: json['enabled'] as bool,
    available:
        (json['available'] as List<dynamic>).map((e) => e as String).toList(),
    price: (json['price'] as num).toDouble(),
    address: json['address'] as String,
    preview: json['preview'] as String,
    path: json['path'] as String,
    payments: json['payments'] as String?,
  );
}

Map<String, dynamic> _$PickupPointToJson(PickupPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'geo': instance.geo,
      'type': instance.type,
      'enabled': instance.enabled,
      'available': instance.available,
      'price': instance.price,
      'address': instance.address,
      'preview': instance.preview,
      'path': instance.path,
      'payments': instance.payments,
    };
