// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrencyInfoModelImplAdapter
    extends TypeAdapter<_$CurrencyInfoModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$CurrencyInfoModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CurrencyInfoModelImpl(
      currency: fields[0] as String,
      date: fields[1] as String,
      rates: (fields[2] as List).cast<RateModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$CurrencyInfoModelImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.currency)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.rates);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencyInfoModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyInfoModelImpl _$$CurrencyInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrencyInfoModelImpl(
      currency: json['base'] as String,
      date: json['date'] as String,
      rates: RateSerializer.fromJsonList(json['rates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrencyInfoModelImplToJson(
        _$CurrencyInfoModelImpl instance) =>
    <String, dynamic>{
      'base': instance.currency,
      'date': instance.date,
      'rates': RateSerializer.toJsonList(instance.rates),
    };
