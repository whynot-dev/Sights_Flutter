import 'package:google_maps_flutter/google_maps_flutter.dart';

class RoutePointEntity {
  RoutePointEntity({
    required this.address,
    required this.position,
  });

  String address;
  LatLng position;
}
