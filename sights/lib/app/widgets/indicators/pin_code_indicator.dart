import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';

class PinCodeIndicator extends StatelessWidget {
  const PinCodeIndicator({
    required this.code,
    this.indicatorsAmount = 4,
  });

  final String code;
  final int indicatorsAmount;

  @override
  Widget build(BuildContext context) {
    List<Widget> indicators = [];
    for (int index = 0; index < indicatorsAmount; index++) {
      indicators.add(_buildIndicator(index < code.length));
    }
    return Wrap(
      spacing: 12,
      children: indicators,
    );
  }

  Widget _buildIndicator(bool isActive) => Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? AppColors.brightAcid : AppColors.gray2,
        ),
      );
}
