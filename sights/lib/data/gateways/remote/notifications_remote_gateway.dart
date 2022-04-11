import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sights/domain/entities/network/notification.dart';
import 'package:sights/domain/entities/network/response/default_response.dart';
import 'package:sights/domain/entities/network/response/pagination_response.dart';

part 'notifications_remote_gateway.g.dart';

@RestApi()
abstract class NotificationsRemoteGateway {

  factory NotificationsRemoteGateway({required Dio dio, String? baseUrl}) {
    final apiClient = _NotificationsRemoteGateway(dio, baseUrl: baseUrl);
    return apiClient;
  }


  @GET('/notification')
  Future<HttpResponse<PaginationResponse<Notification>>> getNotifications({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Query('offset') required int offset,
    @Query('limit') required int limit,
  });

  @GET('/notification/read')
  Future<HttpResponse<DefaultResponse>> readNotifications({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Query('id') required List<int> ids,
  });

}