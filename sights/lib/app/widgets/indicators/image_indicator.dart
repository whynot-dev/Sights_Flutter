import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';

class ImageIndicator extends StatelessWidget {
  const ImageIndicator({
    required this.imagesLength,
    required this.currentImageIndex,
  });

  final int imagesLength;
  final int currentImageIndex;

  @override
  Widget build(BuildContext context) {
    List<Widget> indicators = [];
    // if (imagesLength > 1) {
      for (int index = 0; index < imagesLength; index++) {
        indicators.add(_buildIndicator(currentImageIndex == index));
      // }
    }
    return Wrap(
      spacing: 4,
      children: indicators,
    );
  }

  Widget _buildIndicator(bool isActive) => Container(
        width: isActive ? 14 : 5,
        height: 5,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: AppColors.inputBackground,
          borderRadius: BorderRadius.circular(3),
        ),
      );
}
