import 'base_form.dart';

enum DefaultFormValidationError { invalid, empty }

class DefaultForm extends BaseForm<String, DefaultFormValidationError> {
  const DefaultForm.pure([String value = '']) : super.pure(value);

  const DefaultForm.dirty([String value = '']) : super.dirty(value);

  static final _regex = RegExp(r'[0-9-a-zA-Zа-яА-Я ]+$');

  @override
  DefaultFormValidationError? validator(String value) {
    if (value.isEmpty) {
      return DefaultFormValidationError.empty;
    }
    if (_regex.hasMatch(value)) {
      return null;
    } else {
      return DefaultFormValidationError.invalid;
    }
  }
}
