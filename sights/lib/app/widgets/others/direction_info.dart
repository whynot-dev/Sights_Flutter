import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/domain/entities/direction.dart';
import 'package:sights/domain/enums/transport_type.dart';

class DirectionInfo extends StatelessWidget {
  const DirectionInfo({
    required this.direction,
    required this.countSightsInRoute,
    required this.transportType,
    this.isSaved = false,
    this.saveClicked,
    this.closeClicked,
  });

  final Direction direction;
  final int countSightsInRoute;
  final bool isSaved;
  final TransportType transportType;
  final VoidCallback? saveClicked;
  final VoidCallback? closeClicked;

  @override
  Widget build(BuildContext context) => Material(
        elevation: 5,
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        child: Container(
          padding: const EdgeInsets.only(top: 38, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTime(),
              _buildCountSights(),
              _buildLengthRoute(),
              _buildSaveButton(),
              _buildCloseButton(),
            ],
          ),
        ),
      );

  Widget _buildTime() =>
      _buildIconAndText(Icons.access_time_filled, '${Duration(seconds: direction.duration.toInt()).inMinutes} мин.');

  Widget _buildCountSights() => _buildIconAndText(Icons.account_balance_outlined, _getCountSightsText());

  Widget _buildLengthRoute() => _buildIconAndText(_getTransportIcon(), '${direction.distance.toInt()} м');

  Widget _buildSaveButton() => GestureDetector(
        onTap: saveClicked,
        child: isSaved ? _buildIcon(Icons.check, Colors.green) : _buildIcon(Icons.save),
      );

  Widget _buildCloseButton() => GestureDetector(
        onTap: closeClicked,
        child: _buildIcon(Icons.close),
      );

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
    switch (transportType) {
      case TransportType.driving:
        return Icons.directions_car_outlined;
      case TransportType.walking:
        return Icons.directions_walk;
      case TransportType.cycling:
        return Icons.directions_bike_rounded;
    }
  }

  String _getCountSightsText() {
    String s = countSightsInRoute.toString();
    int lastSymbolNumber = int.parse(s.substring(s.length - 1));
    if (lastSymbolNumber == 1) {
      return '$countSightsInRoute точка';
    }
    if (lastSymbolNumber > 1 && lastSymbolNumber < 5) {
      return '$countSightsInRoute точки';
    }
    return '$countSightsInRoute точек';
  }
}
