import 'package:converter/common/utils/layout.dart';
import 'package:converter/core/services/service_locator.dart';
import 'package:converter/feature/data/models/currency_model.dart';
import 'package:converter/feature/presentasion/bloc/currency/currency_bloc.dart';
import 'package:converter/feature/presentasion/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/components.dart';

class ChooseCurrencyDialog extends StatefulWidget {
  final CurrencyModel? chosenCurrency;

  const ChooseCurrencyDialog({super.key, this.chosenCurrency});

  static Future<CurrencyModel?> show(BuildContext context, {CurrencyModel? chosenCurrency}) async {
    return await showDialog<CurrencyModel?>(
      context: context,
      builder: (_) => ChooseCurrencyDialog(chosenCurrency: chosenCurrency),
    );
  }

  @override
  State<ChooseCurrencyDialog> createState() => _ChooseCurrencyDialogState();
}

class _ChooseCurrencyDialogState extends State<ChooseCurrencyDialog> {
  late Layout _layout;
  late final CurrencyBloc _currencyBloc;
  late CurrencyModel? chosenCurrency;

  @override
  void initState() {
    super.initState();

    _currencyBloc = sl<CurrencyBloc>();
    chosenCurrency = widget.chosenCurrency;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _layout = Layout.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrencyBloc, CurrencyState>(
      bloc: _currencyBloc,
      builder: (context, state) {
        if (state.currencies == null) {
          return const BaseLoader();
        }

        return Dialog(
          surfaceTintColor: _layout.theme.backgroud,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
          insetPadding: EdgeInsets.symmetric(horizontal: _insetPadding(_layout), vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ChooseCurrencyDialogTitle(),
              ChooseCurrencyDialogListView(
                currencies: state.currencies!,
                chosenCurrency: chosenCurrency,
                onChoose: _onChooseCurrency,
              ),
              const BaseDivider(),
              ChooseCurrencyDialogActionButtons(onCancel: _onCancel, onDone: _onDone),
            ],
          ),
        );
      },
    );
  }

  void _onChooseCurrency(CurrencyModel currency) => setState(() => chosenCurrency = currency);

  void _onCancel() => Navigator.pop(context);

  void _onDone() => Navigator.pop(context, chosenCurrency);

  double _insetPadding(Layout layout) => (layout.width - 250) / 2;
}
