import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sights/app/presentation/screens/map/map_screen.dart';
import 'package:sights/app/presentation/screens/profile/profile_screen.dart';
import 'package:sights/app/presentation/screens/routes/routes_screen.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/app_bars/default_bottom_navigation_bar.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/ui/widgets/base_bloc_state.dart';

import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';

import 'bloc/navigation_bloc.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends BaseBlocState<NavigationScreen, NavigationBloc> with WidgetsBindingObserver {
  List<Widget> _screensList = [
    RoutesScreen(),
    MapScreen(),
    //ProfileScreen(),
  ];

  Map<int, GlobalKey<NavigatorState>> _navKeys = {};

  @override
  void initState() {
    _initNavigationKeys();
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocListener<NavigationBloc, NavigationState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) {
          BlocAction? action = state.action;
        },
        child: BlocBuilder<NavigationBloc, NavigationState>(
          buildWhen: (previous, current) => previous.selectedTabIndex != current.selectedTabIndex,
          builder: (context, state) => Scaffold(
            resizeToAvoidBottomInset: false,
            body: Stack(
              children: [
                IndexedStack(
                  index: state.selectedTabIndex,
                  children: List.generate(
                    _screensList.length,
                    (index) => _buildItemNavigator(key: _navKeys[index], page: _screensList[index]),
                  ),
                ),
                Positioned(
                  child: SafeArea(
                    bottom: Platform.isIOS ? false : true,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      //padding: EdgeInsets.only(left: 8, right: 8, bottom: 20),
                      child: _buildBottomNavigationBar(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _buildBottomNavigationBar() => BlocBuilder<NavigationBloc, NavigationState>(
        buildWhen: (previous, current) => previous.selectedTabIndex != current.selectedTabIndex,
        builder: (context, state) => Container(
          height: 64,
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: AppColors.black5.withOpacity(0.3),
                offset: const Offset(0, 10),
                blurRadius: 15,
                spreadRadius: 0,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 32,
                sigmaY: 32,
              ),
              child: DefaultBottomNavigationBar(
                unselectedItemColor: AppColors.gray9,
                selectedItemColor: AppColors.white,
                backgroundColor: AppColors.black5.withOpacity(0.70),
                selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
                heightBetweenIconAndLabel: 3,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                separatorWidget: Container(width: 1, color: AppColors.gray10.withOpacity(0.05)),
                items: [
                  BottomNavigationBarItem(
                    icon:
                        SvgPicture.asset(Assets.images.navigationRoutes, width: 24, height: 24, color: AppColors.gray9),
                    activeIcon: SvgPicture.asset(Assets.images.navigationRoutes, width: 24, height: 24),
                    label: AppLocalizations.of(context).routes,
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(Assets.images.map, width: 24, height: 24, color: AppColors.gray9),
                    activeIcon: SvgPicture.asset(Assets.images.map, width: 24, height: 24),
                    label: AppLocalizations.of(context).map,
                  ),
                  // BottomNavigationBarItem(
                  //   icon: SvgPicture.asset(Assets.images.navigationProfile,
                  //       width: 24, height: 24, color: AppColors.gray9),
                  //   activeIcon: SvgPicture.asset(Assets.images.navigationProfile, width: 24, height: 24),
                  //   label: AppLocalizations.of(context).profile,
                  // ),
                ],
                currentIndex: state.selectedTabIndex,
                onPressed: (newSelectedTab) {
                  switch (newSelectedTab) {
                    case 0:
                      getBloc(context).add(NavigationEvent.navigateToRoutes());
                      break;
                    case 1:
                      getBloc(context).add(NavigationEvent.navigateToMap());
                      break;
                    case 2:
                      getBloc(context).add(NavigationEvent.navigateToProfile());
                      break;
                  }
                },
              ),
            ),
          ),
        ),
      );

  Navigator _buildItemNavigator({GlobalKey<NavigatorState>? key, dynamic page}) => Navigator(
        key: key,
        onGenerateRoute: (route) => MaterialPageRoute(
          settings: route,
          builder: (context) => page,
        ),
      );

  void _initNavigationKeys() {
    _screensList.asMap().forEach((i, element) {
      _navKeys.putIfAbsent(i, () => GlobalKey<NavigatorState>());
    });
  }
}
