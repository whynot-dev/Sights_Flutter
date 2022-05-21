import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/backgrounds/default_black_background.dart';
import 'package:sights/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:sights/di/injection.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';

import 'bloc/splash_bloc.dart';

class SplashScreen extends BaseBlocStatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  SplashScreen({required this.navigatorKey});

  @override
  Widget build(BuildContext context) => BlocListener<SplashBloc, SplashState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          var action = state.action;
          if (action is NavigateAction) {
            await setUpLocatorWithDependencies(context: context, navigatorKey: navigatorKey);
            AppNavigator.navigate(context: context, action: action);
          }
        },
        child: Scaffold(
          body: DefaultBlackBackground(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 // Assets.images.bigAppLogo.image(width: 175, height: 175),
                  const SizedBox(height: 4),
                  Container(height: 1, width: 32, color: AppColors.white40),
                  const SizedBox(height: 16),
                  Text(
                    AppLocalizations.of(context).travelSimply,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
