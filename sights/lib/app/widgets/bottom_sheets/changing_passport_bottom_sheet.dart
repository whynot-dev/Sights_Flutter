import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/localization/app_localizations.dart';

class ChangingPassportBottomSheet extends StatelessWidget {
  ChangingPassportBottomSheet({
    required this.onChangeDataClicked,
    required this.onCancelClicked,
  });

  final VoidCallback onChangeDataClicked;
  final VoidCallback onCancelClicked;

  @override
  Widget build(BuildContext context) => SafeArea(
        bottom: Platform.isIOS ? false : true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildTopSection(context),
              _buildFooter(context),
            ],
          ),
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
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitle(context),
              const SizedBox(height: 8),
              _buildDescription(context),
            ],
          ),
        ],
      );

  Widget _buildFooter(context) => Padding(
        padding: const EdgeInsets.only(top: 24, bottom: 28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildChangeDataButton(context),
            SizedBox(height: 8),
            _buildCancelButton(context),
          ],
        ),
      );

  Widget _buildTitle(context) => Text(
        AppLocalizations.of(context).changingPassportData,
        style: const TextStyle(
          fontSize: 20,
          height: 28 / 20,
          fontWeight: FontWeight.w700,
          color: AppColors.onAccent,
        ),
      );

  Widget _buildDescription(context) => Text(
        AppLocalizations.of(context).descriptionChangingPassportData,
        textAlign: TextAlign.start,
        style: const TextStyle(
          fontSize: 15,
          height: 20 / 15,
          fontWeight: FontWeight.w500,
          color: AppColors.onAccent,
        ),
      );

  Widget _buildChangeDataButton(BuildContext context) => DefaultButton(
        text: AppLocalizations.of(context).changeData,
        onPressed: () {
          onChangeDataClicked.call();
        },
      );

  Widget _buildCancelButton(BuildContext context) => DefaultButton(
        color: AppColors.gray4,
        text: AppLocalizations.of(context).cancel,
        onPressed: () {
          onCancelClicked.call();
        },
      );
}
