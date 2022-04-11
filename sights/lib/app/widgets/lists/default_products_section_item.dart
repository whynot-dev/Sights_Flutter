import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/lists/product_item.dart';
import 'package:sights/domain/entities/product_entity.dart';
import 'package:sights/domain/entities/product_item_entity.dart';
import 'package:sights/domain/entities/products_section_entity.dart';

class DefaultProductsSectionItem extends StatefulWidget {
  DefaultProductsSectionItem({
    required this.section,
    this.needTitle = true,
    this.subTitle,
    this.direction = Axis.horizontal,
    this.onSubTitleClicked,
    this.onProductClicked,
    this.onProductLikeClicked,
    this.onProductRentClicked,
  });

  final ProductsSectionEntity section;
  final bool needTitle;
  final String? subTitle;
  final Axis direction;
  final Function(ProductsSectionEntity section)? onSubTitleClicked;
  final Function(ProductItemEntity product)? onProductClicked;
  final Function(ProductItemEntity product)? onProductLikeClicked;
  final Function(ProductItemEntity product)? onProductRentClicked;

  @override
  State<DefaultProductsSectionItem> createState() => _DefaultProductsSectionItemState();
}

class _DefaultProductsSectionItemState extends State<DefaultProductsSectionItem>
    with AutomaticKeepAliveClientMixin<DefaultProductsSectionItem> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.needTitle) _buildTitleAndSubTitle(),
          _buildProducts(),
        ],
      ),
    );
  }

  Widget _buildTitleAndSubTitle() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            _buildLeftTitle(),
            const Spacer(),
            _buildRightTitle(),
          ],
        ),
      );

  Widget _buildLeftTitle() => Text(
        widget.section.title,
        style: TextStyle(color: AppColors.onAccent, fontSize: 17, fontWeight: FontWeight.w600),
      );

  Widget _buildRightTitle() => GestureDetector(
        onTap: () {
          widget.onSubTitleClicked?.call(widget.section);
        },
        child: Opacity(
          opacity: 0.4,
          child: Text(
            widget.subTitle ?? '',
            style: TextStyle(color: AppColors.onAccent, fontWeight: FontWeight.w500, fontSize: 15),
          ),
        ),
      );

  Widget _buildProducts() => widget.direction == Axis.vertical ? _buildGridView() : _buildListView();

  Widget _buildListView() => Container(
        height: 276,
        child: ListView.separated(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 26, top: 12),
          scrollDirection: Axis.horizontal,
          itemCount: widget.section.products.length,
          itemBuilder: (context, index) => ProductItem(
            product: widget.section.products[index],
            onProductClicked: (product) {
              widget.onProductClicked?.call(product);
            },
            onLikeClicked: (product) {
              widget.onProductLikeClicked?.call(product);
            },
            onRentClicked: (product) {
              widget.onProductRentClicked?.call(product);
            },
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 12),
        ),
      );

  Widget _buildGridView() => SizedBox(
        height: _getHeight(),
        child: GridView.builder(
          scrollDirection: widget.direction,
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.section.products.length,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            mainAxisExtent: 236,
          ),
          itemBuilder: (context, index) => ProductItem(
            product: widget.section.products[index],
            onProductClicked: (product) {
              widget.onProductClicked?.call(product);
            },
            onLikeClicked: (product) {
              widget.onProductLikeClicked?.call(product);
            },
            onRentClicked: (product) {
              widget.onProductRentClicked?.call(product);
            },
          ),
        ),
      );

  double _getHeight() {
    return widget.section.products.length % 2 != 0
        ? (236 * (widget.section.products.length ~/ 2 + 1)) + ((widget.section.products.length ~/ 2) * 12) + 42
        : (widget.section.products.length ~/ 2 * 236) + (widget.section.products.length ~/ 2 - 1) * 12 + 42;
  }

  @override
  bool get wantKeepAlive => true;
}
