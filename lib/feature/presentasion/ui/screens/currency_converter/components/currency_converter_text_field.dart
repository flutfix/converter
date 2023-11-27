import 'package:converter/common/constants/assets.dart';
import 'package:converter/common/formatters/dot_formatter.dart';
import 'package:converter/common/utils/layout.dart';
import 'package:converter/feature/data/models/currency_model.dart';
import 'package:converter/feature/presentasion/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyConverterTextField extends StatelessWidget {
  final String title;
  final CurrencyModel? chosenCurrency;
  final TextEditingController controller;
  final void Function(CurrencyModel chosenCurrency) onChooseCurrency;
  final void Function(double? value) onChangedValue;

  const CurrencyConverterTextField({
    super.key,
    required this.title,
    this.chosenCurrency,
    required this.controller,
    required this.onChooseCurrency,
    required this.onChangedValue,
  });

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: layout.fonts.styleEB12.copyWith(color: layout.theme.additionalText),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: BaseTextField(
                controller: controller,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                textInputAction: TextInputAction.done,
                inputFormatters: const [DotFormatter(remains: 2)],
                onChanged: _onChangedValue,
                debounceDuration: const Duration(milliseconds: 300),
              ),
            ),
            const SizedBox(width: 10),
            InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () => _openChooseCurrencyDialog(context),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      child: Text(
                        chosenCurrency?.symbol ?? '',
                        style: layout.fonts.styleEB16.copyWith(color: layout.theme.primary),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: SvgPicture.asset(
                        Assets.icons.bottomArrow,
                        width: 14,
                        color: layout.theme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _openChooseCurrencyDialog(BuildContext context) async {
    final currency = await ChooseCurrencyDialog.show(context, chosenCurrency: chosenCurrency);
    if (currency != null) onChooseCurrency(currency);
  }

  void _onChangedValue(String text) {
    final value = text.isEmpty ? null : double.parse(text);
    onChangedValue(value);
  }
}
