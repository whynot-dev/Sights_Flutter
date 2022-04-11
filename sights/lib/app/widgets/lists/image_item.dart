import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({
    required this.imageUrl,
    required this.isSelected,
    this.onPressed,
  });

  final String imageUrl;
  final bool isSelected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () {
      onPressed?.call();
    },
    child: Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? AppColors.accent : AppColors.primary,
          width: 2,
        ),
      ),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
      ),
    ),
  );
}
