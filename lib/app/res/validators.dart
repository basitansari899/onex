import 'package:get/get.dart';

class Validator {
  // static const _urlPattern =
  //     r"^((((H|h)(T|t)|(F|f))(T|t)(P|p)((S|s)?))\://)?(www.|[a-zA-Z0-9])[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,6}(\:[0-9]{1,5})*(/($|[a-zA-Z0-9\.\,\;\?\'\\\+&amp;%\$#\=~_\-]+))*$";

  /// phone Pattern '^\+[1-9]\d{10,14}$'
  static const _phoneNumberPattern = r'^\+[1-9]\d{1,14}$';

  static const _alphanumericPattern = r'^[a-zA-Z0-9 &\-]+$';

  // static const _alphabetPattern = '[a-zA-Z]';
  //
  // static const _numericPattern = '[0-9]';

  // static const _referralCodePattern = r'^[A-Za-z0-9]{1,32}$';

  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email field required'; //XString.label_email_field_required;
    }

    return _emailFormatValidator(value);
  }

  static String? emailOptionalValidator(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    return _emailFormatValidator(value);
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password field required'; //XString.label_password_field_required;
    }

    // final hasDigits = value.contains(RegExp(_numericPattern));
    // final hasCharacters = value.contains(RegExp(_alphabetPattern));
    final hasMinLength = value.length >= 8;

    // if (!hasDigits) {
    // return XString.label_password_must_contains_minimum_one_number;
    // }
    //
    // if (!hasCharacters) {
    //   return XString.label_password_must_contains_minimum_one_letter;
    // }

    if (!hasMinLength) {
      return 'Password length error'; //XString.label_passowrd_length_error;
    }

    return null;
  }

  static String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Field can not be empty'; //XString.label_field_can_not_empty;
    }
    if (value != password) {
      return 'Password does not match'; //XString.reset__label_password_not_match;
    }
    return null;
  }

  static String? notEmptyValidator(String? value) {
    if (value == null || value.isEmpty || value.trim().isEmpty) {
      return 'Field can not be empty'; //XString.label_field_can_not_empty;
    }

    return null;
  }

  static String? phoneValidator(String? value) {
    if (value == null || value.isEmpty || value.trim().isEmpty) {
      return 'Field can not empty'; //XString.label_field_can_not_empty);
    }
    return null;
  }

  static String? priceValidatorWithOutMsg(String? value) {
    final trimmedValue = (value ?? '').trimLeft().trimRight();

    if (trimmedValue.isEmpty) {
      return '';
    }

    if (double.parse(trimmedValue.replaceAll('.', '')) > 100000000) {
      return '';
    }

    return null;
  }

  static String? productPriceValidator(String? value, String? message) {
    if (value == null || value.isEmpty) {
      return message;
    }
    return null;
  }

  static String? alphanumericNotEmptyValidator(String? value) {
    final trimmedValue = (value ?? '').trimLeft().trimRight();

    if (trimmedValue.isEmpty) {
      return 'Field can not be empty'; //XString.label_field_can_not_empty;
    }

    if (!GetUtils.hasMatch(trimmedValue, _alphanumericPattern)) {
      return 'Please input the right name format';
    }

    return null;
  }

  static String? amountValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'The field can\'t be empty';
    }

    if (!value.replaceAll('.', '').isNumericOnly) {
      return 'Filed can take numeric values only';
    }

    return null;
  }

  static String? phoneNumberFormatValidator(String? value) {
    final phone = value?.removeAllWhitespace;
    if (!GetUtils.hasMatch(phone, _phoneNumberPattern)) {
      return 'Enter valid phone number'; //XString.label_enter_valid_phone_number;
    }

    return null;
  }

  static String? customNotEmptyValidator(String? value, String? message) {
    if (value == null || value.isEmpty) {
      return message;
    }
    return null;
  }

  static String? _emailFormatValidator(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Input right email format'; //XString.label_input_right_email_format;
    }

    return null;
  }

  static String? confirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password field required'; //XString.label_password_field_required;
    }
    if (value.length < 8) {
      return '';
    }
    if (value != _storedPassword) {
      return 'Password not match'; //XString.reset__label_password_not_match;
    }
    return null;
  }

  static String? validateResetPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password field required'; //XString.label_password_field_required;
    }
    if (value.length < 8) {
      return 'Password length error'; //XString.label_passowrd_length_error;
    }
    _storedPassword = value;
    return null;
  }

  static String? _storedPassword;
}
