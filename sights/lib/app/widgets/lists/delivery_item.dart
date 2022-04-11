import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sights/app/resources/app_colors.dart';

class DeliveryItem extends StatelessWidget {
  const DeliveryItem({
    required this.title,
    required this.icon,
    required this.price,
    this.subTitle,
  });

  final String title;
  final String? subTitle;
  final String icon;
  final String price;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _buildImage(),
                const SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitle(context),
                    _buildSubtitle(context),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 44,),
                _buildPrice(),
              ],
            ),
          ],
        ),
      );

  Widget _buildImage() => Container(
        alignment: Alignment.center,
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: AppColors.accent,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: SvgPicture.asset(icon),
      );

  Widget _buildTitle(BuildContext context) => Text(
        title,
        style: TextStyle(
          color: AppColors.onSurface,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      );

  Widget _buildSubtitle(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 2),
        child: subTitle != null
            ? Text(
                subTitle!,
                style: TextStyle(
                  color: AppColors.gray3,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              )
            : SizedBox(),
      );

  Widget _buildPrice() => Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Text(
      price,
      style: TextStyle(
        color: AppColors.onSurface,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
