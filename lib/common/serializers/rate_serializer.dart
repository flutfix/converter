import 'package:converter/feature/data/models/rate_model.dart';

class RateSerializer {
  static Map<String, double> toJsonList(List<RateModel> rates) {
    return Map.fromEntries(rates.map((rate) => MapEntry(rate.currency, rate.value)));
  }

  static List<RateModel> fromJsonList(Map<String, dynamic> json) {
    return json.entries
        .map((rate) => RateModel(currency: rate.key, value: double.parse(rate.value.toString())))
        .toList();
  }
}
