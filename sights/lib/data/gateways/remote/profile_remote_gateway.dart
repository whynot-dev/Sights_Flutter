import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sights/domain/entities/network/city.dart';
import 'package:sights/domain/entities/network/pickup_point.dart';
import 'package:sights/domain/entities/network/profile.dart';
import 'package:sights/domain/entities/network/request/change_email_body.dart';
import 'package:sights/domain/entities/network/request/create_profile_body.dart';
import 'package:sights/domain/entities/network/request/save_address_body.dart';
import 'package:sights/domain/entities/network/response/default_response.dart';
import 'package:sights/domain/entities/network/response/simple_response.dart';

part 'profile_remote_gateway.g.dart';

@RestApi()
abstract class ProfileRemoteGateway {
  factory ProfileRemoteGateway({required Dio dio, String? baseUrl}) {
    final apiClient = _ProfileRemoteGateway(dio, baseUrl: baseUrl);
    return apiClient;
  }

  @POST('/profile')
  Future<HttpResponse<SimpleResponse>> createProfile({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Body() required CreateProfileBody body,
  });

  @POST('/profile/verification')
  Future<HttpResponse<SimpleResponse>> verifyProfile({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Part() required String type,
    @Part(name: 'document') required File document,
  });

  @GET('/profile')
  Future<HttpResponse<Profile>> getProfile({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
  });

  @POST('/profile/photo')
  Future<HttpResponse<SimpleResponse>> updateProfilePhoto({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Part() required File document,
  });

  @POST('/profile/ch-email')
  Future<HttpResponse<SimpleResponse>> updateProfileEmail({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Body() required ChangeEmailBody emailBody,
  });

  @POST('/profile/address')
  Future<HttpResponse<SimpleResponse>> newAddress({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Body() required SaveAddressBody saveAddressBody,
  });

  @POST('/profile/address/update/{id}')
  Future<HttpResponse<SimpleResponse>> updateAddress({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Path('id') required int id,
    @Body() required SaveAddressBody saveAddressBody,
  });

  @POST('/profile/address/destroy/{id}')
  Future<HttpResponse<SimpleResponse>> deleteAddress({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Path('id') required int id,
  });

  @POST('/profile/address/default/{id}')
  Future<HttpResponse<SimpleResponse>> setDefaultAddress({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Path('id') required int id,
  });

  @GET('/points')
  Future<HttpResponse<DefaultResponse<List<PickupPoint>>>> getPickupPoints({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Query('id') String? id,
    @Query('point1[lat]') required String pointOneLat,
    @Query('point1[long]') required String pointOneLong,
    @Query('point2[lat]') required String pointTwoLat,
    @Query('point2[long]') required String pointTwoLong,
  });

  @GET('/cities')
  Future<HttpResponse<List<City>>> getCities({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
  });
}
