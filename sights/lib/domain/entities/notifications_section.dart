import 'notification_entity.dart';

class NotificationsSectionEntity {
  NotificationsSectionEntity({
    required this.date,
    required this.notifications,
  });

  DateTime date;
  List<NotificationEntity> notifications;

}