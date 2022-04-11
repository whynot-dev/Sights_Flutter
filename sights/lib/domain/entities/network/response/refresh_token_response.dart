import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_response.g.dart';

@JsonSerializable()
class RefreshTokenResponse {
  RefreshTokenResponse({
    required this.token,
    required this.refresh,
    this.type,
  });

  String token;
  String refresh;
  String? type;

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) => _$RefreshTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenResponseToJson(this);
}
