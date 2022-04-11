import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'default_input.dart';

class PassportNumbersInput extends StatefulWidget {
  PassportNumbersInput({
    this.label,
    this.text,
    this.onChanged,
    this.inputFormatters,
    this.error,
  });

  final String? label;
  final String? text;
  final ValueChanged<String>? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final String? error;

  @override
  State<PassportNumbersInput> createState() => _PassportNumbersInputState();
}

class _PassportNumbersInputState extends State<PassportNumbersInput> {

  var maskFormatter = new MaskTextInputFormatter(mask: '#### ######', filter: { "#": RegExp(r'[0-9]') });

  @override
  Widget build(BuildContext context) => DefaultInput(
    keyboardType: TextInputType.number,
    error: widget.error,
    label: widget.label,
    text: widget.text,
    onChanged: (text) {
      widget.onChanged?.call(text);
    },
    inputFormatters: [maskFormatter],
  );
}
