import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/navigation/navigation_type.dart';
import 'package:sights/app/presentation/screens/enter_number/bloc/enter_number_bloc.dart';
import 'package:sights/app/presentation/screens/enter_number/enter_number_screen.dart';
import 'package:sights/data/gateways/local/preferences_local_gateway.dart';
import 'package:sights/data/gateways/remote/authorization_remote_gateway.dart';
import 'package:sights/di/injection.dart';


class DioHelper {
  static const baseUrl = 'https://api.opentripmap.com/0.1/';

  static const filesPath = '/files/';
  static const timeout = 30000;

  static Dio getAuthDio() {
    return Dio()
      ..interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ))
      ..options.receiveDataWhenStatusError = true
      ..options.baseUrl = baseUrl
      ..options.sendTimeout = timeout
      ..options.connectTimeout = timeout
      ..options.receiveTimeout = timeout;
  }

  static Dio getDio({
    required PreferencesLocalGateway preferencesLocalGateway,
    required GlobalKey<NavigatorState> navigatorKey,
  }) {
    Dio dio = Dio()
      ..interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ))
      ..options.receiveDataWhenStatusError = true
      ..options.baseUrl = baseUrl
      ..options.sendTimeout = timeout
      ..options.connectTimeout = timeout
      ..options.receiveTimeout = timeout;
    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {
          handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) async {
          handler.next(response);
        },
        onError: (DioError error, ErrorInterceptorHandler handler) async {
          if (error.response?.statusCode == 401 ||
              (error.response?.data.toString().contains('Unauthenticated') ?? false)) {
            String? refreshToken = await preferencesLocalGateway.getRefreshToken();
            String routeName =
                NavigateAction.navigateToEnterPhoneNumber(NavigateType.pushReplacement).runtimeType.toString();
            if (refreshToken != null) {
              try {
                // HttpResponse<RefreshTokenResponse> newTokenResponse = await authorizationRemoteGateway.refreshToken(
                //   refreshToken: refreshToken,
                // );
                // String newToken = newTokenResponse.data.token;
                // String newRefreshToken = newTokenResponse.data.refresh;
                // await preferencesLocalGateway.setToken(newToken);
                // await preferencesLocalGateway.setRefreshToken(newRefreshToken);
                Options options = Options(
                  method: error.requestOptions.method,
                  headers: error.requestOptions.headers,
                );
                String? token = await preferencesLocalGateway.getToken();
                options.headers!['Authorization'] = token;
                return handler.resolve(await dio.request(error.requestOptions.path, options: options));
              } on DioError catch (error) {
                if (error.response?.statusCode == 401 ||
                    (error.response?.data.toString().contains('Unauthenticated.') ?? false)) {
                  preferencesLocalGateway.setToken(null);
                  navigatorKey.currentState!.pushReplacement(
                    MaterialPageRoute(
                      settings: RouteSettings(name: routeName),
                      builder: (BuildContext context) => BlocProvider(
                        create: (BuildContext context) => EnterNumberBloc(
                          preferencesLocalGateway: injection(),
                        ),
                        child: EnterNumberScreen(),
                      ),
                    ),
                  );
                }
              }
            } else {
              navigatorKey.currentState!.pushReplacement(
                MaterialPageRoute(
                  settings: RouteSettings(name: routeName),
                  builder: (BuildContext context) => BlocProvider(
                    create: (BuildContext context) => EnterNumberBloc(
                      //authorizationRepository: injection(),
                      preferencesLocalGateway: injection(),
                    ),
                    child: EnterNumberScreen(),
                  ),
                ),
              );
            }
          } else {
            handler.next(error);
          }
        },
      ),
    );
    return dio;
  }
}
