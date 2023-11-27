// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyInfoModel _$CurrencyInfoModelFromJson(Map<String, dynamic> json) {
  return _CurrencyInfoModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyInfoModel {
  @HiveField(0)
  @JsonKey(name: 'base')
  String get currency => throw _privateConstructorUsedError;
  @HiveField(1)
  String get date => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(
      fromJson: RateSerializer.fromJsonList, toJson: RateSerializer.toJsonList)
  List<RateModel> get rates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyInfoModelCopyWith<CurrencyInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyInfoModelCopyWith<$Res> {
  factory $CurrencyInfoModelCopyWith(
          CurrencyInfoModel value, $Res Function(CurrencyInfoModel) then) =
      _$CurrencyInfoModelCopyWithImpl<$Res, CurrencyInfoModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'base') String currency,
      @HiveField(1) String date,
      @HiveField(2)
      @JsonKey(
          fromJson: RateSerializer.fromJsonList,
          toJson: RateSerializer.toJsonList)
      List<RateModel> rates});
}

/// @nodoc
class _$CurrencyInfoModelCopyWithImpl<$Res, $Val extends CurrencyInfoModel>
    implements $CurrencyInfoModelCopyWith<$Res> {
  _$CurrencyInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? date = null,
    Object? rates = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<RateModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyInfoModelImplCopyWith<$Res>
    implements $CurrencyInfoModelCopyWith<$Res> {
  factory _$$CurrencyInfoModelImplCopyWith(_$CurrencyInfoModelImpl value,
          $Res Function(_$CurrencyInfoModelImpl) then) =
      __$$CurrencyInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'base') String currency,
      @HiveField(1) String date,
      @HiveField(2)
      @JsonKey(
          fromJson: RateSerializer.fromJsonList,
          toJson: RateSerializer.toJsonList)
      List<RateModel> rates});
}

/// @nodoc
class __$$CurrencyInfoModelImplCopyWithImpl<$Res>
    extends _$CurrencyInfoModelCopyWithImpl<$Res, _$CurrencyInfoModelImpl>
    implements _$$CurrencyInfoModelImplCopyWith<$Res> {
  __$$CurrencyInfoModelImplCopyWithImpl(_$CurrencyInfoModelImpl _value,
      $Res Function(_$CurrencyInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? date = null,
    Object? rates = null,
  }) {
    return _then(_$CurrencyInfoModelImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<RateModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$CurrencyInfoModelImpl extends _CurrencyInfoModel {
  const _$CurrencyInfoModelImpl(
      {@HiveField(0) @JsonKey(name: 'base') required this.currency,
      @HiveField(1) required this.date,
      @HiveField(2)
      @JsonKey(
          fromJson: RateSerializer.fromJsonList,
          toJson: RateSerializer.toJsonList)
      required final List<RateModel> rates})
      : _rates = rates,
        super._();

  factory _$CurrencyInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyInfoModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'base')
  final String currency;
  @override
  @HiveField(1)
  final String date;
  final List<RateModel> _rates;
  @override
  @HiveField(2)
  @JsonKey(
      fromJson: RateSerializer.fromJsonList, toJson: RateSerializer.toJsonList)
  List<RateModel> get rates {
    if (_rates is EqualUnmodifiableListView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rates);
  }

  @override
  String toString() {
    return 'CurrencyInfoModel(currency: $currency, date: $date, rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyInfoModelImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._rates, _rates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, currency, date, const DeepCollectionEquality().hash(_rates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyInfoModelImplCopyWith<_$CurrencyInfoModelImpl> get copyWith =>
      __$$CurrencyInfoModelImplCopyWithImpl<_$CurrencyInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyInfoModelImplToJson(
      this,
    );
  }
}

abstract class _CurrencyInfoModel extends CurrencyInfoModel {
  const factory _CurrencyInfoModel(
      {@HiveField(0) @JsonKey(name: 'base') required final String currency,
      @HiveField(1) required final String date,
      @HiveField(2)
      @JsonKey(
          fromJson: RateSerializer.fromJsonList,
          toJson: RateSerializer.toJsonList)
      required final List<RateModel> rates}) = _$CurrencyInfoModelImpl;
  const _CurrencyInfoModel._() : super._();

  factory _CurrencyInfoModel.fromJson(Map<String, dynamic> json) =
      _$CurrencyInfoModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'base')
  String get currency;
  @override
  @HiveField(1)
  String get date;
  @override
  @HiveField(2)
  @JsonKey(
      fromJson: RateSerializer.fromJsonList, toJson: RateSerializer.toJsonList)
  List<RateModel> get rates;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyInfoModelImplCopyWith<_$CurrencyInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
