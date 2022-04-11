import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/gen/assets.gen.dart';

class ContentItem extends StatelessWidget {
  const ContentItem({
    this.imageUrl,
    this.title,
    this.videoUrl,
    this.level,
  });

  final String? title;
  final String? imageUrl;
  final String? videoUrl;
  final int? level;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildImage(),
          _buildTitle(),
          _buildSubTitle(),
        ],
      );

  Widget _buildImage() {
    if (imageUrl == null) return SizedBox();
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CachedNetworkImage(
              // height: 192,
              imageUrl: imageUrl!,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            videoUrl != null
                ? Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(Assets.images.play),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    if (level == null || title == null) return SizedBox();
    return Padding(
      padding: level == 2 ? const EdgeInsets.only(bottom: 8, right: 82) :
      const EdgeInsets.only(bottom: 8),
      child: Text(
        title!,
        maxLines: 2,
        style: level == 2
            ? TextStyle(
                height: 24 / 17,
                color: AppColors.onAccent,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              )
            : TextStyle(
                height: 20 / 15,
                letterSpacing: 0.37,
                color: AppColors.onAccent,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
      ),
    );
  }

  Widget _buildSubTitle() {
    if (level != null || title == null) return SizedBox();
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 8),
      child: Text(
        title!,
        style: TextStyle(
          height: 18 / 13,
          letterSpacing: 0.374,
          color: AppColors.gray3,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    );
  }
}
