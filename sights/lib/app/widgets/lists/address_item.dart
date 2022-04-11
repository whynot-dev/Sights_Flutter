import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/domain/entities/address_item_entity.dart';
import 'package:sights/gen/assets.gen.dart';

class AddressItem extends StatelessWidget {
  AddressItem({
    required this.address,
    this.comment,
    this.needArrow = true,
    this.addressMaxLines = 1,
    this.paddingContent = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.onTap,
  });

  final String address;
  final String? comment;
  final bool needArrow;
  final int addressMaxLines;
  final EdgeInsets paddingContent;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          onTap?.call();
        },
        behavior: HitTestBehavior.translucent,
        child: Padding(
          padding: paddingContent,
          child: Row(
            children: [
              Expanded(child: _buildAddressAndComment()),
              if (needArrow) _buildArrow(),
            ],
          ),
        ),
      );

  Widget _buildAddressAndComment() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildAddress(),
          if (comment?.isNotEmpty ?? false) const SizedBox(height: 2),
          if (comment?.isNotEmpty ?? false) _buildComment(),
        ],
      );

  Widget _buildAddress() => Text(
        address,
        overflow: TextOverflow.ellipsis,
        maxLines: addressMaxLines,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: AppColors.onAccent),
      );

  Widget _buildComment() => Text(
        comment ?? '',
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13, color: AppColors.gray3),
      );

  Widget _buildArrow() => SvgPicture.asset(Assets.images.arrowRight);
}
