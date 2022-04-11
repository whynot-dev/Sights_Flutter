import 'package:json_annotation/json_annotation.dart';

part 'address_item.g.dart';

@JsonSerializable()
class AddressItem {
  AddressItem({
    required this.id,
    required this.isDefault,
    required this.type,
    required this.address,
    this.name,
    required this.city,
    required this.street,
    required this.house,
    this.floor,
    this.apartment,
    this.structure,
    this.intercom,
    this.comment,
  });

  int id;
  bool isDefault;
  String type;
  String address;
  String? name;
  String city;
  String street;
  String house;
  String? floor;
  String? apartment;
  String? structure;
  String? intercom;
  String? comment;

  factory AddressItem.fromJson(Map<String, dynamic> json) => _$AddressItemFromJson(json);

  Map<String, dynamic> toJson() => _$AddressItemToJson(this);
}
