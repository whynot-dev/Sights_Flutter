import 'dart:async';
import 'dart:io';

import 'package:country_codes/country_codes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:sights/domain/entities/direction.dart';
import 'package:sights/domain/enums/transport_type.dart';

import 'app/app.dart';
import 'app/resources/app_styles.dart';
import 'di/injection.dart';
import 'domain/entities/save_route_entity.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(AppStyles.darkStyle);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await setUpLocator();
  await CountryCodes.init();
  Directory directory = await pathProvider.getApplicationDocumentsDirectory();
  Hive
    ..init(directory.path)
    ..registerAdapter(SaveRouteEntityAdapter())
    ..registerAdapter(DirectionAdapter())
    ..registerAdapter(TransportTypeAdapter());

  runZonedGuarded(() {
    runApp(App());
  }, (error, stackTrace) {
    print('runZonedGuarded: Caught error in my root zone.\n $error $stackTrace');
  });
}
