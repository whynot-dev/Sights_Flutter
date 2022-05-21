import 'package:dartz/dartz.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/core/network/network_info.dart';
import 'package:sights/core/repositories/base_repository.dart';
import 'package:sights/data/gateways/remote/directions_remote_gateway.dart';
import 'package:sights/domain/entities/direction.dart';

class DirectionsRepository extends BaseRepository {
  DirectionsRepository(
    NetworkInfo networkInfo, {
    required this.directionsRemoteGateway,
  }) : super(networkInfo);

  DirectionsRemoteGateway directionsRemoteGateway;

  Future<Either<Direction, Failure>> buildRoute({
    required String profile,
    required String coordinates,
  }) async {
    try {
      var result = await sendRequest(
        directionsRemoteGateway.buildRoute(
          profile: profile,
          coordinates: coordinates,
        ),
      );
      return result.fold(
        (response) => Left(response.routes[0]),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }
}
