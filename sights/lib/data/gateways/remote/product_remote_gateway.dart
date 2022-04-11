import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sights/domain/entities/network/product.dart';

part 'product_remote_gateway.g.dart';

@RestApi()
abstract class ProductRemoteGateway {
  factory ProductRemoteGateway({required Dio dio, String? baseUrl}) {
    final apiClient = _ProductRemoteGateway(dio, baseUrl: baseUrl);
    return apiClient;
  }

  @GET('/catalog/item/{id}')
  Future<HttpResponse<Product>> getProduct({
    @Header('Authorization') required String token,
    @Path ('id') required String id,
  });

}
