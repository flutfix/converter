import 'package:converter/core/typedefs/data.dart';
import 'package:converter/feature/data/models/currency_info_model.dart';
import 'package:converter/feature/data/models/currency_model.dart';

abstract class ICurrencyRepository {
  /// Получение списка валют.
  Data<List<CurrencyModel>> fetchCurrencies();

  /// Получение курса валют.
  Data<CurrencyInfoModel> fetchRate({required String from, required List<String> to});
}
