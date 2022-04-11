import 'base_form.dart';

enum UserNameValidationError { invalid, empty }

class UserName extends BaseForm<String, UserNameValidationError> {
  const UserName.pure() : super.pure('');

  const UserName.dirty([String value = '']) : super.dirty(value);

  static final _nameRegex = RegExp(r'[0-9-a-zA-Zа-яА-Я]+$');

  @override
  UserNameValidationError? get error => pure ? null : super.error;

  @override
  UserNameValidationError? validator(String value) {
    if (value.isEmpty) {
      return UserNameValidationError.empty;
    }
    if (_nameRegex.hasMatch(value)) {
      return null;
    } else {
      return UserNameValidationError.invalid;
    }
  }
}
