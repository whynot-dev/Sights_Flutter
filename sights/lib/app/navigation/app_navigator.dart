import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sights/app/presentation/screens/building_route/bloc/building_route_bloc.dart';
import 'package:sights/app/presentation/screens/building_route/building_route_screen.dart';

import 'package:sights/app/presentation/screens/confirm_phone/bloc/confirm_phone_bloc.dart';
import 'package:sights/app/presentation/screens/confirm_phone/confirm_phone_screen.dart';
import 'package:sights/app/presentation/screens/enter_number/bloc/enter_number_bloc.dart';
import 'package:sights/app/presentation/screens/enter_number/enter_number_screen.dart';
import 'package:sights/app/presentation/screens/enter_pin_code/bloc/enter_pin_code_bloc.dart';
import 'package:sights/app/presentation/screens/enter_pin_code/enter_pin_code_screen.dart';
import 'package:sights/app/presentation/screens/map/bloc/map_bloc.dart';
import 'package:sights/app/presentation/screens/map/map_screen.dart';
import 'package:sights/app/presentation/screens/navigation/bloc/navigation_bloc.dart';
import 'package:sights/app/presentation/screens/navigation/navigation_screen.dart';
import 'package:sights/app/presentation/screens/profile/bloc/profile_bloc.dart';
import 'package:sights/app/presentation/screens/routes/bloc/routes_bloc.dart';
import 'package:sights/app/presentation/screens/routes/routes_screen.dart';
import 'package:sights/app/presentation/screens/webview/webview_screen.dart';
import 'package:sights/app/widgets/routes/default_page_route_without_animation.dart';
import 'package:sights/di/injection.dart';
import 'package:sights/domain/enums/enter_code_type.dart';
import 'package:sights/domain/enums/map_mode.dart';

import 'navigation_action.dart';
import 'navigation_type.dart';

class AppNavigator {
  static Future<D?> navigate<D>({
    required BuildContext context,
    required NavigateAction action,
    bool? rootNavigator,
  }) async {
    if (action is NavigateBack) {
      Navigator.pop(context, action.result);
      return null;
    }
    late NavigateType navigateType;
    late Route<D> route;
    String routeName = action.runtimeType.toString();
    bool _rootNavigator = rootNavigator ?? false;
    action.when(
        navigateBack: (dynamic result) {},
        navigateToEnterPhoneNumber: (NavigateType type) {
          navigateType = type;
          route = PageRouteWithoutAnimation(
            settings: RouteSettings(name: routeName),
            builder: (BuildContext context) => BlocProvider(
              create: (context) => EnterNumberBloc(
                //authorizationRepository: injection(),
                preferencesLocalGateway: injection(),
              ),
              child: EnterNumberScreen(),
            ),
          );
        },
        navigateToEnterPinCode: (NavigateType type, EnterCodeType enterCodeType) {
          navigateType = type;
          route = PageRouteWithoutAnimation(
            settings: RouteSettings(name: routeName),
            builder: (BuildContext context) => BlocProvider(
              create: (context) => EnterPinCodeBloc(
                localAuth: injection(),
                enterCodeType: enterCodeType,
                preferencesLocalGateway: injection(),
                localization: injection(),
              ),
              child: EnterPinCodeScreen(),
            ),
          );
        },
        navigateToConfirmPhone: (NavigateType type, String phoneNumber) {
          navigateType = type;
          route = PageRouteWithoutAnimation(
            settings: RouteSettings(name: routeName),
            builder: (BuildContext context) => BlocProvider(
              create: (context) => ConfirmPhoneBloc(
                phoneNumber: phoneNumber,
                //authorizationRepository: injection(),
                preferencesLocalGateway: injection(),
                localizations: injection(),
              ),
              child: ConfirmPhoneScreen(),
            ),
          );
        },
        navigateToMap: (NavigateType type, MapMode mapMode) {
          navigateType = type;
          route = PageRouteWithoutAnimation(
            settings: RouteSettings(name: routeName),
            builder: (BuildContext context) => BlocProvider(
              create: (context) => MapBloc(
                mapMode: mapMode,
                mapRepository: injection(),
                directionsRepository: injection(),
              ),
              child: MapScreen(),
            ),
          );
        },
        navigateToRoutes: (NavigateType type) {
          navigateType = type;
          route = PageRouteWithoutAnimation(
            settings: RouteSettings(name: routeName),
            builder: (BuildContext context) => BlocProvider(
              create: (context) => RoutesBloc(),
              child: RoutesScreen(),
            ),
          );
        },
        navigateToBuildingRoute: (NavigateType type) {
          navigateType = type;
          route = PageRouteWithoutAnimation(
            settings: RouteSettings(name: routeName),
            builder: (BuildContext context) => BlocProvider(
              create: (context) => BuildingRouteBloc(
                directionsRepository: injection(),
              ),
              child: BuildingRouteScreen(),
            ),
          );
        },
        navigateToWebView: (NavigateType type, String url) {
          navigateType = type;
          route = PageRouteWithoutAnimation(
            settings: RouteSettings(name: routeName),
            builder: (BuildContext context) => WebViewScreen(url: url),
          );
        });
    switch (navigateType) {
      case NavigateType.push:
        return await Navigator.of(context, rootNavigator: _rootNavigator).push(route);
      case NavigateType.pushReplacement:
        return await Navigator.of(context, rootNavigator: _rootNavigator).pushReplacement(route);
      case NavigateType.pushAndRemoveUntil:
        return await Navigator.pushAndRemoveUntil<D?>(context, route, (_) => false);
      case NavigateType.popUntil:
        Navigator.popUntil(context, (routeForCompare) => routeName == routeForCompare.settings.name);
        break;
      case NavigateType.none:
        return null;
    }
    return null;
  }
}
