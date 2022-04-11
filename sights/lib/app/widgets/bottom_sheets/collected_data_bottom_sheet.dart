import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/buttons/circle_close_button.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';

class CollectedDataBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        bottom: Platform.isIOS ? false : true,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.bottom -
                MediaQueryData.fromWindow(window).padding.top,
          ),
          child: Column(
            children: [
              Expanded(child: Padding(padding: const EdgeInsets.only(top: 8), child: _buildTopSection(context))),
              _buildFooter(context),
            ],
          ),
        ),
      );

  Widget _buildGradientImage(context) {
    return SizedBox(
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              child: Assets.images.confirmationFinishBackground.image(
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.startImageTopGradient, AppColors.endImageTopGradient],
                  stops: [0, 0.9],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.startImageBottomGradient, AppColors.endImageBottomGradient],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter(context) => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 30, bottom: 48),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(context),
            const SizedBox(height: 8),
            _buildDescription(context),
            const SizedBox(height: 24),
            _buildFurtherButton(context),
          ],
        ),
      );

  Widget _buildTitle(context) => Text(
        AppLocalizations.of(context).weHaveCollectedAllTheNecessaryData,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 24, height: 32 / 24, color: AppColors.onAccent),
      );

  Widget _buildDescription(context) => Text(
        AppLocalizations.of(context).confirmationFinishDescription,
        maxLines: 3,
        overflow: TextOverflow.fade,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, height: 20 / 15, color: AppColors.onAccent),
      );

  Widget _buildFurtherButton(context) => DefaultButton(
        text: AppLocalizations.of(context).okay,
        onPressed: () {
          Navigator.pop(context);
        },
      );

  Widget _buildTopSection(context) => Stack(
        children: [
          Positioned.fill(child: _buildGradientImage(context)),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 4,
              width: 48,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2), color: AppColors.gray2),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16, top: 10),
              child: CircleCloseButton(
                crossColor: AppColors.onAccent,
                backdropColor: AppColors.gray11,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      );
}
