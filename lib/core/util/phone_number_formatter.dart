import 'package:flutter/services.dart';

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final digits = newValue.text.replaceAll(RegExp(r'\D'), '');
    final limitLength = digits.length.clamp(0, 11);

    final formatted = switch (digits.length) {
      <= 3 => digits,
      <= 7 => '${digits.substring(0, 3)}-${digits.substring(3)}',
      _ =>
        '${digits.substring(0, 3)}-${digits.substring(3, 7)}-${digits.substring(7, limitLength)}',
    };
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(
        offset: formatted.length,
      ),
    );
  }
}
