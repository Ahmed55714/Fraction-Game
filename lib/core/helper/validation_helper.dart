import '../constants/lang_keys.dart';

class FormValidation {
  static String? getRequiredFieldErrorMessage(String field,
      {String? customErrorMessage}) {
    if (field.isEmpty) {
      return customErrorMessage ?? LangKeys.fieldRequired;
    }
    return null;
  }

 
}
