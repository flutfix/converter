import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:converter/common/extensions/iterable_extension.dart';
import 'package:converter/common/extensions/num_extension.dart';
import 'package:converter/common/utils/failure_service.dart';
import 'package:converter/common/utils/layout.dart';
import 'package:converter/core/failures/failure.dart';
import 'package:converter/core/services/connectivity_service.dart';
import 'package:converter/core/services/service_locator.dart';
import 'package:converter/core/typedefs/data.dart';
import 'package:converter/feature/data/models/currency_info_model.dart';
import 'package:converter/feature/data/models/currency_model.dart';
import 'package:converter/feature/presentasion/bloc/currency/currency_bloc.dart';
import 'package:converter/feature/presentasion/ui/components/components.dart';
import 'package:converter/feature/presentasion/ui/screens/currency_converter/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});

  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  late Layout _layout;
  late final CurrencyBloc _currencyBloc;

  late final TextEditingController _fromValueController;
  late final TextEditingController _toValueController;

  late final StreamSubscription<ConnectivityResult> subscription;

  @override
  void initState() {
    super.initState();

    _currencyBloc = sl<CurrencyBloc>();
    _fetchCurrencies();

    _fromValueController = TextEditingController();
    _toValueController = TextEditingController();

    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (ConnectivityService.isConnectivity(result)) {
        _fetchCurrencies();

        if (_currencyBloc.state.fromCurrency != null && _currencyBloc.state.toCurrency != null) {
          if (_fromValueController.text.isNotEmpty) {
            final value = _fromValueController.text.isEmpty ? null : double.parse(_fromValueController.text);
            _onChangeFromValue(_currencyBloc.state, value);
            return;
          }
          if (_toValueController.text.isNotEmpty) {
            final value = _toValueController.text.isEmpty ? null : double.parse(_toValueController.text);
            _onChangeToValue(_currencyBloc.state, value);
            return;
          }
        }
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _layout = Layout.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithUnfocus(
      backgroundColor: _layout.theme.backgroud,
      appBar: BaseAppBar(title: _layout.intl.currency_converter),
      body: BlocBuilder<CurrencyBloc, CurrencyState>(
          bloc: _currencyBloc,
          builder: (context, state) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  CurrencyConverterTextField(
                      title: _layout.intl.you_send,
                      chosenCurrency: state.fromCurrency,
                      controller: _fromValueController,
                      onChooseCurrency: (currency) => _onChooseFromCurrency(state, currency),
                      onChangedValue: (value) => _onChangeFromValue(state, value)),
                  const SizedBox(height: 15),
                  CurrencyConvertReverseButton(onTap: _onReverseCurrencies),
                  const SizedBox(height: 10),
                  CurrencyConverterTextField(
                    title: _layout.intl.they_get,
                    chosenCurrency: state.toCurrency,
                    controller: _toValueController,
                    onChooseCurrency: (currency) => _onChooseToCurrency(state, currency),
                    onChangedValue: (value) => _onChangeToValue(state, value),
                  ),
                ],
              ),
            );
          }),
    );
  }

  void _fetchCurrencies() async {
    final completer = Completer<Failure?>();
    _currencyBloc.add(CurrencyEvent.fetchCurrencies(completer: completer));

    final failure = await completer.future;
    if (!mounted) return;
    if (failure != null) FailureAlert.show(context, _layout.intl.fetching_list_currencies_failed);
  }

  void _onChooseFromCurrency(CurrencyState state, CurrencyModel chosenCurrency) async {
    final completer = Completer<SyncData<CurrencyInfoModel?>?>();
    _currencyBloc.add(CurrencyEvent.changeFromCurrency(currency: chosenCurrency, completer: completer));

    final response = await completer.future;
    if (response == null) return;
    response.fold(
      (failure) => FailureService.onShowFailureAlert(context, failure),
      (currencyInfo) {
        final rate = currencyInfo?.rates.firstWhereOrNull((rate) => rate.currency == state.toCurrency?.symbol);
        if (rate == null) {
          if (state.fromValue != null) _toValueController.clear();
          return;
        }
        _toValueController.text = (state.fromValue! * rate.value).remainsFormat();
      },
    );
  }

  void _onChangeFromValue(CurrencyState state, double? value) async {
    final completer = Completer<SyncData<CurrencyInfoModel?>?>();
    _currencyBloc.add(CurrencyEvent.changeFromValue(value: value, completer: completer));

    final response = await completer.future;
    if (response == null) return;
    response.fold(
      (failure) => FailureService.onShowFailureAlert(context, failure),
      (currencyInfo) {
        final rate = currencyInfo?.rates.firstWhereOrNull((rate) => rate.currency == state.toCurrency?.symbol);
        if (rate == null) {
          if (state.fromValue != null) _toValueController.clear();
          return;
        }
        _toValueController.text = (value! * rate.value).remainsFormat();
      },
    );
  }

  void _onChooseToCurrency(CurrencyState state, CurrencyModel chosenCurrency) async {
    final completer = Completer<SyncData<CurrencyInfoModel?>?>();
    _currencyBloc.add(CurrencyEvent.changeToCurrency(currency: chosenCurrency, completer: completer));

    final response = await completer.future;
    if (response == null) return;
    response.fold(
      (failure) => FailureService.onShowFailureAlert(context, failure),
      (currencyInfo) {
        final rate = currencyInfo?.rates.firstWhereOrNull((rate) => rate.currency == chosenCurrency.symbol);
        if (rate == null) {
          if (state.fromValue != null) _toValueController.clear();
          return;
        }

        if (state.fromValue == null) {
          _fromValueController.text = (state.toValue! / rate.value).remainsFormat();
        } else {
          _toValueController.text = (state.fromValue! * rate.value).remainsFormat();
        }
      },
    );
  }

  void _onChangeToValue(CurrencyState state, double? value) async {
    final completer = Completer<SyncData<CurrencyInfoModel?>?>();
    _currencyBloc.add(CurrencyEvent.changeToValue(value: value, completer: completer));

    final response = await completer.future;
    if (response == null) return;
    response.fold(
      (failure) => FailureService.onShowFailureAlert(context, failure),
      (currencyInfo) {
        final rate = currencyInfo?.rates.firstWhereOrNull((rate) => rate.currency == state.toCurrency?.symbol);
        if (rate == null) {
          if (state.fromValue != null) _fromValueController.clear();
          return;
        }
        _fromValueController.text = (value! / rate.value).remainsFormat();
      },
    );
  }

  void _onReverseCurrencies() {
    _currencyBloc.add(const CurrencyEvent.reverseCurrencies());

    final fromValue = _fromValueController.text;
    _fromValueController.text = _toValueController.text;
    _toValueController.text = fromValue;
  }

  @override
  void dispose() {
    _fromValueController.dispose();
    _toValueController.dispose();
    subscription.cancel();

    super.dispose();
  }
}
