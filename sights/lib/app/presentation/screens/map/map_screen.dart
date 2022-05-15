import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/ui/widgets/base_bloc_state.dart';

import 'bloc/map_bloc.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends BaseBlocState<MapScreen, MapBloc> {
  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: _buildBody(context),
      );

  Widget _buildBody(BuildContext context) => BlocListener<MapBloc, MapState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
        },
        child: Stack(
          children: [
            Positioned.fill(child: _buildMap()),
            Positioned.fill(child: Align(alignment: Alignment.centerRight, child: _buildZoomButtons())),
            Positioned(child: Align(alignment: Alignment.bottomCenter, child: _buildBottomButtons())),
          ],
        ),
      );

  Widget _buildMap() => BlocBuilder<MapBloc, MapState>(
        buildWhen: (previous, current) => previous.sights != current.sights,
        builder: (context, state) => FutureBuilder<Set<Marker>>(
          //future: _generateMarkers(state.vendingMachines),
          builder: (BuildContext context, AsyncSnapshot<Set<Marker>> snapshot) => GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
              getBloc(context).add(MapEvent.onMapCreated(controller));
            },
            onCameraMove: (CameraPosition position) {
              getBloc(context).add(MapEvent.onCameraMove(position));
            },
            onTap: (position) {
              getBloc(context).add(MapEvent.onMapTap());
            },
            markers: snapshot.data ?? {},
            polylines: {
              Polyline(
                polylineId: PolylineId('1'),
                color: Colors.red,
                points: [
                  LatLng(47.224373, 39.705013),
                  LatLng(47.222324, 39.709621),
                  LatLng(47.225601, 39.716797),
                ],
              ),
            },
            mapType: MapType.normal,
            compassEnabled: true,
            mapToolbarEnabled: false,
            myLocationEnabled: false,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            minMaxZoomPreference: MinMaxZoomPreference(3, 18),
            initialCameraPosition: state.cameraPosition,
          ),
        ),
      );

  Future<Set<Marker>> _generateMarkers(List<String> sights) async {
    List<Marker> markers = <Marker>[];
    // for (final vendingMachine in vendingMachines) {
    //   BitmapDescriptor icon;
    //   icon = await BitmapDescriptor.fromAssetImage(
    //     ImageConfiguration(size: const Size(28, 28)),
    //     Assets.images.marker.assetName,
    //   );
    //   markers.add(
    //     Marker(
    //       markerId: MarkerId(vendingMachine.id.toString()),
    //       position: LatLng(vendingMachine.latitude, vendingMachine.longitude),
    //       icon: icon,
    //       onTap: () {
    //        // sendEvent(VendingMachinesOnMapEvent.vendingMachineOnMapClicked(vendingMachine));
    //       },
    //     ),
    //   );
    // }

    return markers.toSet();
  }

  Widget _buildMyLocationButton() => SizedBox();

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
}
