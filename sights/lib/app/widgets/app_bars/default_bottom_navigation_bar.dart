import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';

class DefaultBottomNavigationBar extends StatelessWidget {
  DefaultBottomNavigationBar({
    required this.items,
    this.currentIndex = 1,
    this.iconSize = 24,
    this.heightBetweenIconAndLabel = 4,
    this.padding,
    this.unselectedItemColor,
    this.selectedItemColor,
    this.backgroundColor,
    this.selectedLabelStyle,
    this.unselectedLabelStyle,
    this.showSelectedLabels,
    this.showUnselectedLabels,
    this.separatorWidget,
    this.onPressed,
  });

  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final double iconSize;
  final double heightBetweenIconAndLabel;
  final EdgeInsets? padding;
  final Color? unselectedItemColor;
  final Color? selectedItemColor;
  final Color? backgroundColor;
  final TextStyle? selectedLabelStyle;
  final TextStyle? unselectedLabelStyle;
  final bool? showSelectedLabels;
  final bool? showUnselectedLabels;
  final Widget? separatorWidget;
  final ValueChanged<int>? onPressed;

  @override
  Widget build(BuildContext context) => Container(
        color: backgroundColor ?? null,
        child: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: separatorWidget != null
                    ? List.generate(
                        items.length + items.length - 1,
                        (index) => index.isEven
                            ? _buildBarItem(index != 0 ? index ~/ 2 : index, isSelected: currentIndex == index ~/ 2)
                            : separatorWidget ?? const SizedBox(),
                      )
                    : List.generate(
                        items.length,
                        (index) => _buildBarItem(index, isSelected: currentIndex == index),
                      ),
              ),
            ),
          ],
        ),
      );

  Widget _buildBarItem(int index, {bool isSelected = false}) => Expanded(
        child: TextButton(
          onPressed: () {
            onPressed?.call(index);
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(AppColors.black6),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: iconSize,
                  height: iconSize,
                  child: isSelected ? items[index].activeIcon ?? items[index].icon : items[index].icon),
              isSelected
                  ? showSelectedLabels ?? true
                      ? SizedBox(height: heightBetweenIconAndLabel)
                      : const SizedBox()
                  : showUnselectedLabels ?? true
                      ? SizedBox(height: heightBetweenIconAndLabel)
                      : const SizedBox(),
              isSelected
                  ? showSelectedLabels ?? true
                      ? Text(items[index].label ?? '', style: selectedLabelStyle?.copyWith(color: selectedItemColor))
                      : const SizedBox()
                  : showUnselectedLabels ?? true
                      ? Text(items[index].label ?? '',
                          style: unselectedLabelStyle?.copyWith(color: unselectedItemColor))
                      : const SizedBox(),
            ],
          ),
        ),
      );
}
