import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';

class PinCodeKeyboard extends StatefulWidget {
  PinCodeKeyboard({
    this.onDigitPressed,
    this.onLeftKeyPressed,
    this.onRightKeyPressed,
    this.leftKey,
    this.rightKey,
  });

  final void Function(String digit)? onDigitPressed;
  final void Function()? onLeftKeyPressed;
  final void Function()? onRightKeyPressed;
  final Widget? leftKey;
  final Widget? rightKey;

  @override
  State<PinCodeKeyboard> createState() => _PinCodeKeyboardState();
}

class _PinCodeKeyboardState extends State<PinCodeKeyboard> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width / 1.5;
    if (size > 260) size = 260;
    return Container(
      alignment: Alignment.center,
      width: size,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemCount: 12,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return _buildDigit(1);
            case 1:
              return _buildDigit(2);
            case 2:
              return _buildDigit(3);
            case 3:
              return _buildDigit(4);
            case 4:
              return _buildDigit(5);
            case 5:
              return _buildDigit(6);
            case 6:
              return _buildDigit(7);
            case 7:
              return _buildDigit(8);
            case 8:
              return _buildDigit(9);
            case 9:
              return _buildKey(widget.leftKey, true);
            case 10:
              return _buildDigit(0);
            case 11:
              return _buildKey(widget.rightKey, false);
            default:
              return SizedBox();
          }
        },
        // children: [
        //   _buildDigit(1, size),
        //   _buildDigit(2, size),
        //   _buildDigit(3, size),
        //   _buildDigit(4, size),
        //   _buildDigit(5, size),
        //   _buildDigit(6, size),
        //   _buildDigit(7, size),
        //   _buildDigit(8, size),
        //   _buildDigit(9, size),
        //   _buildKey(widget.leftKey, size, true),
        //   _buildDigit(0, size),
        //   _buildKey(widget.rightKey, size, false),
        // ],
      ),
    );
  }

  Widget _buildDigit(int digit) => Material(
        color: Colors.transparent,
        child: InkWell(
          customBorder: CircleBorder(),
          onTap: () {
            widget.onDigitPressed?.call(digit.toString());
          },
          child: Center(
            child: Text(
              digit.toString(),
              style: const TextStyle(
                color: AppColors.onBackground,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );

  Widget _buildKey(Widget? key, bool isLeft) => key != null
      ? Material(
          color: Colors.transparent,
          child: InkWell(
            customBorder: const CircleBorder(),
            onTap: () {
              if (isLeft) {
                widget.onLeftKeyPressed?.call();
              } else {
                widget.onRightKeyPressed?.call();
              }
            },
            child: Center(child: key),
          ),
        )
      : Container();
}
