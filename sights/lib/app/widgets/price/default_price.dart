import 'package:flutter/cupertino.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:sights/app/resources/app_colors.dart';

class DefaultPrice extends StatelessWidget {
  DefaultPrice({
    required this.amount,
    required this.currency,
    this.prefixText = '',
    this.suffixText = '',
    this.textStyle = const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.onAccent),
  });

  final double amount;
  final String currency;
  final String prefixText;
  final String suffixText;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) => Text(
        prefixText + _getPriceString() + suffixText,
        style: textStyle,
      );

  String _getPriceString() => FlutterMoneyFormatter(
        amount: amount,
        settings: MoneyFormatterSettings(
          thousandSeparator: ' ',
          symbol: currency,
          fractionDigits: 0,
          symbolAndNumberSeparator: ' ',
          decimalSeparator: ',',
        ),
      ).output.symbolOnRight;
}
