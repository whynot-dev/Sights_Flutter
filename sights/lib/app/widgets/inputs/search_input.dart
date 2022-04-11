import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/buttons/circle_close_button.dart';

class SearchInput extends StatefulWidget {
  SearchInput({
    this.text,
    this.onTap,
    this.onChanged,
    this.suffixIcon,
    this.prefixIcon,
    this.backgroundColor,
    this.textStyle,
    this.hintText,
    this.hintStyle,
    this.borderRadius,
    this.cursorColor,
    this.cursorHeight,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.autoFocus = false,
    this.focus,
    this.focusScope,
    this.needClearButton = false,
    this.onClearPressed,
  });

  final String? text;
  final VoidCallback? onTap;
  final Function(String text)? onChanged;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final Color? cursorColor;
  final double? cursorHeight;
  final bool autoFocus;
  final FocusNode? focus;
  final FocusScopeNode? focusScope;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final BorderRadius? borderRadius;
  final bool needClearButton;
  final VoidCallback? onClearPressed;

  @override
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  late TextEditingController _controller;
  late FocusNode _focus;
  late void Function() _focusListener;
  bool _clearButtonEnabled = false;

  @override
  void initState() {
    _focusListener = () {
      setState(() {});
    };
    _focus = widget.focus != null ? widget.focus! : FocusNode();
    _focus.addListener(_focusListener);
    _controller = TextEditingController(text: (widget.text?.isNotEmpty ?? false) ? widget.text : null);
    _clearButtonEnabled = widget.text?.isNotEmpty == true;

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_focusListener);
    _controller.dispose();
  }

  @override
  void didUpdateWidget(covariant SearchInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    String? newText = widget.text;
    // if (_controller.text != widget.text) {
    //   if (widget.text?.isNotEmpty ?? false) {
    //     _clearButtonEnabled = true;
    //     _controller.text = widget.text!;
    //   } else {
    //     _clearButtonEnabled = false;
    //     _controller.clear();
    //   }
    // }
//    if (_controller.text != newText) {
//      if (newText?.isNotEmpty ?? false) {
//        _clearButtonEnabled = true;
//        _controller.value = TextEditingValue(
//            text: newText!,
//            selection: TextSelection.collapsed(offset: newText.length));
//      } else {
//        _clearButtonEnabled = false;
//        _controller.clear();
//      }
//    }
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              widget.onTap?.call();
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                // fit: StackFit.loose,
                children: [
                  _buildInput(),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: widget.prefixIcon,
                      ),
                    ),
                  ),
//                  Positioned.fill(
//                    child: Align(
//                      alignment: Alignment.centerRight,
//                      child: Padding(
//                        padding: const EdgeInsets.only(right: 8),
//                        child: widget.needClearButton
//                            ? CircleCloseButton(
//                                onPressed: () {
//                                  widget.onClearPressed?.call();
//                                },
//                                backdropColor: AppColors.white10,
//                              )
//                            : widget.suffixIcon,
//                      ),
//                    ),
//                  ),
                ],
              ),
            ),
          ),
        ],
      );

  Widget _buildInput() => Container(
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? AppColors.black3,
          borderRadius: widget.borderRadius ?? BorderRadius.circular(50),
        ),
        child: TextField(
          cursorWidth: 2,
          onTap: () {
            widget.onTap?.call();
          },
          onChanged: (text) {
            widget.onChanged?.call(text);
          },
          cursorColor: widget.cursorColor ?? AppColors.accent,
          cursorHeight: widget.cursorHeight ?? 22,
          //controller: _controller,
          style: widget.textStyle ?? TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.white),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 12, bottom: 12, left: 48, right: 48),
            hintText: widget.hintText ?? '',
            hintStyle: widget.hintStyle ?? TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.gray8),
            // prefixIcon: Padding(padding: const EdgeInsets.symmetric(vertical: 12), child: widget.prefixIcon),
            // suffixIcon: widget.needClearButton
            //     ? Padding(
            //   padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
            //   child: CircleCloseButton(
            //     onPressed: () {
            //       widget.onClearPressed?.call();
            //     },
            //       backdropColor: AppColors.white10,
            //   ),
            // ) : widget.suffixIcon,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
          // focusNode: _focus,
        ),
      );
}
