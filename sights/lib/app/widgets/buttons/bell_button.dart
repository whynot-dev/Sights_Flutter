import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/gen/assets.gen.dart';

class BellButton extends StatefulWidget {
  BellButton({
    this.countNotifications,
    this.onTap,
  });

  final int? countNotifications;
  final VoidCallback? onTap;

  @override
  _BellButtonState createState() => _BellButtonState();
}

class _BellButtonState extends State<BellButton> {
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          widget.onTap?.call();
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            _buildIcon(),
            if (widget.countNotifications != null && widget.countNotifications! > 0)
              Positioned(
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 9),
                  child: Container(
                    height: 16,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(color: AppColors.black2, borderRadius: BorderRadius.circular(8)),
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 3, right: 3, top: 1),
                      height: 14,
                      decoration: BoxDecoration(color: AppColors.accent, borderRadius: BorderRadius.circular(8)),
                      child: _buildNumber(),
                    ),
                  ),
                ),
              ),
          ],
        ),
      );

  Widget _buildIcon() => SvgPicture.asset(Assets.images.bell);

  Widget _buildNumber() => Text(
        widget.countNotifications!.toString(),
        style: const TextStyle(
          color: AppColors.onAccent,
          fontSize: 11,
          fontWeight: FontWeight.w700,
          fontFamily: 'SFProText',
          height: 11 / 12,
        ),
      );
}
