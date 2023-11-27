import 'package:converter/common/theme/fonts.dart';
import 'package:converter/common/theme/theme.dart';
import 'package:converter/common/utils/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Layout {
  final CustomTheme theme;
  final CustomFonts fonts;
  final AppLocalizations intl;
  final double width;
  final double height;

  const Layout._({
    required this.theme,
    required this.fonts,
    required this.intl,
    required this.width,
    required this.height,
  });

  factory Layout.of(BuildContext context) {
    return Layout._(
      theme: Theme.of(context).extension<CustomTheme>()!,
      fonts: CustomFonts.light,
      intl: Intl.of(context),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}
