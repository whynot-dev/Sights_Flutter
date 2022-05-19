import 'package:flutter/cupertino.dart';
import 'package:sights/localization/app_localizations.dart';

enum SightType {
  monument,
  historicalPlace,
  religion,
  museum,
  zoo,
  theatre,
  square,
  sculpture,
  fountain,
  park,
  natural,
  historicBuilding,
  architecture,
}

extension SightTypeExtension on SightType {
  String getName(BuildContext context, {bool isNotPlural = true}) {
    switch (this) {
      case SightType.monument:
        return isNotPlural ? AppLocalizations.of(context).monument : AppLocalizations.of(context).monuments;
      case SightType.historicalPlace:
        return isNotPlural ? AppLocalizations.of(context).historicalPlace : AppLocalizations.of(context).historicalPlaces;
      case SightType.religion:
        return isNotPlural ? AppLocalizations.of(context).religion : AppLocalizations.of(context).religions;
      case SightType.museum:
        return isNotPlural ? AppLocalizations.of(context).museum : AppLocalizations.of(context).museums;
      case SightType.zoo:
        return isNotPlural ? AppLocalizations.of(context).zoo : AppLocalizations.of(context).zoos;
      case SightType.theatre:
        return isNotPlural ? AppLocalizations.of(context).theatre : AppLocalizations.of(context).theatres;
      case SightType.square:
        return isNotPlural ? AppLocalizations.of(context).square : AppLocalizations.of(context).squares;
      case SightType.sculpture:
        return isNotPlural ? AppLocalizations.of(context).sculpture : AppLocalizations.of(context).sculptures;
      case SightType.fountain:
        return isNotPlural ? AppLocalizations.of(context).fountain : AppLocalizations.of(context).fountains;
      case SightType.park:
        return isNotPlural ? AppLocalizations.of(context).park : AppLocalizations.of(context).parks;
      case SightType.natural:
        return AppLocalizations.of(context).natural;
      case SightType.historicBuilding:
        return isNotPlural
            ? AppLocalizations.of(context).historicBuilding
            : AppLocalizations.of(context).historicBuildings;
      case SightType.architecture:
        return AppLocalizations.of(context).architecture;
    }
  }
}
