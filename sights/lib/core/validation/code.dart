import 'base_form.dart';

enum CodeValidationError { tooShort, empty }

class CodeForm extends BaseForm<int?, CodeValidationError> {
  const CodeForm.pure([int? value]) : super.pure(value);

  const CodeForm.dirty([int? value]) : super.dirty(value);

  @override
  CodeValidationError? validator(int? value) {
    if (value == null) {
      return CodeValidationError.empty;
    }
    if (value.toString().length < 4) {
      return CodeValidationError.tooShort;
    }
    return null;
  }
}
