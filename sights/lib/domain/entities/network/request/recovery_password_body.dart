import 'package:json_annotation/json_annotation.dart';

part 'recovery_password_body.g.dart';

@JsonSerializable()
class RecoveryPasswordBody {
  RecoveryPasswordBody({
    required this.password,
    required this.passwordConfirmation,
  });

  String password;
  @JsonKey(name: "password_confirmation")
  String passwordConfirmation;

  factory RecoveryPasswordBody.fromJson(Map<String, dynamic> json) => _$RecoveryPasswordBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RecoveryPasswordBodyToJson(this);
}