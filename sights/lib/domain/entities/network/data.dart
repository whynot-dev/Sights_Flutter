import 'package:json_annotation/json_annotation.dart';

import 'content_file.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  Data({
    this.text,
    this.level,
    this.file,
  });

  String? text;
  int? level;
  ContentFile? file;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}