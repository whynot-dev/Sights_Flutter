import 'package:json_annotation/json_annotation.dart';

part 'save_address_body.g.dart';

@JsonSerializable()
class SaveAddressBody {
  SaveAddressBody({
    required this.type,
    required this.city,
    required this.street,
    required this.house,
    this.name,
    this.floor,
    this.apartment,
    this.structure,
    this.comment,
    this.intercom,
  });

  String type;
  String city;
  String street;
  String house;
  String? name;
  String? floor;
  String? apartment;
  String? structure;
  String? intercom;
  String? comment;

  factory SaveAddressBody.fromJson(Map<String, dynamic> json) => _$SaveAddressBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SaveAddressBodyToJson(this);
}
