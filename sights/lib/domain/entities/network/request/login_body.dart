import 'package:json_annotation/json_annotation.dart';

part 'login_body.g.dart';

@JsonSerializable()
class LoginBody {
  LoginBody({
    required this.username,
    required this.password,
  });

  String username;
  String? password;

  factory LoginBody.fromJson(Map<String, dynamic> json) => _$LoginBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LoginBodyToJson(this);
}
