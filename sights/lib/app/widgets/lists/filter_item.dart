import 'package:flutter/cupertino.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/domain/enums/sight_type.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({
    this.isSelected = false,
    required this.sightType,
    this.onTap,
  });

  final bool isSelected;
  final SightType sightType;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.translucent,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSelected ? null : AppColors.gray0.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected ? AppColors.accent : AppColors.gray0.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: Text(
            sightType.getName(context, isNotPlural: false),
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: isSelected ? AppColors.onAccent : AppColors.gray3,
            ),
          ),
        ),
      );
}
