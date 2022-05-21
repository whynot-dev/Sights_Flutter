// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directions_remote_gateway.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _DirectionsRemoteGateway implements DirectionsRemoteGateway {
  _DirectionsRemoteGateway(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<DirectionResponse>> buildRoute(
      {required profile, required coordinates, apikey = apikey}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'access_token': apikey};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<DirectionResponse>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'mapbox/$profile/$coordinates',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DirectionResponse.fromJson(_result.data!);
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
