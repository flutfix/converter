import 'package:flutter/material.dart';

class CustomFonts extends ThemeExtension<CustomFonts> {
  /// Шрифты названы таким образом: [styleSB14]
  /// SB - Вес - Semi-Bold
  /// 14 - Размер

  final TextStyle styleEB20;
  final TextStyle styleEB16;
  final TextStyle styleEB12;
  final TextStyle styleSB14;

  const CustomFonts({
    required this.styleEB20,
    required this.styleEB16,
    required this.styleEB12,
    required this.styleSB14,
  });

  @override
  ThemeExtension<CustomFonts> copyWith({
    TextStyle? styleEB20,
    TextStyle? styleEB16,
    TextStyle? styleEB12,
    TextStyle? styleSB14,
  }) {
    return CustomFonts(
      styleEB20: styleEB20 ?? this.styleEB20,
      styleEB16: styleEB16 ?? this.styleEB16,
      styleEB12: styleEB12 ?? this.styleEB12,
      styleSB14: styleSB14 ?? this.styleSB14,
    );
  }

  @override
  ThemeExtension<CustomFonts> lerp(
    ThemeExtension<CustomFonts>? other,
    double t,
  ) {
    if (other is! CustomFonts) {
      return this;
    }

    return CustomFonts(
      styleEB20: TextStyle.lerp(styleEB20, other.styleEB20, t)!,
      styleEB16: TextStyle.lerp(styleEB16, other.styleEB16, t)!,
      styleEB12: TextStyle.lerp(styleEB12, other.styleEB12, t)!,
      styleSB14: TextStyle.lerp(styleSB14, other.styleSB14, t)!,
    );
  }

  static const light = CustomFonts(
    styleEB20: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
    styleEB16: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
    styleEB12: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
    styleSB14: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
  );
}
