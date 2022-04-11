import 'package:flutter/cupertino.dart';
import 'package:sights/app/resources/app_colors.dart';

import 'circular_progress.dart';

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: AppColors.background,
          shape: BoxShape.circle,
        ),
        child: CircularProgress(
          size: 56,
          strokeWidth: 7,
          primaryColor: AppColors.accent,
          secondaryColor: AppColors.background,
        ),
      );
}
