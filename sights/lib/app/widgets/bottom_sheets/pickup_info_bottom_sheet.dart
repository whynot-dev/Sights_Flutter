import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/domain/entities/pickup_point_entity.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';

class PickupInfoBottomSheet extends StatefulWidget {
  PickupInfoBottomSheet({
    required this.pickupPoint,
    this.isExpanded = false,
    this.selectThisAddressClicked,
  });

  final PickupPointEntity pickupPoint;
  final VoidCallback? selectThisAddressClicked;
  final bool isExpanded;

  @override
  State<PickupInfoBottomSheet> createState() => _PickupInfoBottomSheetState();
}

class _PickupInfoBottomSheetState extends State<PickupInfoBottomSheet> {
  @override
  void didUpdateWidget(covariant PickupInfoBottomSheet oldWidget) {
    if (widget.pickupPoint != oldWidget.pickupPoint) {
      setState(() {});
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildNameAndDescription(),
                  _buildPreviewImage(),
                  const SizedBox(height: 16),
                  //_buildDates(),
                  const SizedBox(height: 24),
                  _buildDivider(),
                  const SizedBox(height: 24),
                  _buildInfoRoute(context),
                ],
              ),
            ),
          ),
          Positioned(
            child: Padding(
              padding: widget.isExpanded
                  ? EdgeInsets.zero
                  : EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.6 * 0.42),
              child: Align(
                  alignment: widget.isExpanded ? Alignment.bottomCenter : Alignment.topCenter,
                  child: _buildSelectThisAddressButton(context)),
            ),
          ),
        ],
      );

  Widget _buildNameAndDescription() => Padding(
        padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 4,
                width: 48,
                decoration: BoxDecoration(color: AppColors.gray2, borderRadius: BorderRadius.circular(2)),
              ),
            ),
            //const SizedBox(height: 12),
            _buildName(),
            // const SizedBox(height: 12),
            if (widget.isExpanded) _buildIconAndText(Assets.images.home, widget.pickupPoint.address),
            if (widget.isExpanded) const SizedBox(height: 22),
          ],
        ),
      );

  Widget _buildName() => Html(

        data: '<h2>' + widget.pickupPoint.name + '</h2>',
      );

  Widget _buildIconAndText(String iconAsset, String text) => Row(
        children: [
          _buildIcon(iconAsset),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.onAccent),
            ),
          ),
        ],
      );

  Widget _buildIcon(String asset) => SvgPicture.asset(asset);

  Widget _buildPreviewImage() => CachedNetworkImage(
        imageUrl: widget.pickupPoint.previewUrlImage,
        fit: BoxFit.cover,
        height: 180,
        width: double.infinity,
      );

  Widget _buildDates() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIcon(Assets.images.time),
            const SizedBox(width: 8),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) => _buildDate(),
                separatorBuilder: (context, index) => const SizedBox(height: 12),
              ),
            ),
          ],
        ),
      );

  Widget _buildDate() => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '2222',
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.onAccent),
          ),
          const SizedBox(height: 2),
          Text(
            '222',
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.gray3),
          ),
        ],
      );

  Widget _buildDivider() => Container(height: 8, color: AppColors.gray7);

  Widget _buildInfoRoute(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                AppLocalizations.of(context).howToReach,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.onAccent),
              ),
            ),
            const SizedBox(height: 6),
            Html(
              data: widget.pickupPoint.description,
              style: {
                "p": Style(
                  padding: EdgeInsets.zero,
                  color: AppColors.onAccent,
                  fontWeight: FontWeight.w500,
                  whiteSpace: WhiteSpace.PRE,
                  letterSpacing: 0,
                  fontSize: FontSize.large,
                  margin: EdgeInsets.zero,
                  lineHeight: LineHeight.percent(115),
                ),
              },
            ),
          ],
        ),
      );

  Widget _buildSelectThisAddressButton(BuildContext context) => Container(
        height: 104 + MediaQuery.of(context).viewPadding.bottom,
        color: AppColors.white,
        padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 32 + MediaQuery.of(context).viewPadding.bottom),
        child: DefaultButton(
          text: AppLocalizations.of(context).selectThisAddress,
          onPressed: () {
            widget.selectThisAddressClicked?.call();
          },
        ),
      );
}
