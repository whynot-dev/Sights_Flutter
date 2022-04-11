import 'package:json_annotation/json_annotation.dart';

part 'simple_response.g.dart';

@JsonSerializable()
class SimpleResponse {
  SimpleResponse({
    required this.success,
  });

  bool success;

  factory SimpleResponse.fromJson(Map<String, dynamic> json) => _$SimpleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleResponseToJson(this);
}
