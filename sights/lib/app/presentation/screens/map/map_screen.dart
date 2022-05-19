import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/bottom_sheets/sight_info/bloc/sight_info_bloc.dart';
import 'package:sights/app/widgets/bottom_sheets/sight_info/sight_info.dart';
import 'package:sights/app/widgets/buttons/app_button.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/app/widgets/modals/sights_filter_modal.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/ui/widgets/base_bloc_state.dart';
import 'package:sights/core/ui/widgets/dialogs.dart';
import 'package:sights/di/injection.dart';
import 'package:sights/domain/entities/feature.dart';
import 'package:sights/domain/entities/sight_entity.dart';
import 'package:sights/domain/enums/sight_type.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'bloc/map_bloc.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends BaseBlocState<MapScreen, MapBloc> {
  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          top: false,
          bottom: false,
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<MapBloc, MapState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
          if (action is ShowMessage) {
            showMessage(context, action: action);
          }
          if (action is ShowFilterModal) {
            _showFilterModal(context, sightFilters: state.sightFilters);
          }
        },
        child: Stack(
          children: [
            Positioned.fill(child: _buildMap()),
            //Positioned.fill(child: Align(alignment: Alignment.centerRight, child: _buildZoomButtons())),
            Positioned(top: 45, right: 16, child: _buildFiltersButton()),
            Positioned(child: Align(alignment: Alignment.bottomCenter, child: _buildBottomButtons())),
            Positioned(child: Align(child: _buildSightInfoBottomPanel()))
          ],
        ),
      );

  Widget _buildMap() => BlocBuilder<MapBloc, MapState>(
        buildWhen: (previous, current) => previous.sights != current.sights,
        builder: (context, state) => FutureBuilder<Set<Marker>>(
          future: _generateMarkers(state.sights),
          builder: (BuildContext context, AsyncSnapshot<Set<Marker>> snapshot) => GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
              getBloc(context).add(MapEvent.onMapCreated(controller));
            },
            onCameraMove: (CameraPosition position) {
              getBloc(context).add(MapEvent.onCameraMove(position));
            },
            onCameraMoveStarted: () {
              getBloc(context).add(MapEvent.onCameraMoveStarted());
            },
            onTap: (position) {
              getBloc(context).add(MapEvent.onMapTap());
            },
            markers: snapshot.data ?? {},
            polylines: {
              // Polyline(
              //   polylineId: PolylineId('1'),
              //   color: Colors.red,
              //   points: [
              //     LatLng(47.224373, 39.705013),
              //     LatLng(47.222324, 39.709621),
              //     LatLng(47.225601, 39.716797),
              //   ],
              // ),
            },
            mapType: MapType.normal,
            compassEnabled: true,
            mapToolbarEnabled: false,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            minMaxZoomPreference: MinMaxZoomPreference(3, 18),
            initialCameraPosition: state.cameraPosition,
          ),
        ),
      );

  Future<Set<Marker>> _generateMarkers(List<SightEntity> sights) async {
    List<Marker> markers = <Marker>[];
    for (final sight in sights) {
      BitmapDescriptor icon;
      final Uint8List markerIcon = await getBytesFromAsset(Assets.images.marker2.assetName, 100);
      icon = BitmapDescriptor.fromBytes(markerIcon);
      markers.add(
        Marker(
          markerId: MarkerId(sight.feature.id),
          position: LatLng(sight.feature.geometry.coordinates[1], sight.feature.geometry.coordinates[0]),
          icon: icon,
          onTap: () {
            getBloc(context).add(MapEvent.sightClicked(sight));
          },
        ),
      );
    }

    return markers.toSet();
  }

  Widget _buildMyLocationButton() => _buildCircleButton(
        icon: Assets.images.send,
        onTap: () async {
          getBloc(context).add(MapEvent.myLocationClicked());
        },
      );

  Widget _buildFiltersButton() => _buildCircleButton(
        icon: Assets.images.filter,
        onTap: () {
          getBloc(context).add(MapEvent.filterClicked());
        },
      );

  Widget _buildCircleButton({required String icon, VoidCallback? onTap}) => InkWell(
        highlightColor: AppColors.black,
        hoverColor: AppColors.black,
        child: GestureDetector(
          onTap: () {
            onTap?.call();
          },
          behavior: HitTestBehavior.translucent,
          child: Container(
            height: 42,
            width: 42,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(offset: Offset(0, 4), blurRadius: 16, color: AppColors.black.withOpacity(0.15))],
            ),
            child: SvgPicture.asset(icon),
          ),
        ),
      );

  Widget _buildBottomButtons() => Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, bottom: 75),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildMyLocationButton(),
            const SizedBox(height: 50),
            Row(
              children: [
                Expanded(child: _buildRoutesButton()),
                const SizedBox(width: 20),
                Expanded(child: _buildRouteButton()),
              ],
            ),
          ],
        ),
      );

  Widget _buildRoutesButton() => AppButton(
        text: AppLocalizations.of(context).routes,
        onPressed: () {
          getBloc(context).add(MapEvent.routesClicked());
        },
      );

  Widget _buildRouteButton() => AppButton(
        text: AppLocalizations.of(context).createRoute,
        onPressed: () {
          getBloc(context).add(MapEvent.routeButtonClicked());
        },
      );

  Widget _buildSightInfoBottomPanel() => BlocBuilder<MapBloc, MapState>(
        buildWhen: (previous, current) => previous.selectedSightPoint != current.selectedSightPoint,
        builder: (context, state) => AnimatedSwitcher(
          duration: const Duration(milliseconds: 600),
          reverseDuration: const Duration(milliseconds: 600),
          transitionBuilder: (widget, animation) => SlideTransition(
            position: Tween<Offset>(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(animation),
            child: widget,
          ),
          child: state.selectedSightPoint != null
              ? SlidingUpPanel(
                  minHeight: MediaQuery.of(context).size.height * 0.3,
                  maxHeight: MediaQuery.of(context).size.height - MediaQuery.of(context).viewPadding.top,
                  renderPanelSheet: false,
                  panel: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.vertical(top: const Radius.circular(24)),
                          boxShadow: [BoxShadow(blurRadius: 5, color: AppColors.black.withOpacity(0.15))]),
                      child: BlocProvider.value(
                        value: SightInfoBloc(
                          sight: state.selectedSightPoint!,
                          mapRepository: injection(),
                        ),
                        child: SightInfo(),
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ),
      );

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    Codec codec = await instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ImageByteFormat.png))!.buffer.asUint8List();
  }

  void _showFilterModal(BuildContext context, {required List<SightType> sightFilters}) async {
    dynamic filters = await showDialog(
      context: context,
      builder: (context) => Dialog(
        //insetPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        backgroundColor: Colors.transparent,
        child: SightsFilterModal(
          sightFilters: sightFilters,
        ),
      ),
    );
    if (filters != null) {
      getBloc(context).add(MapEvent.filtersChanged(filters));
    }
  }
}
