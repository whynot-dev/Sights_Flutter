import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/localization/app_localizations.dart';

class SelectPhotoBottomSheet extends StatelessWidget {
  SelectPhotoBottomSheet({
    this.onSelectFromGalleryClicked,
    this.onMakePhotoClicked,
  });

  final VoidCallback? onSelectFromGalleryClicked;
  final VoidCallback? onMakePhotoClicked;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: Platform.isIOS ? 34 : MediaQuery.of(context).padding.bottom + 34,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildButton(
              text: AppLocalizations.of(context).selectFromGallery,
              onTap: () {
                onSelectFromGalleryClicked?.call();
              },
            ),
            _buildDivider(),
            _buildButton(
              text: AppLocalizations.of(context).snapPicture,
              borderRadius: const BorderRadius.vertical(bottom: const Radius.circular(10)),
              onTap: () {
                onMakePhotoClicked?.call();
              },
            ),
            const SizedBox(height: 10),
            _buildCancelButton(context),
          ],
        ),
      );

  Widget _buildButton({required String text, BorderRadius? borderRadius, VoidCallback? onTap}) => GestureDetector(
        onTap: () {
          onTap?.call();
        },
        behavior: HitTestBehavior.translucent,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.85),
            borderRadius: borderRadius ?? const BorderRadius.vertical(top: const Radius.circular(10)),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.blue,
              fontFamily: 'SFProText',
            ),
          ),
        ),
      );

  Widget _buildDivider() => Container(height: 1, color: AppColors.gray16);

  Widget _buildCancelButton(BuildContext context) => GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        behavior: HitTestBehavior.translucent,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            AppLocalizations.of(context).cancel,
            style: const TextStyle(
              color: AppColors.blue,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: 'SFProText',
            ),
          ),
        ),
      );
}
