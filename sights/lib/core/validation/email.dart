import 'base_form.dart';

enum EmailValidationError { invalid, empty }

class EmailForm extends BaseForm<String, EmailValidationError> {
  const EmailForm.pure([String value = '']) : super.pure(value);

  const EmailForm.dirty([String value = '']) : super.dirty(value);

  static final _regex = RegExp(
      r'^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  @override
  EmailValidationError? validator(String value) {
    if (value.isEmpty) {
      return null;
    }

    if (_regex.hasMatch(value)) {
      return null;
    } else {
      return EmailValidationError.invalid;
    }
  }
}
