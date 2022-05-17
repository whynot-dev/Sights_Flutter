import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:sights/core/enums/gender.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/core/network/network_info.dart';
import 'package:sights/core/repositories/base_repository.dart';



class ProfileRepository extends BaseRepository {
  ProfileRepository(
    NetworkInfo networkInfo) : super(networkInfo);





  // Future<Either<dynamic, Failure>> getProfile({
  //   required String token,
  // }) async {
  //   try {
  //     var result = await sendRequest(
  //       profileRemoteGateway.getProfile(
  //         token: token,
  //       ),
  //     );
  //     return result.fold(
  //       (response) => Left(ProfileEntity.fromResponse(response)),
  //       (error) => Right(error),
  //     );
  //   } on Exception catch (e) {
  //     return Right(Failure.undefined(error: e));
  //   }
  // }



}
