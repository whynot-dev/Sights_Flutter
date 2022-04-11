// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
    registration: json['registration'] as String,
    residence: json['residence'] as String,
    matches: json['matches'] as bool,
    items: (json['items'] as List<dynamic>)
        .map((e) => AddressItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'registration': instance.registration,
      'residence': instance.residence,
      'matches': instance.matches,
      'items': instance.items,
    };
