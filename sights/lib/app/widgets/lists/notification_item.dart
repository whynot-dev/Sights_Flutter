import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/domain/entities/notification_entity.dart';
import 'package:sights/domain/enums/notification_type.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    required this.notification,
  });

  final NotificationEntity notification;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      if(notification.isFirstNotificationOfDay) ...[
        _buildDate(context),
        const SizedBox(height: 24),
      ],
      _buildNotification(context),
    ],
  );

  Widget _buildDate(context) =>  Text(
    _calculateDate(context),
    style: const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 13,
      color: AppColors.gray3,
    ),
  );

  String _calculateDate(context) {
    final today = DateTime.now();
    final yesterday =today.subtract(Duration(days: 1));
    final date = notification.date;

    if (date.day == today.day && date.month == today.month && date.year == today.year) {
      return AppLocalizations.of(context).today;
    } else if (date.day == yesterday.day &&
        date.month == yesterday.month &&
        date.year == yesterday.year) {
      return AppLocalizations.of(context).yesterday;
    } else {
      return '${DateFormat('dd.MM.yyyy').format(date)}';
    }
  }

  Widget _buildNotification(context) => Container(
    decoration: BoxDecoration(
      color: AppColors.gray12,
      borderRadius: BorderRadius.circular(24),
    ),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildTitle(notification.title),
                  const SizedBox(height: 8),
                  _buildText(notification.description),
                ],
              ),
            ),
          ),
          (notification.type != NotificationType.system) ? _buildSystemIcon() : _buildImage(),
        ]),
  );

  Widget _buildTitle(String title) => Text(
    title,
    overflow: TextOverflow.fade,
    textAlign: TextAlign.start,
    style: const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 15,
      color: AppColors.onAccent,
    ),
  );

  Widget _buildText(String text) => Text(
    text,
    overflow: TextOverflow.fade,
    textAlign: TextAlign.start,
    style: const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 13,
      color: AppColors.onAccent,
    ),
  );

  Widget _buildSystemIcon() => SizedBox(
    width: 80,
    child: Container(
      padding: const EdgeInsets.all(16),
      child: Align(
        alignment: Alignment.topRight,
        child: SvgPicture.asset(
          Assets.images.appLogo58,
          width: 48,
          height: 48,
        ),
      ),
    ),
  );

  Widget _buildImage() => Assets.images.youzBubbleCard.image();
}
