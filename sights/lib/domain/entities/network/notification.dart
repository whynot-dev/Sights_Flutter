import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

@JsonSerializable()
class Notification {
  Notification({
    required this.id,
    required this.isRead,
    required this.title,
    required this.description,
    required this.icon,
  });

  int id;
  bool isRead;
  String title;
  String description;
  String icon;

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);
}
