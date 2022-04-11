import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/domain/enums/push_notification_type.dart';
import 'package:sights/gen/assets.gen.dart';

class NotificationToast extends StatelessWidget {
  const NotificationToast({
    required this.message,
    required this.type,
    this.title,
  });

  final String message;
  final PushNotificationType type;
  final String? title;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.white3),
          color: AppColors.grayBackground,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                type == PushNotificationType.subscription ? SizedBox() : _buildNotificationIcon(),
                Flexible(
                  child: Container(
                    padding: type == PushNotificationType.subscription
                        ? const EdgeInsets.only(left: 16, top: 16)
                        : const EdgeInsets.only(right: 12, top: 12, bottom: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (title != null) _buildTitle(),
                        if (title != null) const SizedBox(height: 2),
                        _buildText(),
                      ],
                    ),
                  ),
                ),
                type == PushNotificationType.subscription ? _buildSubscriptionNotification() : SizedBox(),
              ],
            ),
          ],
        ),
      );

  Widget _buildTitle() => Text(
        title ?? '',
        overflow: TextOverflow.fade,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.onAccent, height: 20 / 15),
      );

  Widget _buildText() => Text(
        message,
        overflow: TextOverflow.fade,
        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.onAccent, height: 18 / 13),
      );

  Widget _buildNotificationIcon() => Padding(
      padding: const EdgeInsets.only(left: 12, right: 10, top: 13, bottom: 13),
      child: SvgPicture.asset(_findIcon(), height: 16, width: 16));

  Widget _buildSubscriptionNotification() => Assets.images.star.image();

  String _findIcon() {
    switch (type) {
      case PushNotificationType.success:
        return Assets.images.checkOk16;
      case PushNotificationType.error:
        return Assets.images.errorCross16;
      case PushNotificationType.warning:
        return Assets.images.exclamationMark16;
      default:
        return Assets.images.exclamationMark16;
    }
  }
}
