import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:sights/app/widgets/buttons/circle_close_button.dart';
import 'package:sights/domain/entities/banner_entity.dart';
import 'package:sights/domain/enums/banner_type.dart';

class BannerItem extends StatelessWidget {
  BannerItem({
    required this.banner,
    this.needCloseButton = true,
    this.onBannerClicked,
    this.onBannerCloseClicked,
  });

  final BannerEntity banner;
  final bool needCloseButton;
  final Function(BannerEntity banner)? onBannerClicked;
  final Function(BannerEntity banner)? onBannerCloseClicked;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          onBannerClicked?.call(banner);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(banner.type == BannerType.big ? 24 : 20),
          child: SizedBox(
            height: banner.type == BannerType.big ? 203 : 92,
            width: double.infinity,
            child: Stack(
              children: [
                _buildBackground(),
                Positioned(
                  top: banner.type == BannerType.big ? 16 : 8,
                  right: banner.type == BannerType.big ? 16 : 8,
                  child: needCloseButton ? _buildCloseButton() : const SizedBox(),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _buildCloseButton() => CircleCloseButton(
        onPressed: () {
          onBannerCloseClicked?.call(banner);
        },
      );

  Widget _buildBackground() => CachedNetworkImage(
        imageUrl: banner.imageUrl,
        fit: BoxFit.fill,
        width: double.infinity,
      );
}
