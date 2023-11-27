import 'package:converter/common/serializers/rate_serializer.dart';
import 'package:converter/feature/data/models/rate_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'currency_info_model.freezed.dart';
part 'currency_info_model.g.dart';

@freezed
class CurrencyInfoModel with _$CurrencyInfoModel {
  @HiveType(typeId: 0)
  const factory CurrencyInfoModel({
    @HiveField(0) @JsonKey(name: 'base') required String currency,
    @HiveField(1) required String date,
    @HiveField(2)
    @JsonKey(fromJson: RateSerializer.fromJsonList, toJson: RateSerializer.toJsonList)
    required List<RateModel> rates,
  }) = _CurrencyInfoModel;

  const CurrencyInfoModel._();

  factory CurrencyInfoModel.fromJson(Map<String, dynamic> json) => _$CurrencyInfoModelFromJson(json);
}
