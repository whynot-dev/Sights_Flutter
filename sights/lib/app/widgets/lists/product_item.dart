import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/app/widgets/price/default_price.dart';
import 'package:sights/app/widgets/price/old_price.dart';
import 'package:sights/domain/entities/product_item_entity.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';

class ProductItem extends StatefulWidget {
  ProductItem({
    required this.product,
    this.onProductClicked,
    this.onRentClicked,
    this.onLikeClicked,
  });

  final ProductItemEntity product;
  final Function(ProductItemEntity product)? onProductClicked;
  final Function(ProductItemEntity product)? onRentClicked;
  final Function(ProductItemEntity product)? onLikeClicked;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) => Container(
        // padding: const EdgeInsets.only(bottom: 26, top: 12),
        child: GestureDetector(
          onTap: () {
            widget.onProductClicked?.call(widget.product);
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.44,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(offset: Offset(0, 4), color: AppColors.gray14, blurRadius: 19, spreadRadius: -5),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildImageAndHeart(),
                _buildName(),
                const SizedBox(height: 4),
                _buildPrice(),
                Spacer(),
                const SizedBox(height: 12),
                _buildRentButton(context),
              ],
            ),
          ),
        ),
      );

  Widget _buildImageAndHeart() => SizedBox(
        height: 112,
        child: Stack(
          children: [
            Align(alignment: Alignment.center, child: _buildImage()),
            Container(alignment: Alignment.topRight, child: _buildHeart()),
          ],
        ),
      );

  Widget _buildImage() => CachedNetworkImage(imageUrl: widget.product.imageUrl, fit: BoxFit.cover);

  Widget _buildHeart() => GestureDetector(
        onTap: () {
          widget.onLikeClicked?.call(widget.product);
        },
        child: SvgPicture.asset(widget.product.isLiked ? Assets.images.fullHeart : Assets.images.incompleteHeart),
      );

  Widget _buildName() => Text(
        widget.product.name,
        maxLines: 2,
        style: TextStyle(color: AppColors.onAccent, fontWeight: FontWeight.w500, fontSize: 12),
        overflow: TextOverflow.ellipsis,
      );

  Widget _buildPrice() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          DefaultPrice(amount: widget.product.price, currency: widget.product.currency),
          widget.product.oldPrice != null ? const SizedBox(width: 6) : const SizedBox(),
          widget.product.oldPrice != null ? _buildOldPrice() : const SizedBox(),
        ],
      );

  Widget _buildOldPrice() => widget.product.oldPrice != null
      ? OldPrice(amount: widget.product.oldPrice!, currency: widget.product.currency)
      : const SizedBox();

  Widget _buildRentButton(BuildContext context) => DefaultButton(
        onPressed: () {
          widget.onRentClicked?.call(widget.product);
        },
        borderRadius: 16,
        padding: const EdgeInsets.symmetric(vertical: 8),
        text: AppLocalizations.of(context).rent,
        textSize: 15,
        height: 40,
      );
}
