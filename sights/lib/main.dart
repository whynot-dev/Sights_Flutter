import 'dart:async';

import 'package:country_codes/country_codes.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/app.dart';
import 'app/resources/app_styles.dart';
import 'di/injection.dart';

Future<void> _messageHandler(RemoteMessage message) async {
  // FlutterRingtonePlayer.playNotification();
  // print('background message ${message.notification!.body}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  FirebaseMessaging.onBackgroundMessage(_messageHandler);
  SystemChrome.setSystemUIOverlayStyle(AppStyles.darkStyle);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await setUpLocator();
  await CountryCodes.init();

  runZonedGuarded(() {
    runApp(App());
  }, (error, stackTrace) {
    print('runZonedGuarded: Caught error in my root zone.\n $error $stackTrace');
  });
}
