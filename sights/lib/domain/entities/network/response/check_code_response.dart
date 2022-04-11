import 'package:json_annotation/json_annotation.dart';

part 'check_code_response.g.dart';

@JsonSerializable()
class CheckCodeResponse {
  CheckCodeResponse({
    required this.token,
    required this.refresh,
  });

  String token;
  String refresh;

  factory CheckCodeResponse.fromJson(Map<String, dynamic> json) => _$CheckCodeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CheckCodeResponseToJson(this);
}
