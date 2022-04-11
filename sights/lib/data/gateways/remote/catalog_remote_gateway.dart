import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sights/domain/entities/network/banner.dart';
import 'package:sights/domain/entities/network/compilations_item.dart';
import 'package:sights/domain/entities/network/main_item.dart';
import 'package:sights/domain/entities/network/response/default_response.dart';

part 'catalog_remote_gateway.g.dart';

@RestApi()
abstract class CatalogRemoteGateway {
  factory CatalogRemoteGateway({required Dio dio, String? baseUrl}) {
    final apiClient = _CatalogRemoteGateway(dio, baseUrl: baseUrl);
    return apiClient;
  }

  @GET('/catalog/categories')
  Future<HttpResponse<DefaultResponse<List<MainItem>>>> getCatalog({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
  });

  @GET('/catalog/categories/{id}')
  Future<HttpResponse<CompilationsItem>> getCategory({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Path ('id') required int id,
  });

  @GET('/banners')
  Future<HttpResponse<DefaultResponse<List<Banner>>>> getBanners({
    @Header('Authorization') required String token,
    @Header('Accept') String accept = 'application/json',
    @Query('position[]') required List<String> positions,
  });
}
