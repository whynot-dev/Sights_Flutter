import 'package:json_annotation/json_annotation.dart';

part 'check_code_body.g.dart';

@JsonSerializable()
class CheckCodeBody {
  CheckCodeBody({
    required this.token,
    required this.code,
  });

  String token;
  String code;

  factory CheckCodeBody.fromJson(Map<String, dynamic> json) => _$CheckCodeBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CheckCodeBodyToJson(this);
}