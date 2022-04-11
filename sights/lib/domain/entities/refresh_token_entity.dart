import 'network/response/refresh_token_response.dart';

class RefreshTokenEntity {
  RefreshTokenEntity({
    required this.token,
    required this.refresh,
    this.type,
  });

  String token;
  String refresh;
  String? type;

  factory RefreshTokenEntity.fromResponse(RefreshTokenResponse response) => RefreshTokenEntity(
        token: response.token,
        refresh: response.refresh,
        type: response.type,
      );
}
