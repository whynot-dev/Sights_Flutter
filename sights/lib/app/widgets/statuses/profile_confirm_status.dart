import 'package:flutter/cupertino.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/domain/enums/profile_confirm_type.dart';
import 'package:sights/localization/app_localizations.dart';

class ProfileConfirmStatus extends StatelessWidget {
  ProfileConfirmStatus({
    required this.profileConfirmType,
    this.onTap,
  });

  final ProfileConfirmType profileConfirmType;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          onTap?.call();
        },
        behavior: HitTestBehavior.translucent,
        child: Container(
          padding: EdgeInsets.only(
              top: 12, left: 12, right: 12, bottom: profileConfirmType == ProfileConfirmType.inProcessing ? 12 : 16),
          decoration: BoxDecoration(
            color: AppColors.black8,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildWarningIcon(),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 3),
                  _buildTitle(context),
                  if (profileConfirmType != ProfileConfirmType.inProcessing) const SizedBox(height: 5),
                  if (profileConfirmType != ProfileConfirmType.inProcessing) _buildSubTitle(context),
                ],
              )
            ],
          ),
        ),
      );

  Widget _buildTitle(BuildContext context) => Text(
        _getTitle(context),
        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.white),
      );

  Widget _buildSubTitle(BuildContext context) => Text(
        _getSubTitle(context),
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.accent),
      );

  Widget _buildWarningIcon() => Container(
        alignment: Alignment.center,
        width: 22,
        height: 22,
        decoration: BoxDecoration(
          color: profileConfirmType == ProfileConfirmType.confirmationError ? AppColors.errorMessage : AppColors.accent,
          shape: BoxShape.circle,
        ),
        child: Text(
          '!',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: profileConfirmType == ProfileConfirmType.confirmationError ? AppColors.white : AppColors.onAccent,
          ),
        ),
      );

  String _getTitle(BuildContext context) {
    switch (profileConfirmType) {
      case ProfileConfirmType.confirmed:
        break;
      case ProfileConfirmType.notConfirmed:
        return AppLocalizations.of(context).accountNotVerified;
      case ProfileConfirmType.inProcessing:
        return AppLocalizations.of(context).accountInProgress;
      case ProfileConfirmType.confirmationError:
        return AppLocalizations.of(context).accountVerificationError;
    }
    return '';
  }

  String _getSubTitle(BuildContext context) {
    switch (profileConfirmType) {
      case ProfileConfirmType.confirmed:
        break;
      case ProfileConfirmType.notConfirmed:
        return AppLocalizations.of(context).confirm;
      case ProfileConfirmType.inProcessing:
        break;
      case ProfileConfirmType.confirmationError:
        return AppLocalizations.of(context).repeat;
    }
    return '';
  }
}
