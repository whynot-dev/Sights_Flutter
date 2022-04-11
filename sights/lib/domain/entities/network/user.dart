import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User({
    required this.fullName,
    required this.first_name,
    required this.last_name ,
    required this.middle_name,
    required this.birthday,
    required this.gender,
  });

  String fullName;
  String first_name;
  String last_name;
  String middle_name;
  String birthday;
  String gender;


  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}