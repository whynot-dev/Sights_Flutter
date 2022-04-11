// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_remote_gateway.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ProfileRemoteGateway implements ProfileRemoteGateway {
  _ProfileRemoteGateway(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<SimpleResponse>> createProfile(
      {required token, accept = 'application/json', required body}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<SimpleResponse>>(Options(
                method: 'POST',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/profile',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SimpleResponse.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<SimpleResponse>> verifyProfile(
      {required token,
      accept = 'application/json',
      required type,
      required document}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('type', type));
    _data.files.add(MapEntry(
        'document',
        MultipartFile.fromFileSync(document.path,
            filename: document.path.split(Platform.pathSeparator).last)));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<SimpleResponse>>(Options(
                method: 'POST',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/profile/verification',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SimpleResponse.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<Profile>> getProfile(
      {required token, accept = 'application/json'}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<Profile>>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/profile',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Profile.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<SimpleResponse>> updateProfilePhoto(
      {required token, accept = 'application/json', required document}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = FormData();
    _data.files.add(MapEntry(
        'document',
        MultipartFile.fromFileSync(document.path,
            filename: document.path.split(Platform.pathSeparator).last)));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<SimpleResponse>>(Options(
                method: 'POST',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/profile/photo',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SimpleResponse.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<SimpleResponse>> updateProfileEmail(
      {required token, accept = 'application/json', required emailBody}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(emailBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<SimpleResponse>>(Options(
                method: 'POST',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/profile/ch-email',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SimpleResponse.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<SimpleResponse>> newAddress(
      {required token,
      accept = 'application/json',
      required saveAddressBody}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(saveAddressBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<SimpleResponse>>(Options(
                method: 'POST',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/profile/address',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SimpleResponse.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<SimpleResponse>> updateAddress(
      {required token,
      accept = 'application/json',
      required id,
      required saveAddressBody}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(saveAddressBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<SimpleResponse>>(Options(
                method: 'POST',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/profile/address/update/$id',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SimpleResponse.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<SimpleResponse>> deleteAddress(
      {required token, accept = 'application/json', required id}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<SimpleResponse>>(Options(
                method: 'POST',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/profile/address/destroy/$id',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SimpleResponse.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<SimpleResponse>> setDefaultAddress(
      {required token, accept = 'application/json', required id}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<SimpleResponse>>(Options(
                method: 'POST',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/profile/address/default/$id',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SimpleResponse.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<DefaultResponse<List<PickupPoint>>>> getPickupPoints(
      {required token,
      accept = 'application/json',
      id,
      required pointOneLat,
      required pointOneLong,
      required pointTwoLat,
      required pointTwoLong}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'id': id,
      r'point1[lat]': pointOneLat,
      r'point1[long]': pointOneLong,
      r'point2[lat]': pointTwoLat,
      r'point2[long]': pointTwoLong
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<DefaultResponse<List<PickupPoint>>>>(
            Options(
                    method: 'GET',
                    headers: <String, dynamic>{
                      r'Authorization': token,
                      r'Accept': accept
                    },
                    extra: _extra)
                .compose(_dio.options, '/points',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DefaultResponse<List<PickupPoint>>.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<List<City>>> getCities(
      {required token, accept = 'application/json'}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<HttpResponse<List<City>>>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Authorization': token,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/cities',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => City.fromJson(i as Map<String, dynamic>))
        .toList();
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
