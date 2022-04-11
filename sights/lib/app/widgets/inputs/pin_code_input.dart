import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sights/app/resources/app_colors.dart';

class PinCodeInput extends StatefulWidget {
  PinCodeInput({
    required this.code,
    this.onChanged,
    this.cursorColor = AppColors.brightAcid,
    this.activeColor= AppColors.focusedInputBorder,
    this.selectedColor= AppColors.focusedInputBorder,
    this.inactiveColor= AppColors.gray2,
  });

  final String code;
  final Color? cursorColor;
  final Color? activeColor;
  final Color? selectedColor;
  final Color? inactiveColor;
  final void Function(String text)? onChanged;
  @override
  State<PinCodeInput> createState() => _PinCodeInputState();
}

class _PinCodeInputState extends State<PinCodeInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.code);
  }

  @override
  void didUpdateWidget(covariant PinCodeInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.code != _controller.text) {
      _controller.text = widget.code;
    }
  }

  @override
  Widget build(BuildContext context) => PinCodeTextField(
        inputFormatters: [
          FilteringTextInputFormatter(RegExp(r"\s"), allow: false), //
        ],
        controller: _controller,
        appContext: context,
        length: 6,
        autoFocus: true,
        animationType: AnimationType.scale,
        keyboardType: TextInputType.number,
        cursorWidth: 4,
        cursorHeight: 26,
        cursorColor: widget.cursorColor,
        animationCurve: Curves.easeIn,
        pinTheme: PinTheme(
          borderWidth: 2,
          fieldWidth: 32,
          activeColor: widget.activeColor,
          selectedColor: widget.selectedColor,
          inactiveColor: widget.inactiveColor,
        ),
        textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 32, height: 40 / 32, color: AppColors.onAccent),
        onChanged: (String code) {
          widget.onChanged?.call(code);
        },
      );
}
