import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/app_bars/default_appbar.dart';
import 'package:sights/app/widgets/backgrounds/default_white_background.dart';
import 'package:sights/app/widgets/backgrounds/white_gradient_background.dart';
import 'package:sights/app/widgets/lists/route_item.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:sights/core/ui/widgets/base_bloc_state.dart';
import 'package:sights/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:sights/domain/entities/save_route_entity.dart';
import 'package:sights/localization/app_localizations.dart';

import 'bloc/routes_bloc.dart';

class RoutesScreen extends StatefulWidget {
  @override
  State<RoutesScreen> createState() => _RoutesScreenState();
}

class _RoutesScreenState extends BaseBlocState<RoutesScreen, RoutesBloc> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: WhiteGradientBackground(
          child: SafeArea(
            child: _buildBody(context),
          ),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<RoutesBloc, RoutesState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
        },
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: Column(
            children: [
              _buildAppbar(),
              Expanded(
                child: _buildRoutes(),
              )
            ],
          ),
        ),
      );

  Widget _buildAppbar() => DefaultAppbar(
        title: AppLocalizations.of(context).routes,
        needDivider: true,
        onBackPressed: () {
          Navigator.pop(context);
        },
      );

  Widget _buildRoutes() => BlocBuilder<RoutesBloc, RoutesState>(
        buildWhen: (previous, current) => previous.routes != current.routes,
        builder: (context, state) => ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: state.routes.length,
          itemBuilder: (context, index) => RouteItem(
            route: state.routes[index],
            routeClicked: () {
              getBloc(context).add(RoutesEvent.routeClicked(index));
            },
            deleteRouteClicked: () {
              getBloc(context).add(RoutesEvent.routeDeleteClicked(index));
            },
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 16),
        ),
      );
}
