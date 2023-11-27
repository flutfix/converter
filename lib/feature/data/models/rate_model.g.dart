// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RateModelImplAdapter extends TypeAdapter<_$RateModelImpl> {
  @override
  final int typeId = 1;

  @override
  _$RateModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$RateModelImpl(
      currency: fields[0] as String,
      value: fields[1] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$RateModelImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.currency)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RateModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RateModelImpl _$$RateModelImplFromJson(Map<String, dynamic> json) =>
    _$RateModelImpl(
      currency: json['currency'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$RateModelImplToJson(_$RateModelImpl instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'value': instance.value,
    };
