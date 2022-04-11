import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/domain/entities/main_action_entity.dart';
import 'package:sights/domain/enums/main_action_type.dart';
import 'package:sights/gen/assets.gen.dart';

class MainActionItem extends StatelessWidget {
  MainActionItem({
    required this.mainAction,
    this.onTap,
  });

  final MainActionEntity mainAction;
  final Function(MainActionEntity mainAction)? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          onTap?.call(mainAction);
        },
        behavior: HitTestBehavior.translucent,
        child: SizedBox(
          width: mainAction.mainActionType == MainActionType.prolongRentProduct ? 277 : 173,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.black4,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: AppColors.white3),
                ),
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.max,
                  children: [
                    mainAction.mainActionType == MainActionType.prolongRentProduct ? _buildImage() : const SizedBox(),
                    mainAction.mainActionType == MainActionType.prolongRentProduct
                        ? const SizedBox(width: 5)
                        : const SizedBox(),
                    _buildTextAndIcon(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget _buildTextAndIcon(BuildContext context) => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTitle(context),
                _buildIcon(),
              ],
            ),
            mainAction.content?.title != null ? const SizedBox(height: 4) : const SizedBox(),
            mainAction.content?.title != null ? _buildSubTitle() : const SizedBox(),
          ],
        ),
      );

  Widget _buildTitle(BuildContext context) => SizedBox(
        width: mainAction.mainActionType == MainActionType.prolongRentProduct ? 177 : 117,
        child: Text(
          mainAction.title,
          overflow: TextOverflow.ellipsis,
          maxLines: mainAction.content?.title!= null ? 2 : 3,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: AppColors.white, height: 16 / 13),
        ),
      );

  Widget _buildImage() => CachedNetworkImage(
        imageUrl: mainAction.urlImage!,
        width: 69,
        height: 54,
        fit: BoxFit.cover,
      );

  Widget _buildSubTitle() => Text(
        mainAction.content?.title ?? '',
        overflow: TextOverflow.fade,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: AppColors.accent),
      );

  Widget _buildIcon() {
    String? asset;
    switch (mainAction.mainActionType) {
      case MainActionType.prolongRentProduct:
        break;
      case MainActionType.accountVerification:
        asset = Assets.images.accountVerification;
        break;
      case MainActionType.prolongRent:
        asset = Assets.images.timeExtension;
        break;
      case MainActionType.presentCertificate:
        asset = Assets.images.gift24;
        break;
      case MainActionType.repeatRent:
        asset = Assets.images.arrowRepeat;
        break;
    }
    return asset != null
        ? SvgPicture.asset(asset, height: 24, width: 24, color: AppColors.white.withOpacity(0.4))
        : const SizedBox();
  }
}
