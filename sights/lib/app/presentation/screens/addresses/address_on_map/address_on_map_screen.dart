import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:sights/app/presentation/screens/addresses/search_address/bloc/search_address_bloc.dart';
import 'package:sights/app/presentation/screens/addresses/search_address/search_address_screen.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/resources/app_styles.dart';
import 'package:sights/app/widgets/bottom_sheets/pickup_info_bottom_sheet.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/core/ui/widgets/base_bloc_state.dart';
import 'package:sights/core/ui/widgets/dialogs.dart';
import 'package:sights/domain/entities/pickup_point_entity.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';

import 'bloc/address_on_map_bloc.dart';

class AddressOnMapScreen extends StatefulWidget {
  const AddressOnMapScreen();
  @override
  State<AddressOnMapScreen> createState() => _AddressOnMapScreenState();
}

class _AddressOnMapScreenState extends BaseBlocState<AddressOnMapScreen, AddressOnMapBloc> {
  PanelController _panelController = PanelController();
  YandexMapController? _mapController;

  @override
  void dispose() {
    //_mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColors.white,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          top: false,
          bottom: false,
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<AddressOnMapBloc, AddressOnMapState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
          if (action is ChangeCamera) {
            _animateCamera(state);
          }
          if (action is ShowMessage) {
            showMessage(context, action: action);
          }
          if (action is ShowChangeAddressBottomSheet) {
            _showChangeAddressBottomSheet(context, action);
          }
        },
        child: Stack(
          children: [
            Positioned.fill(child: _buildYandexMap()),
            Positioned(
              child: Align(
                alignment: Alignment.topCenter,
                child: IgnorePointer(
                  child: Container(
                    height: 450,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.white.withOpacity(0.8),
                          AppColors.white.withOpacity(0.2),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                  ignoring: true,
                ),
              ),
            ),
            Positioned(top: MediaQuery.of(context).viewPadding.top + 8, left: 16, child: _buildBackButton()),
            Positioned(child: Align(alignment: Alignment.topCenter, child: _buildCurrentAddressWithButton())),
            Positioned.fill(child: Align(alignment: Alignment.centerRight, child: _buildZoomButtons())),
            Positioned(child: Align(alignment: Alignment.bottomCenter, child: _buildBottomButtons())),
            Positioned(child: Align(alignment: Alignment.center, child: _buildMyMarker())),
            _buildPickupInfoBottomPanel(),
          ],
        ),
      );

  Widget _buildYandexMap() => BlocBuilder<AddressOnMapBloc, AddressOnMapState>(
        buildWhen: (previous, current) =>
            previous.pickupPoints != current.pickupPoints ||
            previous.selectedPickupPoint != current.selectedPickupPoint,
        builder: (context, state) => FutureBuilder<List<MapObject<dynamic>>>(
          future: _generateMarkers(state.pickupPoints, state.selectedPickupPoint),
          builder: (context, snapshot) => YandexMap(
            mapObjects: snapshot.data ?? [],
            onMapCreated: (controller) {
              _mapController = controller;
              getBloc(context).add(AddressOnMapEvent.onMapCreated());
            },
            tiltGesturesEnabled: false,
            rotateGesturesEnabled: false,
            logoAlignment: const MapAlignment(horizontal: HorizontalAlignment.left, vertical: VerticalAlignment.bottom),
            onCameraPositionChanged: (cameraPosition, cameraUpdateReason, isFinished) async {
              VisibleRegion? visibleRegion = await _mapController?.getVisibleRegion();
              getBloc(context).add(
                AddressOnMapEvent.onCameraMove(
                  cameraPosition: cameraPosition,
                  cameraIsMoving: !isFinished,
                  visibleRegion: visibleRegion,
                ),
              );
            },
          ),
        ),
      );

  Future<List<MapObject>> _generateMarkers(
      List<PickupPointEntity> pickupPoints, PickupPointEntity? selectedPoint) async {
    List<MapObject> mapObjects = <MapObject>[];
    for (final pickupPoint in pickupPoints) {
      BitmapDescriptor icon;
      if (pickupPoint.id == selectedPoint?.id) {
        final Uint8List markerIcon = await getBytesFromAsset(Assets.images.selectedPickupPointMarker.assetName, 250);
        icon = await BitmapDescriptor.fromBytes(markerIcon);
      } else {
        final Uint8List markerIcon = await getBytesFromAsset(Assets.images.pickupPointMarker.assetName, 120);
        icon = await BitmapDescriptor.fromBytes(markerIcon);
      }
      mapObjects.add(
        Placemark(
          mapId: MapObjectId(pickupPoint.id),
          opacity: 1,
          point: pickupPoint.point,
          icon: PlacemarkIcon.single(
            PlacemarkIconStyle(image: icon),
          ),
          onTap: (placeMark, point) {
            getBloc(context).add(AddressOnMapEvent.pickupPointOnMapClicked(pickupPoint));
          },
        ),
      );
    }
    return mapObjects;
  }

  Widget _buildMyMarker() => BlocBuilder<AddressOnMapBloc, AddressOnMapState>(
        buildWhen: (previous, current) =>
            previous.cameraIsMoving != current.cameraIsMoving ||
            previous.selectedPickupPoint != current.selectedPickupPoint,
        builder: (context, state) => state.selectedPickupPoint == null
            ? IgnorePointer(
                ignoring: true,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 0.5 * state.currentZoomLevel),
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: MediaQuery.of(context).size.height / 2 - 4,
                        child: ClipOval(
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur(sigmaX: 1000, sigmaY: 1000),
                            child: Container(width: 36, height: 6, color: AppColors.onAccent.withOpacity(0.08)),
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 250),
                        bottom: state.cameraIsMoving
                            ? MediaQuery.of(context).size.height / 2 + 23
                            : MediaQuery.of(context).size.height / 2,
                        child: SvgPicture.asset(Assets.images.myMarker),
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox(),
      );

  Widget _buildBackButton() => BlocBuilder<AddressOnMapBloc, AddressOnMapState>(
        buildWhen: (previous, current) => previous.cameraIsMoving != current.cameraIsMoving,
        builder: (context, state) => !state.cameraIsMoving
            ? _buildCircleButton(
                icon: Assets.images.backArrow2,
                onTap: () {
                  getBloc(context).add(AddressOnMapEvent.backButtonClicked());
                },
              )
            : const SizedBox(),
      );

  Widget _buildCurrentAddressWithButton() => BlocBuilder<AddressOnMapBloc, AddressOnMapState>(
        buildWhen: (previous, current) =>
            previous.cameraIsMoving != current.cameraIsMoving ||
            previous.selectedPickupPoint != current.selectedPickupPoint,
        builder: (context, state) => !state.cameraIsMoving && state.selectedPickupPoint == null
            ? Padding(
                padding: EdgeInsets.only(
                  top: 100,
                  left: MediaQuery.of(context).size.width * 0.20,
                  right: MediaQuery.of(context).size.width * 0.20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildCurrentAddress(),
                    const SizedBox(height: 24),
                    _buildChangeAddressButton(),
                  ],
                ),
              )
            : const SizedBox(),
      );

  Widget _buildCurrentAddress() => BlocBuilder<AddressOnMapBloc, AddressOnMapState>(
        buildWhen: (previous, current) => previous.currentAddress != current.currentAddress,
        builder: (context, state) => Text(
          state.currentAddress?.address.isNotEmpty == true ? (state.currentAddress?.address ?? ' ') : ' ',
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500, color: AppColors.onAccent),
          textAlign: TextAlign.center,
        ),
      );

  Widget _buildChangeAddressButton() => GestureDetector(
        onTap: () {
          getBloc(context).add(AddressOnMapEvent.changeAddressClicked());
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(offset: Offset(0, 4), blurRadius: 16, color: AppColors.black.withOpacity(0.15))],
          ),
          child: Text(
            AppLocalizations.of(context).changeAddress,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: AppColors.onAccent),
          ),
        ),
      );

  Widget _buildZoomButtons() => BlocBuilder<AddressOnMapBloc, AddressOnMapState>(
        buildWhen: (previous, current) => previous.cameraIsMoving != current.cameraIsMoving,
        builder: (context, state) => !state.cameraIsMoving
            ? Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(offset: Offset(0, 4), blurRadius: 16, color: AppColors.black.withOpacity(0.15))
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildZoomButton(
                        icon: Assets.images.plus,
                        onTap: () {
                          getBloc(context).add(AddressOnMapEvent.plusClicked());
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Container(height: 1, color: AppColors.gray2.withOpacity(0.4)),
                      ),
                      _buildZoomButton(
                        icon: Assets.images.minus,
                        onTap: () {
                          getBloc(context).add(AddressOnMapEvent.minusClicked());
                        },
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox(),
      );

  Widget _buildZoomButton({required String icon, VoidCallback? onTap}) => GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset(icon),
        ),
      );

  Widget _buildPickupInfoBottomPanel() => BlocBuilder<AddressOnMapBloc, AddressOnMapState>(
        buildWhen: (previous, current) =>
            previous.selectedPickupPoint != current.selectedPickupPoint ||
            previous.pickupInfoIsExpanded != current.pickupInfoIsExpanded,
        builder: (context, state) => AnimatedSwitcher(
          duration: const Duration(milliseconds: 600),
          reverseDuration: const Duration(milliseconds: 600),
          transitionBuilder: (widget, animation) => SlideTransition(
            position: Tween<Offset>(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(animation),
            child: widget,
          ),
          child: state.selectedPickupPoint != null
              ? SlidingUpPanel(
                  minHeight: MediaQuery.of(context).size.height * 0.42,
                  maxHeight: MediaQuery.of(context).size.height - MediaQuery.of(context).viewPadding.top,
                  controller: _panelController,
                  renderPanelSheet: false,
                  onPanelSlide: (position) {
                    getBloc(context).add(AddressOnMapEvent.pickupInfoSlideChanged(position));
                  },
                  panel: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.vertical(top: const Radius.circular(24)),
                          boxShadow: [BoxShadow(blurRadius: 5, color: AppColors.black.withOpacity(0.15))]),
                      child: PickupInfoBottomSheet(
                        isExpanded: state.pickupInfoIsExpanded,
                        pickupPoint: state.selectedPickupPoint!,
                        selectThisAddressClicked: () {
                          getBloc(context).add(AddressOnMapEvent.selectThisAddressClicked());
                        },
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ),
      );

  Widget _buildBottomButtons() => BlocBuilder<AddressOnMapBloc, AddressOnMapState>(
        buildWhen: (previous, current) => previous.cameraIsMoving != current.cameraIsMoving,
        builder: (context, state) => !state.cameraIsMoving
            ? Padding(
                padding: EdgeInsets.only(
                  bottom: Platform.isIOS ? 40 : MediaQuery.of(context).viewPadding.bottom + 40,
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _buildMyPositionButton(),
                    const SizedBox(height: 40),
                    _buildSelectThisAddressButton(),
                  ],
                ),
              )
            : const SizedBox(),
      );

  Widget _buildMyPositionButton() => _buildCircleButton(
        icon: Assets.images.send,
        onTap: () async {
          getBloc(context).add(AddressOnMapEvent.myPositionClicked());
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

  Widget _buildSelectThisAddressButton() => DefaultButton(
        text: AppLocalizations.of(context).selectThisAddress,
        onPressed: () {
          getBloc(context).add(AddressOnMapEvent.selectThisAddressClicked());
        },
      );

  void _animateCamera(AddressOnMapState state) {
    _mapController?.moveCamera(
      CameraUpdate.newCameraPosition(CameraPosition(
        target: state.currentCoordinate,
        zoom: state.currentZoomLevel,
      )),
      animation: MapAnimation(duration: 1.6),
    );
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    Codec codec = await instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ImageByteFormat.png))!.buffer.asUint8List();
  }

  void _showChangeAddressBottomSheet(BuildContext context, ShowChangeAddressBottomSheet action) async {
    Point? point = await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => BlocProvider(
        create: (context) => SearchAddressBloc(
          myAddresses: action.myAddresses,
          currentCoordinate: action.currentCoordinate,
        ),
        child: SearchAddressScreen(),
      ),
    );
    if (point != null) {
      getBloc(context).add(AddressOnMapEvent.currentAddressChanged(point));
    }
  }
}
