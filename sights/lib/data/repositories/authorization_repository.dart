import 'package:dartz/dartz.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/core/network/network_info.dart';
import 'package:sights/core/repositories/base_repository.dart';
import 'package:sights/data/gateways/remote/authorization_remote_gateway.dart';
import 'package:sights/domain/entities/login_entity.dart';
import 'package:sights/domain/entities/network/request/check_code_body.dart';
import 'package:sights/domain/entities/network/request/login_body.dart';
import 'package:sights/domain/entities/network/request/recovery_password_body.dart';
import 'package:sights/domain/entities/network/request/token_body.dart';
import 'package:sights/domain/entities/network/response/check_code_response.dart';
import 'package:sights/domain/entities/refresh_token_entity.dart';

class AuthorizationRepository extends BaseRepository {
  AuthorizationRepository(
    NetworkInfo networkInfo, {
    required this.authorizationRemoteGateway,
  }) : super(networkInfo);

  AuthorizationRemoteGateway authorizationRemoteGateway;

  Future<Either<LoginEntity, Failure>> login({
    required String username,
    String? password,
  }) async {
    try {
      var result = await sendRequest(authorizationRemoteGateway.login(
        body: LoginBody(
          username: username,
          password: password,
        ),
      ));
      return result.fold(
        (response) => Left(LoginEntity.fromResponse(response)),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<CheckCodeResponse, Failure>> checkCode({
    required String token,
    required String code,
  }) async {
    try {
      var result = await sendRequest(
        authorizationRemoteGateway.checkCode(
          body: CheckCodeBody(
            token: token,
            code: code,
          ),
        ),
      );
      return result.fold(
        (response) => Left(response),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<dynamic, Failure>> resendCode({
    required String token,
  }) async {
    try {
      var result = await sendRequest(authorizationRemoteGateway.resendCode(
        body: TokenBody(token: token),
      ));
      return result.fold(
        (response) => Left(response),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<dynamic, Failure>> recoveryPassword({
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      var result = await sendRequest(authorizationRemoteGateway.recoveryPassword(
        body: RecoveryPasswordBody(password: password, passwordConfirmation: passwordConfirmation),
      ));
      return result.fold(
        (response) => Left(response),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

  Future<Either<RefreshTokenEntity, Failure>> refreshToken({
    required String refreshToken,
  }) async {
    try {
      var result = await sendRequest(
        authorizationRemoteGateway.refreshToken(refreshToken: refreshToken),
      );
      return result.fold(
        (response) => Left(RefreshTokenEntity.fromResponse(response)),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }
}
