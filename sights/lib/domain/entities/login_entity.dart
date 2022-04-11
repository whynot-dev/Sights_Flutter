import 'network/response/login_response.dart';

class LoginEntity {
  LoginEntity({
    required this.type,
    required this.token,
  });

  String type;
  String token;

  factory LoginEntity.fromResponse(LoginResponse response) => LoginEntity(
    type: response.type,
    token: response.token,
  );
}