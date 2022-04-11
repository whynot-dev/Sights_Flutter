import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/gen/assets.gen.dart';

class DefaultSelector extends StatelessWidget {
  DefaultSelector({
    this.text,
    this.onPressed,
    this.enabled = true,
    this.height = 56,
  });

  final String? text;
  final VoidCallback? onPressed;
  final bool enabled;
  final double height;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
            onPressed?.call();
        },
        behavior: HitTestBehavior.translucent,
        child: SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: (enabled) ? AppColors.accent : AppColors.gray2, width: (enabled) ? 2.0 : 1.0),
            ),
            padding: const EdgeInsets.all(16),
            width: double.maxFinite,
            child: text != null
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset((enabled) ? Assets.images.enabledIndicator : Assets.images.disabledIndicator,
                          height: 24, width: 24),
                      const SizedBox(width: 12),
                      Text(
                        text!,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: AppColors.onAccent,
                        ),
                      ),
                    ],
                  )
                : const SizedBox(),
          ),
        ),
      );
}
