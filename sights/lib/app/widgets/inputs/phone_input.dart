import 'dart:io';

import 'package:country_codes/country_codes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/core/utils/phone_utils/phone_number.dart';
import 'package:collection/src/iterable_extensions.dart';

class PhoneInput extends StatefulWidget {
  PhoneInput({
    this.number,
    this.onChanged,
    this.autoFocus = true,
  });

  final PhoneNumber? number;
  final Function(PhoneNumber phoneNumber)? onChanged;
  final bool autoFocus;

  @override
  State<PhoneInput> createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {
  late TextEditingController _controller;
  MaskTextInputFormatter? _formatter;
  CountryManager? _countryManager;

  // // LibPhonenumberTextFormatter? _formatter;
  CountryWithPhoneCode? _country;

  @override
  void initState() {
    super.initState();
    _countryManager = CountryManager();
    _controller = TextEditingController();
    _initFormatter();
  }

  @override
  void didUpdateWidget(covariant PhoneInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.number != null) {
      String? phone = widget.number?.number;
      String controllerPhone = _controller.text;
      if (phone != controllerPhone) {
        _initFormatter();
      } else {
        if (_country != null && _controller.text.length == 0) {
          _controller = TextEditingController(text: '+' + _country!.phoneCode);
          _controller.selection = TextSelection.collapsed(offset: _controller.text.length);
        }
      }
    }
  }

  // void _setInitialNumber() async {
  //   _controller.value = _controller.value.copyWith(
  //     text: _formattedNumber,
  //     selection: TextSelection.collapsed(offset: _formattedNumber.length),
  //   );
  // }
  //
  // void _updatePhoneNumber() async {
  //   if (_phoneNumber != widget.number) {
  //     _phoneNumber = widget.number;
  //     _controller.value = _controller.value.copyWith(
  //       text: _formattedNumber,
  //       selection: TextSelection.collapsed(offset: _formattedNumber.length),
  //     );
  //   }
  // }

  // String get _formattedNumber => (_countryDetails?.dialCode ?? '') + (_phoneNumber?.number ?? '');

  InputBorder _border = UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent, width: 2));

  @override
  Widget build(BuildContext context) => TextField(
        controller: _controller,
        keyboardType: TextInputType.phone,
        // maxLength: 15,
        cursorWidth: 3,
        style: const TextStyle(
          color: AppColors.onBackground,
          fontSize: 30,
          fontWeight: FontWeight.w500,
          // height: 40 / 32,
        ),
        decoration: InputDecoration(
          border: _border,
          focusedBorder: _border,
          enabledBorder: _border,
          errorBorder: _border,
          disabledBorder: _border,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 8),
          counterText: '',
        ),
        onChanged: (text) {
          if (_country != null) {
            // String phone = text.replaceAll(RegExp(r'[^0-9]'), '');
            PhoneNumber number = PhoneNumber(
              number: text,
              dialCode: '+' + _country!.phoneCode,
              isoCode: _country!.countryCode,
            );
            widget.onChanged?.call(number);
          }
        },
        onSubmitted: (text) {
          print('');
        },
        inputFormatters: _formatter != null ? [_formatter!] : null,
        autofocus: widget.autoFocus,
      );

  Future<void> _initFormatter() async {
    if (_countryManager!.countries.isEmpty) {
      await _countryManager!.loadCountries();
    }
    List<CountryWithPhoneCode> countries = _countryManager!.countries;
    String countryCode;
    if (widget.number != null) {
      countryCode = widget.number!.isoCode.toUpperCase();
    } else {
      countryCode = 'RU';
      // countryCode = Platform.localeName.substring(Platform.localeName.lastIndexOf('_') + 1);
    }
    _country = countries.firstWhereOrNull((country) => country.countryCode == countryCode);
    if (_country != null) {
      // _formatter = LibPhonenumberTextFormatter(country: _country!, inputContainsCountryCode: true);
      _controller = TextEditingController(text: '+' + _country!.phoneCode);
      _formatter = MaskTextInputFormatter(
        mask: '+' + _country!.phoneCode + ' (###) ###-##-##',
        filter: {"#": RegExp(r'[0-9]')},
      );
      _controller.selection = TextSelection.collapsed(offset: _controller.text.length);
      // String phone = '+' + _country!.phoneCode;
      // if (widget.number != null) {
      //   phone = widget.number!.getRawNumber();
      // }
      // _controller.value = _formatter!.formatEditUpdate(
      //   TextEditingValue.empty,
      //   TextEditingValue(
      //     text: phone,
      //     selection: TextSelection.fromPosition(
      //       TextPosition(offset: phone.length),
      //     ),
      //   ),
      // );
    }

    print('');
    setState(() {});
  }
}
