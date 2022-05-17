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
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/ui/widgets/base_bloc_state.dart';
import 'package:sights/core/ui/widgets/dialogs.dart';
import 'package:sights/di/injection.dart';
import 'package:sights/domain/entities/feature.dart';
import 'package:sights/gen/assets.gen.dart';
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
        },
        child: Stack(
          children: [
            Positioned.fill(child: _buildMap()),
            //Positioned.fill(child: Align(alignment: Alignment.centerRight, child: _buildZoomButtons())),
            //Positioned(child: Align(alignment: Alignment.bottomCenter, child: _buildBottomButtons())),

            // Positioned(
            //     child: Align(
            //         alignment: Alignment.center,
            //         child: const SizedBox(
            //           height: 300,
            //         ))),\
            Positioned(child: Align(alignment: Alignment.bottomRight, child: _buildMyLocationButton())),
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

  Future<Set<Marker>> _generateMarkers(List<Feature> sights) async {
    List<Marker> markers = <Marker>[];
    for (final sight in sights) {
      BitmapDescriptor icon;
      final Uint8List markerIcon = await getBytesFromAsset(Assets.images.marker2.assetName, 100);
      icon = BitmapDescriptor.fromBytes(markerIcon);
      markers.add(
        Marker(
          markerId: MarkerId(sight.id),
          position: LatLng(sight.geometry.coordinates[1], sight.geometry.coordinates[0]),
          icon: icon,
          onTap: () {
            getBloc(context).add(MapEvent.sightClicked(sight));
          },
        ),
      );
    }

    return markers.toSet();
  }

  Widget _buildMyLocationButton() => Padding(
        padding: EdgeInsets.only(right: 16, bottom: 100 + MediaQuery.of(context).viewPadding.bottom),
        child: _buildCircleButton(
          icon: Assets.images.send,
          onTap: () async {
            getBloc(context).add(MapEvent.myLocationClicked());
          },
        ),
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
            height: 40,
            width: 40,
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
                  onPanelSlide: (position) {
                    getBloc(context).add(MapEvent.sightInfoSlideChanged(position));
                  },
                  panel: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.vertical(top: const Radius.circular(24)),
                          boxShadow: [BoxShadow(blurRadius: 5, color: AppColors.black.withOpacity(0.15))]),
                      child: BlocProvider.value(
                        value: SightInfoBloc(
                          feature: state.selectedSightPoint!,
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
}
