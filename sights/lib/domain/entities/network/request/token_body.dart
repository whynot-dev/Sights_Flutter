import 'package:json_annotation/json_annotation.dart';

part 'token_body.g.dart';

@JsonSerializable()
class TokenBody {
  TokenBody({
    required this.token,
  });

  String token;

  factory TokenBody.fromJson(Map<String, dynamic> json) => _$TokenBodyFromJson(json);

  Map<String, dynamic> toJson() => _$TokenBodyToJson(this);
}