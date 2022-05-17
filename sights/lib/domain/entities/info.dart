import 'package:json_annotation/json_annotation.dart';

part 'info.g.dart';

@JsonSerializable()
class Info {
  Info({
    required this.src,
    required this.srcId,
    required this.description,
  });

  String src;
  @JsonKey(name: 'src_id')
  int srcId;
  @JsonKey(name: 'descr')
  String description;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);
}
