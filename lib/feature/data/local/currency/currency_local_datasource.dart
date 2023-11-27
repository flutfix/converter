import 'package:converter/core/failures/failure.dart';
import 'package:converter/core/typedefs/data.dart';
import 'package:converter/feature/data/local/currency/i_currency_local_datasource.dart';
import 'package:converter/feature/data/models/currency_info_model.dart';
import 'package:converter/feature/data/models/currency_model.dart';
import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';

class CurrencyLocalDataSource implements ICurrencyLocalDataSource {
  final HiveInterface _hive;
  final Logger _logger;

  CurrencyLocalDataSource(this._hive, this._logger);

  static const String _currensiesBoxName = 'currencies';

  @override
  void saveCurrencyInfo(CurrencyInfoModel currencyInfo) async {
    final box = await _hive.openBox<CurrencyInfoModel>(currencyInfo.currency);

    final cachedCurrencyInfo = box.get(currencyInfo.currency);

    // Если информация о валюте уже сущетсвует, добавляем или обновляем её.
    if (cachedCurrencyInfo != null) {
      final updatedRates = cachedCurrencyInfo.rates.toList()
        ..removeWhere((rate) => rate.currency == currencyInfo.rates.first.currency)
        ..insert(0, currencyInfo.rates.first);
      final updatedCurrencyInfo = cachedCurrencyInfo.copyWith(rates: updatedRates);
      await box.put(currencyInfo.currency, updatedCurrencyInfo);
    } else {
      await box.put(currencyInfo.currency, currencyInfo);
    }

    _logger.d('[Local DataSource] currencyInfo saved');
  }

  @override
  Data<CurrencyInfoModel?> fetchCurrencyInfo(String currencySymbol) async {
    try {
      final box = await _hive.openBox<CurrencyInfoModel>(currencySymbol);

      return Right(box.get(currencySymbol));
    } catch (e) {
      return const Left(Failure());
    }
  }

  @override
  void saveCurrencies(List<CurrencyModel> currencies) async {
    final box = await _hive.openBox<List<CurrencyModel>>(_currensiesBoxName);

    await box.put(_currensiesBoxName, currencies);
    _logger.d('[Local DataSource] currencies saved');
  }

  @override
  Data<List<CurrencyModel>?> fetchCurrencies() async {
    try {
      final box = await _hive.openBox<List<CurrencyModel>>(_currensiesBoxName);

      return Right(box.get(_currensiesBoxName));
    } catch (e) {
      return const Left(Failure());
    }
  }
}
