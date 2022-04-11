import 'package:flutter/cupertino.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/price/default_price.dart';

class OldPrice extends StatelessWidget {
  OldPrice({
    required this.amount,
    required this.currency,
    this.textStyle = const TextStyle(color: AppColors.gray3, fontSize: 12, fontWeight: FontWeight.w600),
  });

  final double amount;
  final String currency;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Container(
            child: DefaultPrice(
              amount: amount,
              currency: currency,
              textStyle: textStyle,
            ),
          ),
          Positioned.fill(child: Align(alignment: Alignment.center, child: _buildDiagonal())),
        ],
      );

  Widget _buildDiagonal() => Transform.rotate(
        angle: -0.28,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(height: 2, color: AppColors.white),
            Container(height: 1, color: AppColors.gray3),
          ],
        ),
      );
}
