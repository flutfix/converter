// ignore_for_file: cascade_invocations

import 'package:converter/common/constants/config.dart';
import 'package:converter/core/interceptors/token_interceptor.dart';
import 'package:converter/core/services/logger_service.dart';
import 'package:converter/feature/data/api/currency_api.dart';
import 'package:converter/feature/data/local/currency/currency_local_datasource.dart';
import 'package:converter/feature/data/local/currency/i_currency_local_datasource.dart';
import 'package:converter/feature/data/repositories/currency_repository.dart';
import 'package:converter/feature/domain/repositories/i_currency_repository.dart';
import 'package:converter/feature/presentasion/bloc/currency/currency_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

final GetIt sl = GetIt.instance;

void injectDependencies() {
  // BLOC.
  sl.registerLazySingleton(() => CurrencyBloc(sl(), sl()));

  // REPOSITORY.
  sl.registerLazySingleton<ICurrencyRepository>(() => CurrencyRepository(sl(), sl()));

  // API.
  sl.registerLazySingleton(() => CurrencyApi(sl()));

  // LOCAL DATA.
  sl.registerLazySingleton<ICurrencyLocalDataSource>(() => CurrencyLocalDataSource(sl(), sl()));

  // CORE.
  sl.registerLazySingleton<HiveInterface>(() => Hive);
  sl.registerLazySingleton(() => LoggerService.ingect);
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: AppConfig.api,
        headers: {'Content-Type': 'application/json'},
      ),
    )..interceptors.addAll([TokenInterceptor()]),
  );
}
