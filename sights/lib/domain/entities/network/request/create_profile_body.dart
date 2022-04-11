import 'package:json_annotation/json_annotation.dart';

import '../authorization_address.dart';
import '../document.dart';

part 'create_profile_body.g.dart';

@JsonSerializable()
class CreateProfileBody {
  CreateProfileBody({
    required this.lastName,
    required this.firstName,
    required this.middleName,
    required this.birthday,
    required this.gender,
    required this.email,
    required this.documents,
    required this.address,
  });

  String lastName;
  String firstName;
  String middleName;
  DateTime birthday;
  String gender;
  String email;
  List<Document> documents;
  List<AuthorizationAddress> address;

  factory CreateProfileBody.fromJson(Map<String, dynamic> json) => _$CreateProfileBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CreateProfileBodyToJson(this);
}
