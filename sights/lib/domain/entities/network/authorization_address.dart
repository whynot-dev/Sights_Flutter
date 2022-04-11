import 'package:json_annotation/json_annotation.dart';

part 'authorization_address.g.dart';

@JsonSerializable()
class AuthorizationAddress {
  AuthorizationAddress({
    required this.type,
    required this.city,
    required this.street,
    required this.house,
    required this.apartment,
  });

  String type;
  String city;
  String street;
  String house;
  String apartment;


  factory AuthorizationAddress.fromJson(Map<String, dynamic> json) => _$AuthorizationAddressFromJson(json);
}