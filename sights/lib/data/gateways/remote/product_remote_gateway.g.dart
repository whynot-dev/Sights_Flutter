// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_remote_gateway.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ProductRemoteGateway implements ProductRemoteGateway {
  _ProductRemoteGateway(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<Product>> getProduct(
      {required token, required id}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<Product>>(Options(
                method: 'GET',
                headers: <String, dynamic>{r'Authorization': token},
                extra: _extra)
            .compose(_dio.options, '/catalog/item/$id',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Product.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
