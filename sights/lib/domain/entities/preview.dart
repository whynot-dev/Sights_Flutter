import 'package:json_annotation/json_annotation.dart';

part 'preview.g.dart';

@JsonSerializable()
class Preview {
  Preview({
    required this.source,
    required this.width,
    required this.height,
  });

  String source;
  int width;
  int height;

  factory Preview.fromJson(Map<String, dynamic> json) => _$PreviewFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewToJson(this);
}
