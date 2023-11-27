import 'package:converter/core/failures/failure.dart';
import 'package:converter/core/typedefs/data.dart';
import 'package:converter/feature/data/api/currency_api.dart';
import 'package:converter/feature/data/models/currency_info_model.dart';
import 'package:converter/feature/data/models/currency_model.dart';
import 'package:converter/feature/domain/repositories/i_currency_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class CurrencyRepository implements ICurrencyRepository {
  final CurrencyApi _api;
  final Logger _logger;

  CurrencyRepository(this._api, this._logger);

  @override
  Data<List<CurrencyModel>> fetchCurrencies() async {
    try {
      final response = await _api.fetchCurrencies();
      _logger.i('[Repository] Was fetched ${response.currencies.length} currencies');

      return Right(response.currencies);
    } on DioException catch (e) {
      _logger.e('Dio Exception: /currencies\nStatus code: ${e.response?.statusCode}\nResponse: ${e.response}');

      return Left(Failure(statusCode: e.response?.statusCode, cause: e.response?.data['error']['code']));
    }
  }

  @override
  Data<CurrencyInfoModel> fetchRate({required String from, required List<String> to}) async {
    try {
      final queries = {
        'base': from,
        'symbols': to.join(','),
      };

      final response = await _api.fetchRate(queries: queries);
      _logger.i('[Repository] Was fetched rate');

      return Right(response);
    } on DioException catch (e) {
      _logger.e('Dio Exception: /currencies\nStatus code: ${e.response?.statusCode}\nResponse: ${e.response}');

      return Left(Failure(statusCode: e.response?.statusCode, cause: e.response?.data['error']['code']));
    }
  }
}
