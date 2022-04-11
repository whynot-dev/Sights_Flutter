import 'package:json_annotation/json_annotation.dart';

part 'document.g.dart';

@JsonSerializable()
class Document {
  Document({
    required this.type,
    required this.number,
    required this.serial,
    required this.issued_by,
    required this.when_issued,
    this.photo,
  });

  String type;
  String number;
  String serial;
  String issued_by;
  DateTime when_issued;
  List<String>? photo;

  factory Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentToJson(this);
}
