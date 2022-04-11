import 'package:sights/domain/enums/notification_type.dart';

import 'network/notification.dart';

class NotificationEntity {
  NotificationEntity({
    required this.id,
    required this.type,
    required this.title,
    required this.description,
    required this.isRead,
    required this.iconUrl,
    required this.date,
     this.isFirstNotificationOfDay = false,
  });

  int id;
  NotificationType type;
  String title;
  String description;
  bool isRead;
  String iconUrl;
  DateTime date;
  bool isFirstNotificationOfDay;

  // int id;
  // bool isRead;
  // String title;
  // String description;
  // String icon;

factory NotificationEntity.fromResponse(Notification response) => NotificationEntity(
  id: response.id,
  type: NotificationType.system,
  title: response.title,
  description:  response.description,
  iconUrl: response.icon,
    isRead: response.isRead,
  date: DateTime.now(),
);
}