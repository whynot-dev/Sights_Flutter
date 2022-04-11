import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/core/utils/phone_utils/phone_number.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';


import 'default_input.dart';

class DefaultPhoneInput extends StatefulWidget {
  const DefaultPhoneInput({
    this.number,
    this.enabled = true,
    this.title,
    this.hint,
    this.label,
    this.needShowPrefixIcon = false,
    this.haveError = false,
    this.onChanged,
    this.needTitle = true,
    this.contentPadding,
    this.style,
    this.autoFocus = false,
  });

  final String? title;
  final String? hint;
  final bool enabled;
  final String? label;
  final bool haveError;
  final bool needShowPrefixIcon;
  final ValueChanged<PhoneNumber>? onChanged;
  final PhoneNumber? number;
  final bool needTitle;
  final EdgeInsets? contentPadding;
  final TextStyle? style;
  final bool autoFocus;

  @override
  _DefaultPhoneInputState createState() => _DefaultPhoneInputState();
}

class _DefaultPhoneInputState extends State<DefaultPhoneInput> {
  MaskTextInputFormatter _formatter =
  MaskTextInputFormatter(mask: '+7 (###) ###-##-##', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) => DefaultInput(
    title: (widget.needTitle == false) ? null : AppLocalizations.of(context).phoneNumber,
    hint: widget.hint,
    enabled: widget.enabled,
    label: widget.label,
    style: widget.style,
    contentPadding: widget.contentPadding,
    hintStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: AppColors.inputHint),
    text: widget.number != null && widget.number!.number.isNotEmpty
        ? _formatter.maskText(widget.number!.number)
        : null,
    inputFormatters: [_formatter],
    maxLines: 1,
    keyboardType: TextInputType.phone,
    onChanged: (String text) {
      String digits = text.replaceAll(new RegExp(r'[^0-9]'), '');
      widget.onChanged?.call(PhoneNumber(number: digits.replaceFirst('7', ''), dialCode: '7', isoCode: 'ru'));
    },
    haveError: widget.haveError,
    autoFocus: widget.autoFocus,
  );
}
