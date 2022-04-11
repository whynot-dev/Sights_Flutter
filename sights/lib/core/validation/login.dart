import 'base_form.dart';

enum LoginValidationError { invalid, empty }

class Login extends BaseForm<String, LoginValidationError> {
  const Login.pure([String value = '']) : super.pure(value);

  const Login.dirty([String value = '']) : super.dirty(value);

  @override
  LoginValidationError? validator(String value) {
    if (value.isEmpty) {
      return LoginValidationError.empty;
    }
    return null;
  }
}
