import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/domain/entities/save_route_entity.dart';
import 'package:sights/domain/enums/transport_type.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';

class RouteItem extends StatelessWidget {
  const RouteItem({
    required this.route,
    this.routeClicked,
    this.deleteRouteClicked,
  });

  final SaveRouteEntity route;
  final VoidCallback? routeClicked;
  final VoidCallback? deleteRouteClicked;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: routeClicked,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildPointRoute(
                        Assets.images.markerStart.image(height: 30),
                        route.startAddress,
                      ),
                      const SizedBox(height: 10),
                      _buildPointRoute(
                        Assets.images.markerFinish.image(height: 30),
                        route.finishAddress,
                      ),
                      const SizedBox(height: 10),
                      _buildInfo(),
                    ],
                  ),
                ),
                _buildDivider(),
                _buildDeleteButton(context),
              ],
            ),
          ),
        ),
      );

  Widget _buildPointRoute(Image image, String text) => Row(
    mainAxisSize: MainAxisSize.min,
        children: [
          image,
          const SizedBox(width: 10),
          Flexible(
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 17, color: AppColors.onBackground),
            ),
          ),
        ],
      );

  Widget _buildDivider() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          width: 1,
          height: 120,
          color: AppColors.gray2,
        ),
      );

  Widget _buildDeleteButton(BuildContext context) => GestureDetector(
        onTap: deleteRouteClicked,
        behavior: HitTestBehavior.translucent,
        child: Column(
          children: [
            _buildIcon(Icons.delete_forever, AppColors.red),
            const SizedBox(height: 3),
            Text(
              AppLocalizations.of(context).delete,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: AppColors.red),
            ),
          ],
        ),
      );

  Widget _buildInfo() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildTime(),
          _buildCountSights(),
          _buildLengthRoute(),
        ],
      );

  Widget _buildTime() => _buildIconAndText(
      Icons.access_time_filled, '${Duration(seconds: route.direction.duration.toInt()).inMinutes} мин.');

  Widget _buildCountSights() => _buildIconAndText(Icons.account_balance_outlined, _getCountSightsText());

  Widget _buildLengthRoute() => _buildIconAndText(_getTransportIcon(), '${route.direction.distance.toInt()} м');

  Widget _buildIconAndText(IconData icon, String text) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildIcon(icon),
          const SizedBox(height: 3),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: AppColors.onBackground),
          ),
        ],
      );

  Widget _buildIcon(IconData icon, [Color? color]) => Icon(
        icon,
        size: 24,
        color: color,
      );

  IconData _getTransportIcon() {
    switch (route.transportType) {
      case TransportType.driving:
        return Icons.directions_car_outlined;
      case TransportType.walking:
        return Icons.directions_walk;
      case TransportType.cycling:
        return Icons.directions_bike_rounded;
    }
  }

  String _getCountSightsText() {
    String s = route.countSights.toString();
    int lastSymbolNumber = int.parse(s.substring(s.length - 1));
    if (lastSymbolNumber == 1) {
      return '${route.countSights} точка';
    }
    if (lastSymbolNumber > 1 && lastSymbolNumber < 5) {
      return '${route.countSights} точки';
    }
    return '${route.countSights} точек';
  }
}
