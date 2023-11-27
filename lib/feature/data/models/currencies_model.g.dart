// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrenciesModelImpl _$$CurrenciesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrenciesModelImpl(
      CurrenciesSerializer.fromJsonList(
          json['symbols'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrenciesModelImplToJson(
        _$CurrenciesModelImpl instance) =>
    <String, dynamic>{
      'symbols': CurrenciesSerializer.toJsonList(instance.currencies),
    };
