import 'package:dartz/dartz.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/core/network/network_info.dart';
import 'package:sights/core/repositories/base_repository.dart';
import 'package:sights/data/gateways/remote/map_remote_gateway.dart';
import 'package:sights/domain/entities/network/request/get_features_body.dart';
import 'package:sights/domain/entities/network/response/feature_collection_response.dart';
import 'package:sights/domain/entities/place.dart';

class MapRepository extends BaseRepository {
  MapRepository(
    NetworkInfo networkInfo, {
    required this.mapRemoteGateway,
  }) : super(networkInfo);

  MapRemoteGateway mapRemoteGateway;

  Future<Either<FeatureCollectionResponse, Failure>> getFeatures({
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
        (response) => Left(response),
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
}
