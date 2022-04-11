// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_remote_gateway.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _StoryRemoteGateway implements StoryRemoteGateway {
  _StoryRemoteGateway(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<StoriesResponse>> getStories(
      {required token,
      accept = 'application/json',
      required limit,
      required offset}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'offset': offset
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<StoriesResponse>>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/stories',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = StoriesResponse.fromJson(_result.data!);
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
