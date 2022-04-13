import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/gen/assets.gen.dart';

class EditNameInput extends StatefulWidget {
  EditNameInput({
    this.text,
    this.onTap,
    this.onChanged,
    this.textStyle,
    this.hintText,
    this.hintStyle,
    this.labelText,
    this.labelStyle,
    this.cursorColor,
    this.cursorHeight,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.haveError = false,
    this.enabled = false,
  });

  final String? text;
  final VoidCallback? onTap;
  final Function(String text)? onChanged;
  final TextStyle? textStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? labelText;
  final TextStyle? labelStyle;
  final Color? cursorColor;
  final double? cursorHeight;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final bool haveError;
  final bool enabled;

  @override
  _EditNameInputState createState() => _EditNameInputState();
}

class _EditNameInputState extends State<EditNameInput> {
  late TextEditingController _controller;
  late FocusNode _focus;
  late void Function() _focusListener;
  bool _needClearButton = false;

  @override
  void initState() {
    _controller = TextEditingController(text: (widget.text?.isNotEmpty ?? false) ? widget.text : null);
    _focus = FocusNode();
    _focusListener = () {
      setState(() {
        if (widget.text != null && widget.text!.isNotEmpty && _focus.hasFocus) {
          _needClearButton = true;
        } else {
          _needClearButton = false;
        }
      });
    };
    _focus.addListener(_focusListener);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant EditNameInput oldWidget) {
    if (widget.text != null && widget.text!.isNotEmpty && _focus.hasFocus) {
      _needClearButton = true;
      setState(() {});
    } else {
      _needClearButton = false;
      setState(() {});
    }

    String? newText = widget.text;
    if (_controller.text != newText) {
      if (newText?.isNotEmpty ?? false) {
        _controller.value =
            TextEditingValue(text: newText!, selection: TextSelection.collapsed(offset: newText.length));
      } else {
        _controller.clear();
      }
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _focus.removeListener(_focusListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => TextField(
        enabled: widget.enabled,
        selectionHeightStyle: BoxHeightStyle.max,
        cursorWidth: 2,
        onTap: () {
          widget.onTap?.call();
        },
        onChanged: (text) {
          widget.onChanged?.call(text);
        },
        cursorColor: widget.cursorColor ?? AppColors.yellow4,
        controller: _controller,
        style:
            widget.textStyle ?? const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: AppColors.inputText),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 18, bottom: 18, left: 16, right: 16),
          hintText: widget.hintText ?? '',
          hintStyle: widget.hintStyle ?? TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: AppColors.gray3),
          labelText: widget.labelText ?? '',
          labelStyle: widget.labelStyle ?? TextStyle(fontWeight: FontWeight.w500, fontSize: 13, color: AppColors.gray3),
          suffixIcon: _needClearButton ? _buildClearButton() : null,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: widget.haveError ? AppColors.error : AppColors.yellow4),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: widget.haveError ? AppColors.error : AppColors.gray7),
          ),
          disabledBorder: const UnderlineInputBorder(
            borderSide: const BorderSide(color: AppColors.gray7),
          ),
        ),
        focusNode: _focus,
      );

  Widget _buildClearButton() => Padding(
        padding: const EdgeInsets.only(top: 14, right: 14, bottom: 16),
        child: GestureDetector(
          onTap: () {
            _controller.clear();
            _needClearButton = false;
            widget.onChanged?.call(_controller.text);
            setState(() {});
          },
          //child: SvgPicture.asset(Assets.images.inputClearCircle),
        ),
      );
}
