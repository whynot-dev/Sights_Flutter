import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/gen/assets.gen.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({
    this.coincide = false,
  });

  final bool coincide;

  @override
  Widget build(BuildContext context) => Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: coincide ? AppColors.accent : AppColors.gray2,
        ),
        child: coincide
            ? Center(
                child: SvgPicture.asset(
                  Assets.images.checkmark,
                  height: 10,
                  width: 16,
                ),
              )
            : null,
      );
}
