import 'base_form.dart';

enum NameValidationError { invalid, empty }

class NameForm extends BaseForm<String, NameValidationError> {
  const NameForm.pure([String value = '']) : super.pure(value);

  const NameForm.dirty([String value = '']) : super.dirty(value);

  static final _regex = RegExp(r'''^(?=.{1,40}$)[a-zA-Zа-яА-Я]+(?:[-' ][a-zA-Zа-яА-Я]+)*$''');

  @override
  NameValidationError? validator(String value) {
    if (value.isEmpty) {
      return NameValidationError.empty;
    }

    if (_regex.hasMatch(value.trim())) {
      return null;
    } else {
      return NameValidationError.invalid;
    }
  }
}
