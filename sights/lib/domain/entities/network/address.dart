import 'package:json_annotation/json_annotation.dart';

import 'address_item.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  Address({
    required this.registration,
    required this.residence,
    required this.matches,
    required this.items,
  });

  String registration;
  String residence;
  bool matches;
  List<AddressItem> items;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
