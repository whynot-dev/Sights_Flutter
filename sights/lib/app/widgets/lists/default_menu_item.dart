import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/gen/assets.gen.dart';

class DefaultMenuItem extends StatelessWidget {
  DefaultMenuItem({
    required this.text,
    this.onTap,
    this.icon,
    this.needIcon = true,
  });

  final String text;
  final VoidCallback? onTap;
  final String? icon;
  final bool needIcon;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          onTap?.call();
        },
        behavior: HitTestBehavior.translucent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  _buildTitle(context),
                  const Spacer(),
                  needIcon ? _buildIcon() : SizedBox(),
                ],
              ),
            ),
            _buildDivider(),
          ],
        ),
      );

  Widget _buildTitle(BuildContext context) => Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
          color: AppColors.onAccent,
        ),
      );

  Widget _buildIcon() => SvgPicture.asset(icon ?? Assets.images.arrowRight);

  Widget _buildDivider() => Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Container(height: 1, color: AppColors.gray7),
      );
}
