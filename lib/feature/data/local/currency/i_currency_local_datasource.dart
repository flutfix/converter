import 'package:converter/core/typedefs/data.dart';
import 'package:converter/feature/data/models/currency_info_model.dart';
import 'package:converter/feature/data/models/currency_model.dart';

abstract class ICurrencyLocalDataSource {
  void saveCurrencyInfo(CurrencyInfoModel currencyInfo);

  Data<CurrencyInfoModel?> fetchCurrencyInfo(String currencySymbol);

  void saveCurrencies(List<CurrencyModel> currencies);

  Data<List<CurrencyModel>?> fetchCurrencies();
}
