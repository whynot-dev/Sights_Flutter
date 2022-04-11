import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/gen/assets.gen.dart';

class YouzButton extends StatelessWidget {
  YouzButton({
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.black2,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              const BoxShadow(color: AppColors.yellow2, blurRadius: 15, offset: const Offset(0, 6)),
              const BoxShadow(color: AppColors.yellow3, blurRadius: 4, offset: const Offset(0, 2)),
            ],
          ),
          child: SvgPicture.asset(Assets.images.youzButton),
        ),
      );
}
