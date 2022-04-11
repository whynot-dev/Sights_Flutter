import 'package:json_annotation/json_annotation.dart';

part 'error_body.g.dart';

@JsonSerializable()
class ErrorBody {
  ErrorBody({
    required this.success,
    required this.message,
  });

  bool success;
  String message;

  factory ErrorBody.fromJson(Map<String, dynamic> json) => _$ErrorBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorBodyToJson(this);
}