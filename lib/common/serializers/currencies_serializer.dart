import 'package:converter/feature/data/models/currency_model.dart';

class CurrenciesSerializer {
  static Map<String, String> toJsonList(List<CurrencyModel> currencies) {
    return Map.fromEntries(currencies.map((currency) => MapEntry(currency.symbol, currency.name)));
  }

  static List<CurrencyModel> fromJsonList(Map<String, dynamic> json) {
    return json.entries.map((currency) => CurrencyModel(name: currency.value, symbol: currency.key)).toList();
  }
}
