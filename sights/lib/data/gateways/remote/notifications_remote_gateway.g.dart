// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_remote_gateway.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _NotificationsRemoteGateway implements NotificationsRemoteGateway {
  _NotificationsRemoteGateway(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<PaginationResponse<Notification>>> getNotifications(
      {required token,
      accept = 'application/json',
      required offset,
      required limit}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'offset': offset,
      r'limit': limit
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<PaginationResponse<Notification>>>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/notification',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaginationResponse<Notification>.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<DefaultResponse<dynamic>>> readNotifications(
      {required token, accept = 'application/json', required ids}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'id': ids};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<DefaultResponse<dynamic>>>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/notification/read',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DefaultResponse<dynamic>.fromJson(_result.data!);
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
