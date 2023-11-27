import 'package:converter/feature/data/models/currencies_model.dart';
import 'package:converter/feature/data/models/currency_info_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'currency_api.g.dart';

///////////////////////////////////////
//// *** Promotions API Client *** ////
///////////////////////////////////////

@RestApi()
abstract class CurrencyApi {
  factory CurrencyApi(Dio dio, {String baseUrl}) = _CurrencyApi;

  @GET('/symbols')
  Future<CurrenciesModel> fetchCurrencies();

  @GET('/latest')
  Future<CurrencyInfoModel> fetchRate({@Queries() required Map<String, dynamic> queries});
}
