extension NumExtension on num {
  bool get withoutRemainder {
    if (this == 0) return true;
    return this % toInt() == 0;
  }

  String remainsFormat() {
    if (withoutRemainder) return toInt().toString();
    return toStringAsFixed(2);
  }
}
