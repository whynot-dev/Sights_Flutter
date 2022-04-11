import 'base_form.dart';

enum CountryValidationError { empty }

class CountryForm extends BaseForm<String, CountryValidationError> {
  const CountryForm.pure(String value) : super.pure(value);

  const CountryForm.dirty(String value) : super.dirty(value);

  @override
  CountryValidationError? validator(String value) {
    return null;
  }
}
