import 'dart:io';

import 'package:flutter/material.dart';

class CloseKeyboardByTap extends StatelessWidget {
  const CloseKeyboardByTap(this.child);

  final Widget child;
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          if (Platform.isIOS) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        behavior: HitTestBehavior.opaque,
        child: child,
      );
}
