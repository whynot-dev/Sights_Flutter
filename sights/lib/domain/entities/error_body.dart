import 'package:json_annotation/json_annotation.dart';

part 'error_body.g.dart';

@JsonSerializable()
class ErrorBody {
  ErrorBody({
    required this.error,
  });

  String error;

  factory ErrorBody.fromJson(Map<String, dynamic> json) => _$ErrorBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorBodyToJson(this);
}