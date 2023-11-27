// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currencies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrenciesModel _$CurrenciesModelFromJson(Map<String, dynamic> json) {
  return _CurrenciesModel.fromJson(json);
}

/// @nodoc
mixin _$CurrenciesModel {
  @JsonKey(
      name: 'symbols',
      fromJson: CurrenciesSerializer.fromJsonList,
      toJson: CurrenciesSerializer.toJsonList)
  List<CurrencyModel> get currencies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrenciesModelCopyWith<CurrenciesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesModelCopyWith<$Res> {
  factory $CurrenciesModelCopyWith(
          CurrenciesModel value, $Res Function(CurrenciesModel) then) =
      _$CurrenciesModelCopyWithImpl<$Res, CurrenciesModel>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'symbols',
          fromJson: CurrenciesSerializer.fromJsonList,
          toJson: CurrenciesSerializer.toJsonList)
      List<CurrencyModel> currencies});
}

/// @nodoc
class _$CurrenciesModelCopyWithImpl<$Res, $Val extends CurrenciesModel>
    implements $CurrenciesModelCopyWith<$Res> {
  _$CurrenciesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
  }) {
    return _then(_value.copyWith(
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrenciesModelImplCopyWith<$Res>
    implements $CurrenciesModelCopyWith<$Res> {
  factory _$$CurrenciesModelImplCopyWith(_$CurrenciesModelImpl value,
          $Res Function(_$CurrenciesModelImpl) then) =
      __$$CurrenciesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'symbols',
          fromJson: CurrenciesSerializer.fromJsonList,
          toJson: CurrenciesSerializer.toJsonList)
      List<CurrencyModel> currencies});
}

/// @nodoc
class __$$CurrenciesModelImplCopyWithImpl<$Res>
    extends _$CurrenciesModelCopyWithImpl<$Res, _$CurrenciesModelImpl>
    implements _$$CurrenciesModelImplCopyWith<$Res> {
  __$$CurrenciesModelImplCopyWithImpl(
      _$CurrenciesModelImpl _value, $Res Function(_$CurrenciesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
  }) {
    return _then(_$CurrenciesModelImpl(
      null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrenciesModelImpl implements _CurrenciesModel {
  const _$CurrenciesModelImpl(
      @JsonKey(
          name: 'symbols',
          fromJson: CurrenciesSerializer.fromJsonList,
          toJson: CurrenciesSerializer.toJsonList)
      final List<CurrencyModel> currencies)
      : _currencies = currencies;

  factory _$CurrenciesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrenciesModelImplFromJson(json);

  final List<CurrencyModel> _currencies;
  @override
  @JsonKey(
      name: 'symbols',
      fromJson: CurrenciesSerializer.fromJsonList,
      toJson: CurrenciesSerializer.toJsonList)
  List<CurrencyModel> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  String toString() {
    return 'CurrenciesModel(currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrenciesModelImpl &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrenciesModelImplCopyWith<_$CurrenciesModelImpl> get copyWith =>
      __$$CurrenciesModelImplCopyWithImpl<_$CurrenciesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrenciesModelImplToJson(
      this,
    );
  }
}

abstract class _CurrenciesModel implements CurrenciesModel {
  const factory _CurrenciesModel(
      @JsonKey(
          name: 'symbols',
          fromJson: CurrenciesSerializer.fromJsonList,
          toJson: CurrenciesSerializer.toJsonList)
      final List<CurrencyModel> currencies) = _$CurrenciesModelImpl;

  factory _CurrenciesModel.fromJson(Map<String, dynamic> json) =
      _$CurrenciesModelImpl.fromJson;

  @override
  @JsonKey(
      name: 'symbols',
      fromJson: CurrenciesSerializer.fromJsonList,
      toJson: CurrenciesSerializer.toJsonList)
  List<CurrencyModel> get currencies;
  @override
  @JsonKey(ignore: true)
  _$$CurrenciesModelImplCopyWith<_$CurrenciesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
