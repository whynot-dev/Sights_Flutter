import 'package:json_annotation/json_annotation.dart';

part 'content_file.g.dart';

@JsonSerializable()
class ContentFile {
  ContentFile({
    required this.url,
    required this.width,
    required this.height,
  });

  String url;
  int width;
  int height;

  factory ContentFile.fromJson(Map<String, dynamic> json) => _$ContentFileFromJson(json);

  Map<String, dynamic> toJson() => _$ContentFileToJson(this);
}