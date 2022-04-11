import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/buttons/circle_close_button.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';

class ConfirmAccountBottomSheet extends StatelessWidget {
  ConfirmAccountBottomSheet({
    required this.onConfirmClicked,
  });

  final VoidCallback onConfirmClicked;

  @override
  Widget build(BuildContext context) => SafeArea(
        bottom: Platform.isIOS ? false : true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTopSection(context),
            const SizedBox(height: 16),
            _buildFooter(context),
          ],
        ),
      );

  Widget _buildTopSection(context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 8),
          Container(
            height: 4,
            width: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: AppColors.gray2,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImage(context),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: CircleCloseButton(
                  crossColor: AppColors.onAccent,
                  backdropColor: AppColors.gray11,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ],
      );

  Widget _buildImage(context) {
    double height = 276;
    return SvgPicture.asset(Assets.images.confirmAccountBsSvg, height: height);
  }

  Widget _buildFooter(context) => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 48),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(context),
            const SizedBox(height: 8),
            _buildDescription(context),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.bottomCenter,
              child: _buildConfirmButton(context),
            ),
          ],
        ),
      );

  Widget _buildTitle(context) => Text(
        AppLocalizations.of(context).youCantRentYet,
        style: const TextStyle(
          fontSize: 24,
          height: 32 / 24,
          fontWeight: FontWeight.w600,
          color: AppColors.onBackground,
        ),
      );

  Widget _buildDescription(context) => Text(
        AppLocalizations.of(context).confirmationAccountDescription,
        textAlign: TextAlign.start,
        style: const TextStyle(
          fontSize: 15,
          height: 20 / 15,
          fontWeight: FontWeight.w500,
          color: AppColors.onBackground,
        ),
      );

  Widget _buildConfirmButton(BuildContext context) => DefaultButton(
        text: AppLocalizations.of(context).confirm,
        onPressed: () {
          onConfirmClicked.call();
        },
      );
}
