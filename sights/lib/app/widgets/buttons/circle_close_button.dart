import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/gen/assets.gen.dart';

class CircleCloseButton extends StatelessWidget {
  const CircleCloseButton({
    this.onPressed,
    this.backdropColor,
    this.crossColor = AppColors.white,
  });

  final VoidCallback? onPressed;
  final Color? backdropColor;
  final Color? crossColor;

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          onPressed?.call();
        },
        child: ClipOval(
          child: _buildBody(),
        ),
      );

  Widget _buildBody() => backdropColor == null
      ? BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: AppColors.black30,
            ),
            child: Center(
              child: SvgPicture.asset(
                Assets.images.cross,
                width: 12,
                height: 12,
                color: crossColor,
              ),
            ),
          ),
        )
      : Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: backdropColor,
          ),
          child: Center(
            child: SvgPicture.asset(
              Assets.images.cross,
              width: 12,
              height: 12,
              color: crossColor,
            ),
          ),
        );
}
