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
import 'package:sights/domain/entities/direction.dart';
import 'package:sights/domain/entities/direction_entity.dart';
import 'package:sights/domain/entities/feature.dart';
import 'package:sights/domain/entities/sight_entity.dart';
import 'package:sights/domain/enums/map_mode.dart';
import 'package:sights/domain/enums/sight_type.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import 'bloc/map_bloc.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends BaseBlocState<MapScreen, MapBloc> {
  late GoogleMapController _mapController;
  PolylinePoints polylinePoints = PolylinePoints();

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async {
          getBloc(context).add(MapEvent.onBackClicked());
          return false;
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            top: false,
            bottom: false,
            child: _buildBody(context),
          ),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<MapBloc, MapState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            dynamic result = await AppNavigator.navigate(context: context, action: action);
            if (result != null && result is DirectionEntity) {
              getBloc(context).add(MapEvent.directionChanged(result));
            }
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
            Positioned(top: MediaQuery.of(context).viewPadding.top + 8, left: 16, child: _buildBackButton()),
            Positioned(child: Align(alignment: Alignment.topCenter, child: _buildCurrentAddressWithButton())),
            //Positioned.fill(child: Align(alignment: Alignment.centerRight, child: _buildZoomButtons())),
            Positioned(top: 45, right: 16, child: _buildFiltersButton()),
            Positioned(child: Align(alignment: Alignment.bottomCenter, child: _buildBottomButtons())),
            Positioned(child: Align(alignment: Alignment.center, child: _buildMyMarker())),
            Positioned(child: Align(child: _buildSightInfoBottomPanel()))
          ],
        ),
      );

  Widget _buildMap() => BlocBuilder<MapBloc, MapState>(
        buildWhen: (previous, current) =>
            previous.sights != current.sights ||
            previous.currentDirection != current.currentDirection ||
            previous.mapMode != current.mapMode,
        builder: (context, state) => FutureBuilder<Set<Marker>>(
          future: _generateMarkers(state.sights, direction: state.currentDirection),
          builder: (BuildContext context, AsyncSnapshot<Set<Marker>> snapshot) {
            List<LatLng> points = [];
            List<LatLng> pointsRectangle = [];
            if (state.currentDirection != null) {
              points = polylinePoints
                  .decodePolyline(state.currentDirection!.geometry)
                  .map((item) => LatLng(item.latitude, item.longitude))
                  .toList();


              // List<LatLng> sortedLatitudePoints = List.from(points);
              // List<LatLng> sortedLongitudePoints = List.from(points);
              // sortedLatitudePoints.sort((min, max) => min.latitude.compareTo(max.latitude));
              // sortedLongitudePoints.sort((min, max) => min.longitude.compareTo(max.longitude));
              // pointsRectangle = [
              //   LatLng(sortedLatitudePoints.last.latitude, sortedLongitudePoints.first.longitude),
              //   LatLng(sortedLatitudePoints.first.latitude, sortedLongitudePoints.first.longitude),
              //   LatLng(sortedLatitudePoints.first.latitude, sortedLongitudePoints.last.longitude),
              //   LatLng(sortedLatitudePoints.last.latitude, sortedLongitudePoints.last.longitude),
              //   LatLng(sortedLatitudePoints.last.latitude, sortedLongitudePoints.first.longitude),
              // ];
            }

            return GoogleMap(
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
                getBloc(context).add(MapEvent.onMapTap(position));
              },
              onCameraIdle: () {
                getBloc(context).add(MapEvent.onCameraIdle());
              },
              markers: snapshot.data ?? {},
              polylines: {
                Polyline(
                  polylineId: PolylineId('1'),
                  color: Colors.blue,
                  width: 3,
                  points: points,
                ),
                // if (state.mapMode == MapMode.defaultMode)
                //   Polyline(
                //     polylineId: PolylineId('2'),
                //     color: Colors.red,
                //     width: 2,
                //     points: pointsRectangle,
                //   ),
              },
              mapType: MapType.normal,
              compassEnabled: true,
              mapToolbarEnabled: false,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              minMaxZoomPreference: MinMaxZoomPreference(3, 20),
              initialCameraPosition: state.cameraPosition,
            );
          },
        ),
      );

  Future<Set<Marker>> _generateMarkers(List<SightEntity> sights, {Direction? direction}) async {
    List<Marker> markers = <Marker>[];
    Uint8List markerIcon;
    BitmapDescriptor icon;

    for (final sight in sights) {
      markerIcon = await getBytesFromAsset(Assets.images.marker2.assetName, 100);
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

    if (direction != null) {
      markerIcon = await getBytesFromAsset(Assets.images.location.assetName, 100);
      icon = BitmapDescriptor.fromBytes(markerIcon);
      List<PointLatLng> points = polylinePoints.decodePolyline(direction.geometry);
      markers.add(
        Marker(
          markerId: MarkerId('${sights.length + 1}'),
          position: LatLng(points[0].latitude, points[0].longitude),
          icon: icon,
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('${sights.length + 2}'),
          position: LatLng(points[points.length - 1].latitude, points[points.length - 1].longitude),
          icon: icon,
        ),
      );
    }

    return markers.toSet();
  }

  Widget _buildBackButton() => BlocBuilder<MapBloc, MapState>(
        buildWhen: (previous, current) => previous.mapMode != current.mapMode,
        builder: (context, state) => state.mapMode == MapMode.selectPoint
            ? _buildCircleButton(
                icon: Assets.images.backArrow,
                onTap: () {
                  getBloc(context).add(MapEvent.onBackClicked());
                },
              )
            : const SizedBox(),
      );

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

  Widget _buildCurrentAddressWithButton() => BlocBuilder<MapBloc, MapState>(
        buildWhen: (previous, current) =>
            previous.selectedSightPoint != current.selectedSightPoint || previous.mapMode != current.mapMode,
        builder: (context, state) => state.selectedSightPoint == null && state.mapMode == MapMode.selectPoint
            ? Padding(
                padding: EdgeInsets.only(
                  top: 100,
                  left: MediaQuery.of(context).size.width * 0.20,
                  right: MediaQuery.of(context).size.width * 0.20,
                ),
                child: Column(
                  children: [
                    _buildCurrentAddress(),
                    const SizedBox(height: 24),
                  ],
                ),
              )
            : const SizedBox(),
      );

  Widget _buildCurrentAddress() => BlocBuilder<MapBloc, MapState>(
        buildWhen: (previous, current) => previous.currentAddress != current.currentAddress,
        builder: (context, state) => Text(
          state.currentAddress?.isNotEmpty == true ? state.currentAddress! : ' ',
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500, color: AppColors.onAccent),
          textAlign: TextAlign.center,
        ),
      );

  Widget _buildMyMarker() => BlocBuilder<MapBloc, MapState>(
        buildWhen: (previous, current) =>
            previous.mapMode != current.mapMode || previous.selectedSightPoint != current.selectedSightPoint,
        builder: (context, state) => state.selectedSightPoint == null && state.mapMode == MapMode.selectPoint
            ? IgnorePointer(
                ignoring: true,
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      bottom: MediaQuery.of(context).size.height / 2 - 4,
                      child: ClipOval(
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaX: 1000, sigmaY: 1000),
                          child: Container(width: 20, height: 6, color: AppColors.onAccent.withOpacity(0.08)),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 250),
                      bottom: MediaQuery.of(context).size.height / 2,
                      child: SvgPicture.asset(Assets.images.myMarker),
                    ),
                  ],
                ),
              )
            : const SizedBox(),
      );

  Widget _buildBottomButtons() => BlocBuilder<MapBloc, MapState>(
        buildWhen: (previous, current) => previous.mapMode != current.mapMode,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, bottom: 75),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildMyLocationButton(),
              const SizedBox(height: 50),
              state.mapMode == MapMode.defaultMode
                  ? Row(
                      children: [
                        Expanded(child: _buildRoutesButton()),
                        const SizedBox(width: 20),
                        Expanded(child: _buildRouteButton()),
                      ],
                    )
                  : _buildSelectThisAddressButton(),
            ],
          ),
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

  Widget _buildSelectThisAddressButton() => DefaultButton(
        text: AppLocalizations.of(context).selectThisAddress,
        onPressed: () {
          getBloc(context).add(MapEvent.selectThisAddressClicked());
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
