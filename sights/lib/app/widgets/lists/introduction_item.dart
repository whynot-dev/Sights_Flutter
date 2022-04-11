import 'package:flutter/cupertino.dart';
import 'package:sights/app/resources/app_colors.dart';

class IntroductionItem extends StatelessWidget {
  IntroductionItem({
    required this.text,
    required this.index,
    required this.isLast,
  });

  final String text;
  final int index;
  final bool isLast;

  @override
  Widget build(BuildContext context) => Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                _buildNumber(),
                Container(
                  height: index % 2 == 1 ? isLast ? 0 : 112 : 93,
                  width: 2,
                  color: AppColors.accent,
                ),
              ],
            ),
            Flexible(child: _buildText()),
          ],
        ),
      );

  Widget _buildNumber() => ClipOval(
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: AppColors.accent,
          ),
          child: Center(
            child: Text(
              index.toString(),
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              ),
            ),
          ),
        ),
      );

  Widget _buildText() => Padding(
        padding: EdgeInsets.only(left: 16),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: AppColors.primary,
          ),
        ),
      );
}
