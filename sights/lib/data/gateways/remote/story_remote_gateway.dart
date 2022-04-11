import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sights/domain/entities/network/response/stories_response.dart';

part 'story_remote_gateway.g.dart';

@RestApi()
abstract class StoryRemoteGateway {
  factory StoryRemoteGateway({required Dio dio, String? baseUrl}) {
    final apiClient = _StoryRemoteGateway(dio, baseUrl: baseUrl);
    return apiClient;
  }

  @GET('/stories')
  Future<HttpResponse<StoriesResponse>> getStories({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Query('limit') required int limit,
    @Query('offset') required int offset,
  });

}