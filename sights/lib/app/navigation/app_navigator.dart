import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth/local_auth.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sights/app/presentation/screens/addresses/address_on_map/address_on_map_screen.dart';
import 'package:sights/app/presentation/screens/addresses/address_on_map/bloc/address_on_map_bloc.dart';
import 'package:sights/app/presentation/screens/addresses/addresses_screen.dart';
import 'package:sights/app/presentation/screens/addresses/bloc/addresses_bloc.dart';
import 'package:sights/app/presentation/screens/addresses/edit_address/bloc/edit_address_bloc.dart';
import 'package:sights/app/presentation/screens/addresses/edit_address/edit_address_screen.dart';
import 'package:sights/app/presentation/screens/confirm_account/bloc/confirm_account_bloc.dart';
import 'package:sights/app/presentation/screens/confirm_account/confirm_account_screen.dart';
import 'package:sights/app/presentation/screens/confirm_phone/bloc/confirm_phone_bloc.dart';
import 'package:sights/app/presentation/screens/confirm_phone/confirm_phone_screen.dart';
import 'package:sights/app/presentation/screens/enter_number/bloc/enter_number_bloc.dart';
import 'package:sights/app/presentation/screens/enter_number/enter_number_screen.dart';
import 'package:sights/app/presentation/screens/enter_pin_code/bloc/enter_pin_code_bloc.dart';
import 'package:sights/app/presentation/screens/enter_pin_code/enter_pin_code_screen.dart';
import 'package:sights/app/presentation/screens/profile/bloc/profile_bloc.dart';
import 'package:sights/app/widgets/routes/default_page_route_without_animation.dart';
import 'package:sights/di/injection.dart';
import 'package:sights/domain/entities/address_item_entity.dart';
import 'package:sights/domain/entities/profile_entity.dart';
import 'package:sights/domain/entities/story_entity.dart';
import 'package:sights/domain/enums/enter_code_type.dart';

import 'navigation_action.dart';
import 'navigation_type.dart';

class AppNavigator {
  static const _animationDuration = Duration(milliseconds: 180);

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
          route = DefaultPageRouteWithoutAnimation(
            settings: RouteSettings(name: routeName),
            builder: (BuildContext context) => BlocProvider(
              create: (context) => EnterNumberBloc(
                authorizationRepository: injection(),
                preferencesLocalGateway: injection(),
              ),
              child: EnterNumberScreen(),
            ),
          ) as Route<D>;
        },
        navigateToEnterPinCode: (NavigateType type, EnterCodeType enterCodeType) {
          navigateType = type;
          route = DefaultPageRouteWithoutAnimation(
            settings: RouteSettings(name: routeName),
            builder: (BuildContext context) => BlocProvider(
              create: (context) => EnterPinCodeBloc(
                localAuth: injection(),
                enterCodeType: enterCodeType,
                authorizationRepository: injection(),
                preferencesLocalGateway: injection(),
                localization: injection(),
              ),
              child: EnterPinCodeScreen(),
            ),
          ) as Route<D>;
        },
        navigateToConfirmAccount: (NavigateType type) {
          navigateType = type;
          route = DefaultPageRouteWithoutAnimation(
            settings: RouteSettings(name: routeName),
            builder: (BuildContext context) => BlocProvider(
              create: (context) => ConfirmAccountBloc(),
              child: ConfirmAccountScreen(),
            ),
          ) as Route<D>;
        },
        navigateToConfirmPhone: (NavigateType type, String phoneNumber) {
          navigateType = type;
          route = DefaultPageRouteWithoutAnimation(
            settings: RouteSettings(name: routeName),
            builder: (BuildContext context) => BlocProvider(
              create: (context) => ConfirmPhoneBloc(
                phoneNumber: phoneNumber,
                authorizationRepository: injection(),
                preferencesLocalGateway: injection(),
                localizations: injection(),
              ),
              child: ConfirmPhoneScreen(),
            ),
          ) as Route<D>;
        },


        navigateToAddresses: (NavigateType type, ProfileEntity? profile) {
          navigateType = type;
          route = PageTransition(
            type: PageTransitionType.rightToLeft,
            duration: _animationDuration,
            reverseDuration: _animationDuration,
            settings: RouteSettings(name: routeName),
            child: BlocProvider(
              create: (context) => AddressesBloc(
                profileRepository: injection(),
                preferencesLocalGateway: injection(),
                profile: profile,
              ),
              child: AddressesScreen(),
            ),
          );
        },
        navigateToEditAddress: (
          NavigateType type,
          AddressItemEntity? addressItemEntity,
          bool isNewAddress,
          AddressesBloc? addressesBloc,
          NavigateAction actionForPopUntil,
        ) {
          navigateType = type;
          route = PageTransition(
            type: PageTransitionType.rightToLeft,
            duration: _animationDuration,
            reverseDuration: _animationDuration,
            settings: RouteSettings(name: routeName),
            child: BlocProvider(
              create: (context) => EditAddressBloc(
                addressItemEntity: addressItemEntity,
                preferencesLocalGateway: injection(),
                profileRepository: injection(),
                addressesBloc: addressesBloc,
                isNewAddress: isNewAddress,
                actionForPopUntil: actionForPopUntil,
              ),
              child: EditAddressScreen(needDeleteButton: !isNewAddress),
            ),
          );
        },
        navigateToAddressOnMap: (
          NavigateType type,
          List<AddressItemEntity>? myAddresses,
          AddressesBloc? addressesBloc,
          NavigateAction actionForPopUntil,
        ) {
          navigateType = type;
          route = DefaultPageRouteWithoutAnimation(
            settings: RouteSettings(name: routeName),
            builder: (BuildContext context) => BlocProvider(
              create: (context) => AddressOnMapBloc(
                preferencesLocalGateway: injection(),
                profileRepository: injection(),
                myAddresses: myAddresses,
                addressesBloc: addressesBloc,
                actionForPopUntil: actionForPopUntil,
              ),
              child: const AddressOnMapScreen(),
            ),
          ) as Route<D>;
        },
        showSelectAddressBottomSheet: (NavigateType type, List<AddressItemEntity> addresses) {
          navigateType = type;
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
