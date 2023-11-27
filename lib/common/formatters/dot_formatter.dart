import 'package:flutter/services.dart';

class DotFormatter extends TextInputFormatter {
  final int? remains;

  const DotFormatter({this.remains});

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // Проверка, не вводится ли второй знак.
    final inputSymbol = newValue.text.replaceAll(RegExp(oldValue.text), '');
    if (oldValue.text.contains('.') && double.tryParse(inputSymbol) == null) return oldValue;

    // Проверка на длину остатка.
    if (oldValue.text.contains('.') && remains != null) {
      if (newValue.text.length > oldValue.text.length) {
        if (newValue.text.split('.').last.length > 2) return oldValue;
      }
    }

    return newValue.copyWith(text: newValue.text.replaceAll(',', '.'));
  }
}
