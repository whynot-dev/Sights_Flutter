import 'base_form.dart';

enum CityValidationError { invalid, empty }

class City extends BaseForm<String, CityValidationError> {
  const City.pure([String value = '']) : super.pure(value);

  const City.dirty([String value = '']) : super.dirty(value);

  @override
  CityValidationError? validator(String value) {
    if (value.isEmpty) {
      return CityValidationError.empty;
    }
    return null;
  }
}
