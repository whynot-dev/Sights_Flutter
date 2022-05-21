import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';
import 'package:sights/core/network/dio_helper.dart';
import 'package:sights/core/network/network_info.dart';
import 'package:sights/data/gateways/local/preferences_local_gateway.dart';
import 'package:sights/data/gateways/remote/authorization_remote_gateway.dart';
import 'package:sights/data/gateways/remote/directions_remote_gateway.dart';
import 'package:sights/data/gateways/remote/map_remote_gateway.dart';
import 'package:sights/data/repositories/directions_repository.dart';
import 'package:sights/data/repositories/map_repository.dart';

import 'package:sights/data/repositories/profile_repository.dart';
import 'package:sights/localization/app_localizations.dart';

GetIt injection = GetIt.I;

Future setUpLocator() async {
  injection.registerSingleton<FlutterSecureStorage>(FlutterSecureStorage());
  injection.registerSingleton<LocalAuthentication>(LocalAuthentication());
  injection.registerSingleton<PreferencesLocalGateway>(
    PreferencesLocalGateway(flutterSecureStorage: injection()),
  );
}

Future setUpLocatorWithDependencies({
  required BuildContext context,
  required GlobalKey<NavigatorState> navigatorKey,
}) async {
  injection.registerSingleton<AppLocalizations>(AppLocalizations.of(context));
  injection.registerSingleton<DataConnectionChecker>(DataConnectionChecker());
  injection.registerSingleton<NetworkInfo>(NetworkInfoImpl(injection()));
  // injection.registerSingleton<AuthorizationRemoteGateway>(AuthorizationRemoteGateway(
  //   dio: DioHelper.getAuthDio(),
  // ));

  // injection.registerLazySingleton<AuthorizationRepository>(() => AuthorizationRepository(
  //       injection(),
  //       authorizationRemoteGateway: injection(),
  //     ));

  injection.registerSingleton<Dio>(DioHelper.getDio(
    preferencesLocalGateway: injection(),
    // authorizationRemoteGateway: injection(),
    navigatorKey: navigatorKey,
  ));

  injection.registerLazySingleton<MapRemoteGateway>(() => MapRemoteGateway(dio: injection()));

  injection.registerLazySingleton<MapRepository>(() => MapRepository(
        injection(),
        mapRemoteGateway: injection(),
      ));

  injection.registerLazySingleton<DirectionsRemoteGateway>(() => DirectionsRemoteGateway(
        dio: injection(),
        baseUrl: 'https://api.mapbox.com/directions/v5/',
      ));

  injection.registerLazySingleton<DirectionsRepository>(() => DirectionsRepository(
        injection(),
        directionsRemoteGateway: injection(),
      ));

  // injection.registerLazySingleton<ProfileRemoteGateway>(() => ProfileRemoteGateway(dio: injection()));
  //
  // injection.registerLazySingleton<ProfileRepository>(() => ProfileRepository(
  //       injection(),
  //       profileRemoteGateway: injection(),
  //     ));
}
