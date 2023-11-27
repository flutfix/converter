import 'package:converter/common/serializers/currencies_serializer.dart';
import 'package:converter/feature/data/models/currency_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currencies_model.freezed.dart';
part 'currencies_model.g.dart';

@freezed
class CurrenciesModel with _$CurrenciesModel {
  const factory CurrenciesModel(
    @JsonKey(name: 'symbols', fromJson: CurrenciesSerializer.fromJsonList, toJson: CurrenciesSerializer.toJsonList)
    List<CurrencyModel> currencies,
  ) = _CurrenciesModel;

  factory CurrenciesModel.fromJson(Map<String, dynamic> json) => _$CurrenciesModelFromJson(json);
}
