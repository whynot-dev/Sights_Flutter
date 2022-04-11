import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/resources/app_styles.dart';

class GrayBackground extends StatelessWidget {
  GrayBackground({
    required this.child,
    this.padding,
    this.systemUiStyle,
  });

  final Widget child;
  final EdgeInsets? padding;
  final SystemUiOverlayStyle? systemUiStyle;

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.grayBackground,
        padding: padding ?? EdgeInsets.zero,
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: systemUiStyle ?? AppStyles.lightStyle,
          child: child,
        ),
      );
}
