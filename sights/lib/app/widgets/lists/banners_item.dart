import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sights/app/widgets/lists/banner_item.dart';
import 'package:sights/domain/entities/banner_entity.dart';
import 'package:sights/domain/enums/banner_type.dart';

class BannersItem extends StatefulWidget {
  BannersItem({
    required this.banners,
    this.onBannerClicked,
    this.onBannerCloseClicked,
  });

  final List<BannerEntity> banners;
  final Function(BannerEntity banner)? onBannerClicked;
  final Function(BannerEntity banner)? onBannerCloseClicked;

  @override
  State<BannersItem> createState() => _BannersItemState();
}

class _BannersItemState extends State<BannersItem> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      viewportFraction: 0.94,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
        height: widget.banners[0].type == BannerType.big ? 203 : 92,
        child: widget.banners.length == 1 ? _buildBanner() : _buildBanners(),
      );
  }

  Widget _buildBanner() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BannerItem(
          banner: widget.banners[0],
          //needCloseButton: widget.banners[0].type == BannerType.big,
          onBannerClicked: (banner) {
            widget.onBannerClicked?.call(banner);
          },
          onBannerCloseClicked: (banner) {
            widget.onBannerCloseClicked?.call(banner);
          },
        ),
      );

  Widget _buildBanners() => PageView.builder(
        controller: _pageController,
        itemCount: widget.banners.length,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: BannerItem(
            banner: widget.banners[index],
            onBannerClicked: (banner) {
              widget.onBannerClicked?.call(banner);
            },
            onBannerCloseClicked: (banner) {
              widget.onBannerCloseClicked?.call(banner);
            },
          ),
        ),
      );
}
