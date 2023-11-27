import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class Intl {
  static AppLocalizations of(BuildContext context) => AppLocalizations.of(context)!;
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = AppLocalizations.localizationsDelegates;
  static const List<Locale> supportedLocales = AppLocalizations.supportedLocales;
}
