import 'package:dartz/dartz.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/core/network/network_info.dart';
import 'package:sights/core/repositories/base_repository.dart';
import 'package:sights/data/gateways/remote/map_remote_gateway.dart';
import 'package:sights/domain/entities/feature.dart';
import 'package:sights/domain/entities/network/request/get_features_body.dart';
import 'package:sights/domain/entities/network/response/feature_collection_response.dart';
import 'package:sights/domain/entities/place.dart';
import 'package:sights/domain/entities/sight_entity.dart';
import 'package:sights/domain/enums/sight_type.dart';

class MapRepository extends BaseRepository {
  MapRepository(
    NetworkInfo networkInfo, {
    required this.mapRemoteGateway,
  }) : super(networkInfo);

  MapRemoteGateway mapRemoteGateway;

  Future<Either<List<SightEntity>, Failure>> getSights({
    required GetFeaturesBody body,
  }) async {
    try {
      var result = await sendRequest(
        mapRemoteGateway.getFeatures(
          lonMin: body.lonMin,
          lonMax: body.lonMax,
          latMin: body.latMin,
          latMax: body.latMax,
        ),
      );
      return result.fold(
        (response) => Left(_getSightEntities(response.features)),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<Place, Failure>> getPlace({
    required String xid,
  }) async {
    try {
      var result = await sendRequest(
        mapRemoteGateway.getPlace(
          xid: xid,
        ),
      );
      return result.fold(
        (response) => Left(response),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  List<SightEntity> _getSightEntities(List<Feature> features) {
    List<SightEntity> sights = [];
    for (int i = 0; i < features.length; i++) {
      SightType? sightType = _getSightType(features[i].properties.kinds);
      if (sightType != null) {
        sights.add(SightEntity(feature: features[i], sightType: sightType));
      }
    }
    return sights;
  }

  SightType? _getSightType(String kind) {
    List<String> kinds = kind.split(',');

    if (kinds.contains('historic') && kinds.contains('monuments_and_memorials')) {
      return SightType.monument;
    }

    if (kinds.contains('historic') && kinds.contains('historical_places')) {
      return SightType.historicalPlace;
    }

    if (kinds.contains('religion')) {
      return SightType.religion;
    }

    if (kinds.contains('cultural') && kinds.contains('museums') && kinds.contains('zoos')) {
      return SightType.zoo;
    }
    if (kinds.contains('cultural') && kinds.contains('museums')) {
      return SightType.museum;
    }

    if (kinds.contains('cultural') && kinds.contains('theatres_and_entertainments') && kinds.contains('cinemas')) {
      return null;
    }
    if (kinds.contains('cultural') && kinds.contains('theatres_and_entertainments')) {
      return SightType.theatre;
    }

    if (kinds.contains('cultural') && kinds.contains('urban_environment') && kinds.contains('squares')) {
      return SightType.square;
    }
    if (kinds.contains('cultural') && kinds.contains('urban_environment') && kinds.contains('installation')) {
      return SightType.sculpture;
    }
    if (kinds.contains('cultural') && kinds.contains('urban_environment') && kinds.contains('sculptures')) {
      return SightType.sculpture;
    }
    if (kinds.contains('cultural') && kinds.contains('urban_environment') && kinds.contains('gardens_and_parks')) {
      return SightType.park;
    }
    if (kinds.contains('cultural') && kinds.contains('urban_environment') && kinds.contains('fountains')) {
      return SightType.fountain;
    }

    if (kinds.contains('architecture') && kinds.contains('historic_architecture')) {
      return SightType.historicBuilding;
    }
    if (kinds.contains('architecture')) {
      return SightType.architecture;
    }

    if (kinds.contains('natural')) {
      return SightType.natural;
    }

    return null;
  }
}
