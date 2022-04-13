import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/gen/assets.gen.dart';

class DefaultInput extends StatefulWidget {
  DefaultInput({
    this.onTap,
    // this.height = 56,
    this.title,
    this.cursorColor,
    this.text,
    this.hint,
    this.haveError = false,
    this.onChanged,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    this.error,
    this.prefixIcon,
    this.inputFormatters,
    this.maxLength,
    this.minLines,
    this.maxLines = 1,
    this.contentPadding,
    this.inputPadding,
    this.style,
    this.hintStyle,
    this.autoFocus = false,
    this.focus,
    this.focusScope,
    this.enabled = true,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.label,
    this.cursorHeight,
    this.labelStyle,
  });

  final VoidCallback? onTap;
  final Color? cursorColor;
  final double? cursorHeight;

  // final double height;
  final String? title;
  final String? text;
  final String? hint;
  final bool haveError;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final EdgeInsets? contentPadding;
  final EdgeInsets? inputPadding;
  final bool autoFocus;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final FocusNode? focus;
  final FocusScopeNode? focusScope;
  final bool enabled;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final String? error;
  final String? label;

  @override
  _DefaultInputState createState() => _DefaultInputState();
}

class _DefaultInputState extends State<DefaultInput> {
  late TextEditingController _controller;
  late FocusNode _focus;
  late void Function() _focusListener;

  @override
  void initState() {
    _focusListener = () {
      setState(() {});
    };
    _focus = widget.focus != null ? widget.focus! : FocusNode();
    _focus.addListener(_focusListener);
    _controller = TextEditingController(text: (widget.text?.isNotEmpty ?? false) ? widget.text : null);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_focusListener);
    _controller.dispose();
  }

  @override
  void didUpdateWidget(covariant DefaultInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    String? newText = widget.text;
    if (_controller.text != newText) {
      if (newText?.isNotEmpty ?? false) {
        _controller.value =
            TextEditingValue(text: newText!, selection: TextSelection.collapsed(offset: newText.length));
      } else {
        _controller.clear();
      }
    }

    // if (newText?.isNotEmpty == true) {
    //   _controller.value = TextEditingValue(
    //       text: (widget.needCapitalizeSentences) ? newText!.replaceFirst(newText[0], newText[0].toUpperCase()) : newText!,
    //       selection: TextSelection.collapsed(offset: newText.length));
    // } else {
    //   _controller.clear();
    // }
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
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: widget.suffixIcon,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(alignment: Alignment.bottomCenter, child: _buildBottomBorder()),
                  ),
                ],
              ),
            ),
          ),
          if (widget.error != null) const SizedBox(height: 6),
          if (widget.haveError && widget.error != null) _buildErrorMessage(),
        ],
      );

  Widget _buildInput() => Container(
        color: AppColors.gray12,
        child: TextField(
          textAlign: TextAlign.start,
          cursorWidth: 2,
          showCursor: true,
          cursorHeight: widget.cursorHeight ?? 22,
          cursorColor: widget.cursorColor ?? AppColors.brightAcid,
          textCapitalization: widget.textCapitalization,
          enabled: widget.enabled,
          controller: _controller,
          keyboardType: widget.keyboardType,
          maxLength: widget.maxLength ?? 120,
          minLines: widget.minLines,
          maxLines: widget.maxLines,
          style: widget.style ??
              const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.inputText, height: 24 / 17),
          inputFormatters: widget.inputFormatters,
          textInputAction: widget.textInputAction,
          decoration: InputDecoration(
            alignLabelWithHint: widget.minLines == 1 ? false : true,
            labelText: widget.label,
            labelStyle: widget.labelStyle ??
                TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: _focus.hasFocus || _controller.value.text != '' ? 13 : 17,
                  color: _focus.hasFocus || _controller.value.text != '' ? AppColors.gray5 : AppColors.inputHint,
                  height: _focus.hasFocus || _controller.value.text != '' ? 18 / 13 : 24 / 17,
                ),
            // hintStyle: widget.hintStyle ??
            //     const TextStyle(
            //       fontWeight: FontWeight.w400,
            //       fontSize: 17,
            //       color: AppColors.inputHint,
            //     ),
            isDense: true,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            contentPadding: widget.contentPadding ??
                EdgeInsets.only(
                  left: widget.prefixIcon != null ? 56 : 20,
                  right: widget.suffixIcon != null ? 56 : 20,
                  top: _focus.hasFocus || _controller.value.text != '' ? 12 : 0,
                  bottom: widget.maxLines == 1
                      ? (_focus.hasFocus || _controller.value.text != '')
                          ? 12
                          : 21
                      : (_focus.hasFocus || _controller.value.text != '')
                          ? 20
                          : 29,
                ),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            counterText: '',
          ),
          obscureText: widget.obscureText,
          onChanged: (text) {
            widget.onChanged?.call(text);
          },
          focusNode: _focus,
        ),
        // ),
      );

  Widget _buildBottomBorder() => ClipRRect(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        child: Container(
          color: widget.haveError
              ? AppColors.error
              : _focus.hasFocus
                  ? AppColors.focusedInputBorder
                  : AppColors.gray0,
          height: 2,
        ),
      );

  Widget _buildErrorMessage() => Row(
        children: [
         // SvgPicture.asset(Assets.images.error, height: 16, width: 16),
          const SizedBox(width: 8),
          Text(
            widget.error!,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.error),
          ),
        ],
      );
}
