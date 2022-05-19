import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/widgets/app_bars/default_appbar.dart';
import 'package:sights/app/widgets/backgrounds/white_gradient_background.dart';
import 'package:sights/app/widgets/buttons/default_text_button.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:sights/core/ui/widgets/base_bloc_state.dart';
import 'package:sights/localization/app_localizations.dart';

import 'bloc/building_route_bloc.dart';

class BuildingRouteScreen extends StatefulWidget {
  @override
  State<BuildingRouteScreen> createState() => _BuildingRouteScreenState();
}

class _BuildingRouteScreenState extends BaseBlocState<BuildingRouteScreen, BuildingRouteBloc> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: WhiteGradientBackground(
          child: SafeArea(
            child: _buildBody(context),
          ),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<BuildingRouteBloc, BuildingRouteState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
        },
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildAppbar(),
                _buildRoutePoints(),
              ],
            ),
          ),
        ),
      );

  Widget _buildAppbar() => DefaultAppbar(
        title: AppLocalizations.of(context).buildingRoute,
        needDivider: true,
        onBackPressed: () {
          Navigator.pop(context);
        },
      );

  Widget _buildRoutePoints() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDeparturePoint(),
          _buildDestination(),
        ],
      );

  Widget _buildDeparturePoint() => DefaultTextButton(text: 'Пункт отправления');

  Widget _buildIntermediatePoints() => SizedBox();

  Widget _buildDestination() => DefaultTextButton(text: 'Пункт назначения');
}
