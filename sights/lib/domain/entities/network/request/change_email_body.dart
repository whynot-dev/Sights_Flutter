import 'package:json_annotation/json_annotation.dart';

part 'change_email_body.g.dart';

@JsonSerializable()
class ChangeEmailBody {
  ChangeEmailBody({
    required this.email,
  });

  String email;

  factory ChangeEmailBody.fromJson(Map<String, dynamic> json) => _$ChangeEmailBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeEmailBodyToJson(this);
}