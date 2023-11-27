import 'package:converter/feature/data/models/currency_info_model.dart';
import 'package:converter/feature/data/models/rate_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class HiveAdapters {
  static void init() => Hive
    ..registerAdapter(CurrencyInfoModelImplAdapter())
    ..registerAdapter(RateModelImplAdapter());
}
