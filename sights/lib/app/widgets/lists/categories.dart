import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/domain/entities/category_entity.dart';

class Categories extends StatefulWidget {
  Categories({
    required this.categories,
    this.title,
    this.direction = Axis.vertical,
    this.onTap,
  });

  final List<CategoryEntity> categories;
  final String? title;
  final Axis direction;
  final Function(CategoryEntity category)? onTap;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) _buildTitle(),
        if (widget.title != null) const SizedBox(height: 8),
        _buildCategories(),
      ],
    );
  }

  Widget _buildTitle() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          widget.title ?? '',
          style: const TextStyle(color: AppColors.onAccent, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      );

  Widget _buildCategories() => SizedBox(
        height: _getHeight(),
        child: GridView.builder(
          scrollDirection: widget.direction,
          physics: widget.direction == Axis.vertical ? NeverScrollableScrollPhysics() : null,
          itemCount: widget.categories.length,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: widget.direction == Axis.vertical ? 2 : 1,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            mainAxisExtent: widget.direction == Axis.vertical ? 150 : (MediaQuery.of(context).size.width - 32 - 13) / 2,
          ),
          itemBuilder: (context, index) => _buildCategory(context, widget.categories[index]),
        ),
      );

  Widget _buildCategory(context, CategoryEntity category) => GestureDetector(
        onTap: () {
          widget.onTap?.call(category);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Stack(
            children: [
              CachedNetworkImage(
                imageUrl: category.url,
                fit: BoxFit.cover,
                width: double.infinity, // - paddings + size between
                height: double.infinity,
              ),
              Positioned(left: 16, top: 16, right: 16, child: _buildCategoryTitle(category.title)),
            ],
          ),
        ),
      );

  Widget _buildCategoryTitle(String text) => Text(
        text,
        overflow: TextOverflow.fade,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12, color: AppColors.onAccent),
      );

  double _getHeight() {
    switch (widget.direction) {
      case Axis.horizontal:
        return 165;
      case Axis.vertical:
        return widget.categories.length % 2 != 0
            ? (150 * (widget.categories.length ~/ 2 + 1)) + ((widget.categories.length ~/ 2) * 12) + 32
            : (widget.categories.length ~/ 2 * 150) + (widget.categories.length ~/ 2 - 1) * 12 + 32;
    }
  }
}
