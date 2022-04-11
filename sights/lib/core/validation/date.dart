import 'base_form.dart';

enum DateFormValidationError { empty }

class DateForm extends BaseForm<DateTime?, DateFormValidationError> {
  const DateForm.pure([DateTime? value = null]) : super.pure(value);

  const DateForm.dirty([DateTime? value = null]) : super.dirty(value);


  @override
  DateFormValidationError? validator(DateTime? value) {
    if (value == null) {
      return DateFormValidationError.empty;
    }
  }
}
