import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'rate_model.freezed.dart';
part 'rate_model.g.dart';

@freezed
class RateModel with _$RateModel {
  @HiveType(typeId: 1)
  const factory RateModel({
    @HiveField(0) required String currency,
    @HiveField(1) required double value,
  }) = _RateModel;

  factory RateModel.fromJson(Map<String, dynamic> json) => _$RateModelFromJson(json);
}
