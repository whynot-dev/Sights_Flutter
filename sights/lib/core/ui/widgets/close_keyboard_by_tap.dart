import 'dart:io';

import 'package:flutter/material.dart';

class CloseKeyboardByTap extends StatelessWidget {
  const CloseKeyboardByTap(this.child);

  final Widget child;

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (Platform.isIOS) {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          }
        },
        child: child,
      );
}
