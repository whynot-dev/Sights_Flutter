import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';

class ProfileMenuItem extends StatelessWidget {
  ProfileMenuItem({
    required this.index,
    this.onTap,
  });

  final int index;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          onTap?.call();
        },
        behavior: HitTestBehavior.translucent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 11, right: 16, left: 16),
              child: Row(
                children: [
                  _buildIcon(),
                  const SizedBox(width: 12),
                  _buildTitle(context),
                  const Spacer(),
                  _buildRightArrow(),
                ],
              ),
            ),
            _buildDivider(),
          ],
        ),
      );

  Widget _buildIcon() => SvgPicture.asset(_getIcon() ?? '');

  Widget _buildTitle(BuildContext context) => Text(
        _getTitle(context) ?? '',
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: AppColors.onAccent),
      );

  Widget _buildRightArrow() => SvgPicture.asset(Assets.images.arrowRight);

  Widget _buildDivider() => Padding(
        padding: const EdgeInsets.only(left: 58),
        child: Container(height: 1, color: AppColors.gray7),
      );

  String? _getTitle(BuildContext context) {
    switch (index) {
      case 0:
        return AppLocalizations.of(context).favorites;
      case 1:
        return AppLocalizations.of(context).myOrders;
      case 2:
        return AppLocalizations.of(context).addresses;
      case 3:
        return AppLocalizations.of(context).paymentMethods;
      case 4:
        return AppLocalizations.of(context).support;
      case 5:
        return AppLocalizations.of(context).howServiceWorks;
    }
    return null;
  }

  String? _getIcon() {
    switch (index) {
      case 0:
        return Assets.images.profileHeart;
      case 1:
        return Assets.images.profilePackage;
      case 2:
        return Assets.images.profileMarker;
      case 3:
        return Assets.images.profilePayments;
      case 4:
        return Assets.images.profileSupport;
      case 5:
        return Assets.images.profileYouz;
    }
    return null;
  }
}
