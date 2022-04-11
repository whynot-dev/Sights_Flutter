import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class AppStyles {
  static const SystemUiOverlayStyle darkStyle = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,// Only for Android; Light: light icons; Dark: dark icons;
    statusBarBrightness: Brightness.dark,// Only for IOS; Dark: light icons; Light: dark icons;
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarContrastEnforced: true,
  );

  static const SystemUiOverlayStyle lightStyle = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarContrastEnforced: true,
  );
}
