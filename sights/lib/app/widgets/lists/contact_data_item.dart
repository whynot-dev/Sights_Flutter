import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/gen/assets.gen.dart';

class ContactDataItem extends StatelessWidget {
  ContactDataItem({
    required this.title,
    this.value,
    this.onTap,
  });

  final String title;
  final String? value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          onTap?.call();
        },
        behavior: HitTestBehavior.translucent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Row(
                children: [
                  _buildTitle(),
                  const SizedBox(width: 20),
                  Expanded(child: Align(alignment: Alignment.centerRight, child: _buildValue())),
                  const SizedBox(width: 8),
                  _buildArrow(),
                ],
              ),
            ),
            _buildDivider(),
          ],
        ),
      );

  Widget _buildTitle() => Text(
        title,
        style: const TextStyle(color: AppColors.onAccent, fontSize: 15, fontWeight: FontWeight.w500),
      );

  Widget _buildValue() => Text(
        value ?? '',
        style: const TextStyle(color: AppColors.gray3, fontSize: 15, fontWeight: FontWeight.w500),
        overflow: TextOverflow.ellipsis,
      );

  Widget _buildArrow() => SvgPicture.asset(Assets.images.arrowRight);

  Widget _buildDivider() => Padding(
    padding: const EdgeInsets.only(left: 16),
    child: Container(height: 1, color: AppColors.gray7),
  );

}
