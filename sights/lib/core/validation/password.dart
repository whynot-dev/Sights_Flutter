import 'base_form.dart';

enum PasswordValidationError { invalid, tooShort, empty, passwordMismatch }

class PasswordForm extends BaseForm<String, PasswordValidationError> {
  const PasswordForm.pure([String value = '', this.passwordToCompare]) : super.pure(value);

  const PasswordForm.dirty([String value = '', this.passwordToCompare]) : super.dirty(value);

  final String? passwordToCompare;

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return PasswordValidationError.empty;
    }
    if (value.length < 6) {
      return PasswordValidationError.tooShort;
    }
    if (passwordToCompare != null && value != passwordToCompare) {
      return PasswordValidationError.passwordMismatch;
    }

    return null;

    // if (_passwordRegex.hasMatch(value)) {
    //   return null;
    // } else {
    //   return PasswordValidationError.invalid;
    // }
  }
}
