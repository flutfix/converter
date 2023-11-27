import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:converter/common/extensions/iterable_extension.dart';
import 'package:converter/core/failures/failure.dart';
import 'package:converter/core/services/connectivity_service.dart';
import 'package:converter/core/typedefs/data.dart';
import 'package:converter/feature/data/local/currency/i_currency_local_datasource.dart';
import 'package:converter/feature/data/models/currency_info_model.dart';
import 'package:converter/feature/data/models/currency_model.dart';
import 'package:converter/feature/domain/repositories/i_currency_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_bloc.freezed.dart';
part 'currency_event.dart';
part 'currency_state.dart';

class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {
  final ICurrencyRepository _currencyRepository;
  final ICurrencyLocalDataSource _currencyLocalDataSource;

  CurrencyBloc(this._currencyRepository, this._currencyLocalDataSource) : super(const CurrencyState.filling()) {
    _setupEvents();
  }

  void _setupEvents() {
    on<CurrencyFetchCurrenciesEvent>(_onFetchCurrencies, transformer: droppable());
    on<CurrencyChangeFromCurrencyEvent>(_onChangeFromCurrency, transformer: droppable());
    on<CurrencyChangeFromValueEvent>(_onChangeFromValue, transformer: droppable());
    on<CurrencyChangeToCurrencyEvent>(_onChangeToCurrency, transformer: droppable());
    on<CurrencyChangeToValueEvent>(_onChangeToValue, transformer: droppable());
    on<CurrencyReverseCurrenciesEvent>(_onReverseCurrencies, transformer: droppable());
  }

  /// Получение списка валют.
  void _onFetchCurrencies(CurrencyFetchCurrenciesEvent event, Emitter emit) async {
    final isConnected = await ConnectivityService.checkConnectivity();

    final response =
        isConnected ? await _currencyRepository.fetchCurrencies() : await _currencyLocalDataSource.fetchCurrencies();

    response.fold(
      (failure) => event.completer?.complete(failure),
      (currencies) {
        emit(state.copyWith(currencies: currencies));
        event.completer?.complete();
      },
    );
  }

  /// Смена отправляемой валюты.
  void _onChangeFromCurrency(CurrencyChangeFromCurrencyEvent event, Emitter emit) async {
    final isConnected = await ConnectivityService.checkConnectivity();

    emit(state.copyWith(fromCurrency: event.currency));

    if (state.fromValue != null && state.toCurrency != null) {
      final response = isConnected
          ? await _currencyRepository.fetchRate(from: event.currency.symbol, to: [state.toCurrency!.symbol])
          : await _currencyLocalDataSource.fetchCurrencyInfo(event.currency.symbol);

      response.fold((_) => null, (currencyInfo) {
        if (isConnected && currencyInfo != null) _currencyLocalDataSource.saveCurrencyInfo(currencyInfo);
        final rate = currencyInfo?.rates.firstWhereOrNull((rate) => rate.currency == state.toCurrency?.symbol);
        if (rate == null) {
          if (state.fromValue != null) emit(state.copyWith(toValue: null));
          return;
        }
        emit(state.copyWith(toValue: state.fromValue! * rate.value));
      });

      event.completer?.complete(response);
      return;
    }

    event.completer?.complete();
  }

  /// Обновление значения для отправляемой валюты.
  void _onChangeFromValue(CurrencyChangeFromValueEvent event, Emitter emit) async {
    final isConnected = await ConnectivityService.checkConnectivity();

    emit(state.copyWith(fromValue: event.value));

    if (state.fromValue != null && state.fromCurrency != null && state.toCurrency != null) {
      final response = isConnected
          ? await _currencyRepository.fetchRate(from: state.fromCurrency!.symbol, to: [state.toCurrency!.symbol])
          : await _currencyLocalDataSource.fetchCurrencyInfo(state.fromCurrency!.symbol);

      response.fold((_) => null, (currencyInfo) {
        if (isConnected && currencyInfo != null) _currencyLocalDataSource.saveCurrencyInfo(currencyInfo);
        final rate = currencyInfo?.rates.firstWhereOrNull((rate) => rate.currency == state.toCurrency?.symbol);
        if (rate == null) {
          if (state.fromValue != null) emit(state.copyWith(toValue: null));
          return;
        }
        emit(state.copyWith(toValue: state.fromValue! * rate.value));
      });

      event.completer?.complete(response);
      return;
    }

    event.completer?.complete();
  }

  /// Смена получаемой валюты.
  void _onChangeToCurrency(CurrencyChangeToCurrencyEvent event, Emitter emit) async {
    final isConnected = await ConnectivityService.checkConnectivity();

    emit(state.copyWith(toCurrency: event.currency));

    if (state.fromCurrency != null && (state.fromValue != null || state.toValue != null)) {
      final response = isConnected
          ? await _currencyRepository.fetchRate(from: state.fromCurrency!.symbol, to: [event.currency.symbol])
          : await _currencyLocalDataSource.fetchCurrencyInfo(state.fromCurrency!.symbol);

      response.fold((_) => null, (currencyInfo) {
        if (currencyInfo == null) return;
        if (isConnected) _currencyLocalDataSource.saveCurrencyInfo(currencyInfo);

        final rate = currencyInfo.rates.firstWhereOrNull((rate) => rate.currency == state.toCurrency?.symbol);
        if (rate == null) {
          if (state.fromValue != null) emit(state.copyWith(toValue: null));
          return;
        }

        if (state.fromValue == null) {
          emit(state.copyWith(fromValue: state.toValue! / rate.value));
        } else {
          emit(state.copyWith(toValue: state.fromValue! * rate.value));
        }
      });

      event.completer?.complete(response);
      return;
    }

    event.completer?.complete();
  }

  /// Обновление значения для получаемой валюты.
  void _onChangeToValue(CurrencyChangeToValueEvent event, Emitter emit) async {
    final isConnected = await ConnectivityService.checkConnectivity();

    emit(state.copyWith(toValue: event.value));

    if (state.toValue != null && state.fromCurrency != null && state.toCurrency != null) {
      final response = isConnected
          ? await _currencyRepository.fetchRate(from: state.fromCurrency!.symbol, to: [state.toCurrency!.symbol])
          : await _currencyLocalDataSource.fetchCurrencyInfo(state.fromCurrency!.symbol);

      response.fold((_) => null, (currencyInfo) {
        if (isConnected && currencyInfo != null) _currencyLocalDataSource.saveCurrencyInfo(currencyInfo);
        final rate = currencyInfo?.rates.firstWhereOrNull((rate) => rate.currency == state.toCurrency?.symbol);
        if (rate == null) {
          if (state.toValue != null) emit(state.copyWith(fromValue: null));
          return;
        }
        emit(state.copyWith(toValue: state.toValue! / rate.value));
      });

      event.completer?.complete(response);
      return;
    }

    event.completer?.complete();
  }

  /// Смена отправляемой и получаемой валют местами.
  void _onReverseCurrencies(CurrencyReverseCurrenciesEvent event, Emitter emit) {
    emit(state.copyWith(
      fromCurrency: state.toCurrency,
      fromValue: state.toValue,
      toCurrency: state.fromCurrency,
      toValue: state.fromValue,
    ));
  }
}
