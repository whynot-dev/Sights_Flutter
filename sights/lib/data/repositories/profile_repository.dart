import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:sights/core/enums/gender.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/core/network/network_info.dart';
import 'package:sights/core/repositories/base_repository.dart';
import 'package:sights/data/gateways/remote/profile_remote_gateway.dart';
import 'package:sights/domain/entities/network/authorization_address.dart';
import 'package:sights/domain/entities/network/city.dart';
import 'package:sights/domain/entities/network/document.dart';
import 'package:sights/domain/entities/network/request/change_email_body.dart';
import 'package:sights/domain/entities/network/request/create_profile_body.dart';
import 'package:sights/domain/entities/network/request/save_address_body.dart';
import 'package:sights/domain/entities/pickup_point_entity.dart';
import 'package:sights/domain/entities/profile_entity.dart';

class ProfileRepository extends BaseRepository {
  ProfileRepository(
    NetworkInfo networkInfo, {
    required this.profileRemoteGateway,
  }) : super(networkInfo);

  ProfileRemoteGateway profileRemoteGateway;

  Future<Either<dynamic, Failure>> createProfile({
    required String token,
    required String name,
    required String secondName,
    required String surname,
    required DateTime dateOfBirth,
    required Gender gender,
    required String phone,
    required String email,
    required String numberSeries,
    required String issuedByWhom,
    required DateTime issueDate,
    required String registrationCity,
    required String registrationStreet,
    required String registrationHouse,
    required String registrationFlat,
    required String residentialCity,
    required String residentialStreet,
    required String residentialHouse,
    required String residentialFlat,
  }) async {
    try {
      var result = await sendRequest(
        profileRemoteGateway.createProfile(
          token: token,
          body: CreateProfileBody(
            lastName: surname,
            firstName: name,
            middleName: secondName,
            birthday: dateOfBirth,
            gender: (gender == Gender.man) ? 'male' : 'female',
            email: email,
            documents: [
              Document(
                type: 'passport',
                number: numberSeries.substring(5, 11),
                serial: numberSeries.substring(0, 4),
                issued_by: issuedByWhom,
                when_issued: issueDate,
              )
            ],
            address: [
              AuthorizationAddress(
                type: 'registration',
                city: registrationCity,
                street: registrationStreet,
                house: registrationHouse,
                apartment: registrationFlat,
              ),
              AuthorizationAddress(
                type: 'residence',
                city: residentialCity,
                street: residentialStreet,
                house: residentialHouse,
                apartment: residentialFlat,
              ),
            ],
          ),
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

  Future<Either<dynamic, Failure>> verifyProfile({
    required String token,
    required String type,
    required File document,
  }) async {
    try {
      var result = await sendRequest(
        profileRemoteGateway.verifyProfile(
          token: token,
          type: type,
          document: document,
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

  Future<Either<dynamic, Failure>> getProfile({
    required String token,
  }) async {
    try {
      var result = await sendRequest(
        profileRemoteGateway.getProfile(
          token: token,
        ),
      );
      return result.fold(
        (response) => Left(ProfileEntity.fromResponse(response)),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<bool, Failure>> updateProfilePhoto({
    required String token,
    required File image,
  }) async {
    try {
      var result = await sendRequest(
        profileRemoteGateway.updateProfilePhoto(
          token: token,
          document: image,
        ),
      );
      return result.fold(
        (response) => Left(response.success),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<bool, Failure>> updateProfileEmail({
    required String token,
    required String email,
  }) async {
    try {
      var result = await sendRequest(
        profileRemoteGateway.updateProfileEmail(
          token: token,
          emailBody: ChangeEmailBody(email: email),
        ),
      );
      return result.fold(
        (response) => Left(response.success),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<bool, Failure>> newAddress({
    required String token,
    required SaveAddressBody saveAddressBody,
  }) async {
    try {
      var result = await sendRequest(
        profileRemoteGateway.newAddress(
          token: token,
          saveAddressBody: saveAddressBody,
        ),
      );
      return result.fold(
        (response) => Left(response.success),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<bool, Failure>> updateAddress({
    required String token,
    required int idAddress,
    required SaveAddressBody saveAddressBody,
  }) async {
    try {
      var result = await sendRequest(
        profileRemoteGateway.updateAddress(
          token: token,
          id: idAddress,
          saveAddressBody: saveAddressBody,
        ),
      );
      return result.fold(
        (response) => Left(response.success),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<bool, Failure>> deleteAddress({
    required String token,
    required int idAddress,
  }) async {
    try {
      var result = await sendRequest(
        profileRemoteGateway.deleteAddress(
          token: token,
          id: idAddress,
        ),
      );
      return result.fold(
        (response) => Left(response.success),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<bool, Failure>> setDefaultAddress({
    required String token,
    required int idAddress,
  }) async {
    try {
      var result = await sendRequest(
        profileRemoteGateway.setDefaultAddress(
          token: token,
          id: idAddress,
        ),
      );
      return result.fold(
        (response) => Left(response.success),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<List<PickupPointEntity>, Failure>> getPickupPoints({
    required String token,
    String? id,
    required Point pointOne,
    required Point pointTwo,
  }) async {
    try {
      var result = await sendRequest(
        profileRemoteGateway.getPickupPoints(
          token: token,
          id: id,
          pointOneLat: pointOne.latitude.toString(),
          pointOneLong: pointOne.longitude.toString(),
          pointTwoLat: pointTwo.latitude.toString(),
          pointTwoLong: pointTwo.longitude.toString(),
        ),
      );
      return result.fold(
        (response) => Left(response.data?.map((pickupPoint) => PickupPointEntity.fromResponse(pickupPoint)).toList()),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<List<City>, Failure>> getCities({
    required String token,
  }) async {
    try {
      var result = await sendRequest(
        profileRemoteGateway.getCities(token: token),
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
