import 'package:dio/dio.dart';
import 'package:sights/domain/entities/error_body.dart';




class Failure {
  Failure._();

  factory Failure.request({int? code, String? message, Response? response, ErrorBody? errorBody}) =
      RequestFailure;

  factory Failure.network() = NetworkFailure;

  factory Failure.undefined({Exception? error}) = UndefinedFailure;
}

class RequestFailure extends Failure {
  RequestFailure({this.code, this.message, this.response,this.errorBody}) : super._();
  final int? code;
  final String? message;
  final Response? response;
  final ErrorBody? errorBody;
}

class NetworkFailure extends Failure {
  NetworkFailure() : super._();
}

class UndefinedFailure extends Failure {
  UndefinedFailure({this.error}) : super._();
  final Exception? error;
}
