import 'package:flutter/material.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Color backgroud;
  final Color primary;
  final Color primaryText;
  final Color additionalText;
  final Color appBarText;
  final Color activeTextField;
  final Color unactiveTextField;
  final Color divider;
  final Color radioButton;

  CustomTheme({
    required this.backgroud,
    required this.primary,
    required this.primaryText,
    required this.additionalText,
    required this.appBarText,
    required this.activeTextField,
    required this.unactiveTextField,
    required this.divider,
    required this.radioButton,
  });

  @override
  CustomTheme copyWith({
    Color? backgroud,
    Color? primary,
    Color? primaryText,
    Color? additionalText,
    Color? appBarText,
    Color? activeTextField,
    Color? unactiveTextField,
    Color? divider,
    Color? radioButton,
  }) {
    return CustomTheme(
      backgroud: backgroud ?? this.backgroud,
      primary: primary ?? this.primary,
      primaryText: primaryText ?? this.primaryText,
      additionalText: additionalText ?? this.additionalText,
      appBarText: appBarText ?? this.appBarText,
      activeTextField: activeTextField ?? this.activeTextField,
      unactiveTextField: unactiveTextField ?? this.unactiveTextField,
      divider: divider ?? this.divider,
      radioButton: radioButton ?? this.radioButton,
    );
  }

  @override
  ThemeExtension<CustomTheme> lerp(ThemeExtension<CustomTheme>? other, double t) {
    if (other is! CustomTheme) {
      return this;
    }

    return CustomTheme(
      backgroud: Color.lerp(backgroud, other.backgroud, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      additionalText: Color.lerp(additionalText, other.additionalText, t)!,
      appBarText: Color.lerp(appBarText, other.appBarText, t)!,
      activeTextField: Color.lerp(activeTextField, other.activeTextField, t)!,
      unactiveTextField: Color.lerp(unactiveTextField, other.unactiveTextField, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      radioButton: Color.lerp(radioButton, other.radioButton, t)!,
    );
  }
}

class AppTheme {
  static CustomTheme get light => CustomTheme(
        backgroud: const Color(0xFFFFFFFF),
        primary: const Color(0xFF660FE7),
        primaryText: const Color(0xFF000000),
        additionalText: const Color(0xFFB5B6BC),
        appBarText: const Color(0xFFFFFFFF),
        activeTextField: const Color(0xFF7AD8CB),
        unactiveTextField: const Color(0xFFD3D4DA),
        divider: const Color(0xFFD3D4DA),
        radioButton: const Color(0xFF8F8F8F),
      );
}
