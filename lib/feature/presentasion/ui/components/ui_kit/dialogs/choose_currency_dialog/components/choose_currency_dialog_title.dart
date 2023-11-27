import 'package:converter/common/utils/layout.dart';
import 'package:flutter/material.dart';

class ChooseCurrencyDialogTitle extends StatelessWidget {
  const ChooseCurrencyDialogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Text(
        layout.intl.choose_currency,
        style: layout.fonts.styleEB16.copyWith(color: layout.theme.primaryText),
      ),
    );
  }
}