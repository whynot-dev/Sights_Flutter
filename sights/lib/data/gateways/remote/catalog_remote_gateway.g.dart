// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_remote_gateway.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _CatalogRemoteGateway implements CatalogRemoteGateway {
  _CatalogRemoteGateway(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<DefaultResponse<List<MainItem>>>> getCatalog(
      {required token, accept = 'application/json'}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<DefaultResponse<List<MainItem>>>>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/catalog/categories',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DefaultResponse<List<MainItem>>.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<CompilationsItem>> getCategory(
      {required token, accept = 'application/json', required id}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<CompilationsItem>>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/catalog/categories/$id',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CompilationsItem.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<DefaultResponse<List<Banner>>>> getBanners(
      {required token, accept = 'application/json', required positions}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'position[]': positions};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<DefaultResponse<List<Banner>>>>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/banners',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DefaultResponse<List<Banner>>.fromJson(_result.data!);
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
