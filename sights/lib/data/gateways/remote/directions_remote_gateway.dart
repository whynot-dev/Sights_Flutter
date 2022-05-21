import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sights/domain/entities/network/response/direction_response.dart';
import 'package:sights/domain/entities/network/response/feature_collection_response.dart';
import 'package:sights/domain/entities/place.dart';

part 'directions_remote_gateway.g.dart';

const String apikey = 'pk.eyJ1Ijoid2h5bm90LWRldiIsImEiOiJjbDJjNzQ0b2YwYmJiM2ludW5zbnkxeDl3In0.o-EIeXtpZ9rQvjd_jk_snA';

@RestApi()
abstract class DirectionsRemoteGateway {
  factory DirectionsRemoteGateway({required Dio dio, String? baseUrl}) {
    final apiClient = _DirectionsRemoteGateway(dio, baseUrl: baseUrl);
    return apiClient;
  }

  @GET('mapbox/{profile}/{coordinates}')
  Future<HttpResponse<DirectionResponse>> buildRoute({
    @Path() required String profile,
    @Path() required String coordinates,
    @Query('access_token') String apikey = apikey,
  });
}
