import 'package:flutter/services.dart';

class PriceFormatter extends TextInputFormatter {
  static final RegExp regexp1 = RegExp(r"^\d{0,6}$");
  static final RegExp regexp2 = RegExp(r"^\d{0,6}\.\d{0,2}$");

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (regexp1.hasMatch(newValue.text) || regexp2.hasMatch(newValue.text)) {
      return newValue;
    } else {
      return oldValue;
    }
  }
}

class MultiplierFormatter extends TextInputFormatter {
  static final RegExp regexp1 = RegExp(r"^\d?$");
  static final RegExp regexp2 = RegExp(r"^\d\.\d{0,2}$");

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (regexp1.hasMatch(newValue.text) || regexp2.hasMatch(newValue.text)) {
      return newValue;
    } else {
      return oldValue;
    }
  }
}

class IntegerFormatter extends TextInputFormatter {
  static final RegExp regexp = RegExp(r"^\d*$");

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue,
      TextEditingValue newValue) {
    if (regexp.hasMatch(newValue.text)) {
      return newValue;
    } else {
      return oldValue;
    }
  }
}

class TextFormatter extends TextInputFormatter {
  static final RegExp regexp = RegExp(r"^[\x20-\x7e]*$");

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue,
      TextEditingValue newValue) {
    if (regexp.hasMatch(newValue.text)) {
      return newValue;
    } else {
      return oldValue;
    }
  }
}