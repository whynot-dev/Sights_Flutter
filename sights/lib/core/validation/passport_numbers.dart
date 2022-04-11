import 'base_form.dart';

enum PassportNumberValidationError { isNotFully, empty }

class PassportNumberForm extends BaseForm<String, PassportNumberValidationError> {
  const PassportNumberForm.pure([String value = '']) : super.pure(value);

  const PassportNumberForm.dirty([String value = '']) : super.dirty(value);

  @override
  PassportNumberValidationError? validator(String value) {
    if (value.isNotEmpty != true) {
      return PassportNumberValidationError.empty;
    }

    if (value.replaceAll(' ', '').length != 10) {
      return PassportNumberValidationError.isNotFully;
    }
    return null;
  }
}