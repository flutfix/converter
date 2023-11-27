import 'package:converter/common/utils/layout.dart';
import 'package:converter/feature/data/models/currency_model.dart';
import 'package:converter/feature/presentasion/ui/components/components.dart';
import 'package:flutter/material.dart';

class ChooseCurrencyDialogListView extends StatelessWidget {
  final List<CurrencyModel> currencies;
  final CurrencyModel? chosenCurrency;
  final Function(CurrencyModel currency) onChoose;

  const ChooseCurrencyDialogListView({
    super.key,
    required this.currencies,
    this.chosenCurrency,
    required this.onChoose,
  });

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return Flexible(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: currencies.length,
        itemBuilder: (_, i) {
          final currency = currencies[i];

          return Material(
            child: InkWell(
              onTap: () => onChoose(currency),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    RadioButton(isActive: _isActiveRadioButton(currency)),
                    const SizedBox(width: 30),
                    Text(currency.symbol, style: layout.fonts.styleEB16.copyWith(color: layout.theme.primaryText)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  bool _isActiveRadioButton(CurrencyModel currency) => currency == chosenCurrency;
}
