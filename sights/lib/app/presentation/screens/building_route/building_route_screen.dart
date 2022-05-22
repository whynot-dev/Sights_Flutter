import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/app_bars/default_appbar.dart';
import 'package:sights/app/widgets/backgrounds/white_gradient_background.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/app/widgets/buttons/default_text_button.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:sights/core/ui/widgets/base_bloc_state.dart';
import 'package:sights/domain/enums/transport_type.dart';
import 'package:sights/gen/assets.gen.dart';
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
          if (action is SelectPoint) {
            dynamic result = await AppNavigator.navigate(context: context, action: action.navigateAction);
            if (result != null) {
              getBloc(context).add(BuildingRouteEvent.routePointPicked(result, action.selectPointType));
            }
            return;
          }
          if (action is NavigateAction) {
            await AppNavigator.navigate(context: context, action: action);
          }
        },
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppbar(),
              _buildRoutePoints(),
              Expanded(child: _buildIntermediatePoints()),
              _buildBuildRouteButton(),
            ],
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
          _buildTransportSelector(),
        ],
      );

  Widget _buildDeparturePoint() => BlocBuilder<BuildingRouteBloc, BuildingRouteState>(
        buildWhen: (previous, current) => previous.departure != current.departure,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Assets.images.markerStart.image(height: 30),
              DefaultTextButton(
                text: state.departure != null ? state.departure!.address : AppLocalizations.of(context).pointDeparture,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: state.departure != null ? AppColors.onBackground : AppColors.gray6,
                ),
                onPressed: () {
                  getBloc(context).add(BuildingRouteEvent.departureClicked());
                },
              ),
            ],
          ),
        ),
      );

  Widget _buildIntermediatePoints() => SizedBox(height: 100);

  Widget _buildDestination() => BlocBuilder<BuildingRouteBloc, BuildingRouteState>(
        buildWhen: (previous, current) => previous.destination != current.destination,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Assets.images.markerFinish.image(height: 30),
              DefaultTextButton(
                text: state.destination != null
                    ? state.destination!.address
                    : AppLocalizations.of(context).pointDestination,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: state.destination != null ? AppColors.onBackground : AppColors.gray6,
                ),
                onPressed: () {
                  getBloc(context).add(BuildingRouteEvent.destinationClicked());
                },
              ),
            ],
          ),
        ),
      );

  Widget _buildBuildRouteButton() => BlocBuilder<BuildingRouteBloc, BuildingRouteState>(
        buildWhen: (previous, current) => previous.buttonEnabled != current.buttonEnabled,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: DefaultButton(
            text: AppLocalizations.of(context).buildingRoute,
            enabled: state.buttonEnabled,
            onPressed: () {
              getBloc(context).add(BuildingRouteEvent.buildRouteClicked());
            },
          ),
        ),
      );

  Widget _buildTransportSelector() => BlocBuilder<BuildingRouteBloc, BuildingRouteState>(
        buildWhen: (previous, current) => previous.selectedTransport != current.selectedTransport,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                AppLocalizations.of(context).transport,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.onBackground),
              ),
              const SizedBox(width: 10),
              DropdownButton<TransportType>(
                value: state.selectedTransport,
                items: [
                  DropdownMenuItem(
                    value: TransportType.driving,
                    child: Icon(Icons.directions_car_outlined),
                  ),
                  DropdownMenuItem(
                    value: TransportType.walking,
                    child: Icon(Icons.directions_walk),
                  ),
                  DropdownMenuItem(
                    value: TransportType.cycling,
                    child: Icon(Icons.directions_bike_rounded),
                  ),
                ],
                onChanged: (TransportType? value) {
                  if (value != null) {
                    getBloc(context).add(BuildingRouteEvent.transportChanged(value));
                  }
                },
              ),
            ],
          ),
        ),
      );
}
