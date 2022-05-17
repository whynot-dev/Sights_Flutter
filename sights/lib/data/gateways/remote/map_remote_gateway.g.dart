// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_remote_gateway.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _MapRemoteGateway implements MapRemoteGateway {
  _MapRemoteGateway(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<FeatureCollectionResponse>> getFeatures(
      {lang = baseLang,
      apikey = apikey,
      required lonMin,
      required lonMax,
      required latMin,
      required latMax}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'apikey': apikey,
      r'lon_min': lonMin,
      r'lon_max': lonMax,
      r'lat_min': latMin,
      r'lat_max': latMax
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<FeatureCollectionResponse>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$lang/places/bbox',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FeatureCollectionResponse.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<Place>> getPlace(
      {lang = baseLang, required xid, apikey = apikey}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'apikey': apikey};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<Place>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$lang/places/xid/$xid',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Place.fromJson(_result.data!);
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
