// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrencyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Completer<Failure?>? completer) fetchCurrencies,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromValue,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToValue,
    required TResult Function() reverseCurrencies,
    required TResult Function() reconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult? Function()? reverseCurrencies,
    TResult? Function()? reconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult Function()? reverseCurrencies,
    TResult Function()? reconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyFetchCurrenciesEvent value)
        fetchCurrencies,
    required TResult Function(CurrencyChangeFromCurrencyEvent value)
        changeFromCurrency,
    required TResult Function(CurrencyChangeFromValueEvent value)
        changeFromValue,
    required TResult Function(CurrencyChangeToCurrencyEvent value)
        changeToCurrency,
    required TResult Function(CurrencyChangeToValueEvent value) changeToValue,
    required TResult Function(CurrencyReverseCurrenciesEvent value)
        reverseCurrencies,
    required TResult Function(CurrencyReconnectEvent value) reconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult? Function(CurrencyChangeFromCurrencyEvent value)?
        changeFromCurrency,
    TResult? Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult? Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult? Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult? Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult? Function(CurrencyReconnectEvent value)? reconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult Function(CurrencyChangeFromCurrencyEvent value)? changeFromCurrency,
    TResult Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult Function(CurrencyReconnectEvent value)? reconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyEventCopyWith<$Res> {
  factory $CurrencyEventCopyWith(
          CurrencyEvent value, $Res Function(CurrencyEvent) then) =
      _$CurrencyEventCopyWithImpl<$Res, CurrencyEvent>;
}

/// @nodoc
class _$CurrencyEventCopyWithImpl<$Res, $Val extends CurrencyEvent>
    implements $CurrencyEventCopyWith<$Res> {
  _$CurrencyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurrencyFetchCurrenciesEventImplCopyWith<$Res> {
  factory _$$CurrencyFetchCurrenciesEventImplCopyWith(
          _$CurrencyFetchCurrenciesEventImpl value,
          $Res Function(_$CurrencyFetchCurrenciesEventImpl) then) =
      __$$CurrencyFetchCurrenciesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Completer<Failure?>? completer});
}

/// @nodoc
class __$$CurrencyFetchCurrenciesEventImplCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res,
        _$CurrencyFetchCurrenciesEventImpl>
    implements _$$CurrencyFetchCurrenciesEventImplCopyWith<$Res> {
  __$$CurrencyFetchCurrenciesEventImplCopyWithImpl(
      _$CurrencyFetchCurrenciesEventImpl _value,
      $Res Function(_$CurrencyFetchCurrenciesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completer = freezed,
  }) {
    return _then(_$CurrencyFetchCurrenciesEventImpl(
      completer: freezed == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<Failure?>?,
    ));
  }
}

/// @nodoc

class _$CurrencyFetchCurrenciesEventImpl
    implements CurrencyFetchCurrenciesEvent {
  const _$CurrencyFetchCurrenciesEventImpl({this.completer});

  @override
  final Completer<Failure?>? completer;

  @override
  String toString() {
    return 'CurrencyEvent.fetchCurrencies(completer: $completer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyFetchCurrenciesEventImpl &&
            (identical(other.completer, completer) ||
                other.completer == completer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, completer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyFetchCurrenciesEventImplCopyWith<
          _$CurrencyFetchCurrenciesEventImpl>
      get copyWith => __$$CurrencyFetchCurrenciesEventImplCopyWithImpl<
          _$CurrencyFetchCurrenciesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Completer<Failure?>? completer) fetchCurrencies,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromValue,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToValue,
    required TResult Function() reverseCurrencies,
    required TResult Function() reconnect,
  }) {
    return fetchCurrencies(completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult? Function()? reverseCurrencies,
    TResult? Function()? reconnect,
  }) {
    return fetchCurrencies?.call(completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult Function()? reverseCurrencies,
    TResult Function()? reconnect,
    required TResult orElse(),
  }) {
    if (fetchCurrencies != null) {
      return fetchCurrencies(completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyFetchCurrenciesEvent value)
        fetchCurrencies,
    required TResult Function(CurrencyChangeFromCurrencyEvent value)
        changeFromCurrency,
    required TResult Function(CurrencyChangeFromValueEvent value)
        changeFromValue,
    required TResult Function(CurrencyChangeToCurrencyEvent value)
        changeToCurrency,
    required TResult Function(CurrencyChangeToValueEvent value) changeToValue,
    required TResult Function(CurrencyReverseCurrenciesEvent value)
        reverseCurrencies,
    required TResult Function(CurrencyReconnectEvent value) reconnect,
  }) {
    return fetchCurrencies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult? Function(CurrencyChangeFromCurrencyEvent value)?
        changeFromCurrency,
    TResult? Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult? Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult? Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult? Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult? Function(CurrencyReconnectEvent value)? reconnect,
  }) {
    return fetchCurrencies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult Function(CurrencyChangeFromCurrencyEvent value)? changeFromCurrency,
    TResult Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult Function(CurrencyReconnectEvent value)? reconnect,
    required TResult orElse(),
  }) {
    if (fetchCurrencies != null) {
      return fetchCurrencies(this);
    }
    return orElse();
  }
}

abstract class CurrencyFetchCurrenciesEvent implements CurrencyEvent {
  const factory CurrencyFetchCurrenciesEvent(
          {final Completer<Failure?>? completer}) =
      _$CurrencyFetchCurrenciesEventImpl;

  Completer<Failure?>? get completer;
  @JsonKey(ignore: true)
  _$$CurrencyFetchCurrenciesEventImplCopyWith<
          _$CurrencyFetchCurrenciesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrencyChangeFromCurrencyEventImplCopyWith<$Res> {
  factory _$$CurrencyChangeFromCurrencyEventImplCopyWith(
          _$CurrencyChangeFromCurrencyEventImpl value,
          $Res Function(_$CurrencyChangeFromCurrencyEventImpl) then) =
      __$$CurrencyChangeFromCurrencyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CurrencyModel currency,
      Completer<Either<Failure, CurrencyInfoModel?>?>? completer});

  $CurrencyModelCopyWith<$Res> get currency;
}

/// @nodoc
class __$$CurrencyChangeFromCurrencyEventImplCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res,
        _$CurrencyChangeFromCurrencyEventImpl>
    implements _$$CurrencyChangeFromCurrencyEventImplCopyWith<$Res> {
  __$$CurrencyChangeFromCurrencyEventImplCopyWithImpl(
      _$CurrencyChangeFromCurrencyEventImpl _value,
      $Res Function(_$CurrencyChangeFromCurrencyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? completer = freezed,
  }) {
    return _then(_$CurrencyChangeFromCurrencyEventImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyModel,
      completer: freezed == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<Either<Failure, CurrencyInfoModel?>?>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyModelCopyWith<$Res> get currency {
    return $CurrencyModelCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value));
    });
  }
}

/// @nodoc

class _$CurrencyChangeFromCurrencyEventImpl
    implements CurrencyChangeFromCurrencyEvent {
  const _$CurrencyChangeFromCurrencyEventImpl(
      {required this.currency, this.completer});

  @override
  final CurrencyModel currency;
  @override
  final Completer<Either<Failure, CurrencyInfoModel?>?>? completer;

  @override
  String toString() {
    return 'CurrencyEvent.changeFromCurrency(currency: $currency, completer: $completer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyChangeFromCurrencyEventImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.completer, completer) ||
                other.completer == completer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency, completer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyChangeFromCurrencyEventImplCopyWith<
          _$CurrencyChangeFromCurrencyEventImpl>
      get copyWith => __$$CurrencyChangeFromCurrencyEventImplCopyWithImpl<
          _$CurrencyChangeFromCurrencyEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Completer<Failure?>? completer) fetchCurrencies,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromValue,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToValue,
    required TResult Function() reverseCurrencies,
    required TResult Function() reconnect,
  }) {
    return changeFromCurrency(currency, completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult? Function()? reverseCurrencies,
    TResult? Function()? reconnect,
  }) {
    return changeFromCurrency?.call(currency, completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult Function()? reverseCurrencies,
    TResult Function()? reconnect,
    required TResult orElse(),
  }) {
    if (changeFromCurrency != null) {
      return changeFromCurrency(currency, completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyFetchCurrenciesEvent value)
        fetchCurrencies,
    required TResult Function(CurrencyChangeFromCurrencyEvent value)
        changeFromCurrency,
    required TResult Function(CurrencyChangeFromValueEvent value)
        changeFromValue,
    required TResult Function(CurrencyChangeToCurrencyEvent value)
        changeToCurrency,
    required TResult Function(CurrencyChangeToValueEvent value) changeToValue,
    required TResult Function(CurrencyReverseCurrenciesEvent value)
        reverseCurrencies,
    required TResult Function(CurrencyReconnectEvent value) reconnect,
  }) {
    return changeFromCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult? Function(CurrencyChangeFromCurrencyEvent value)?
        changeFromCurrency,
    TResult? Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult? Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult? Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult? Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult? Function(CurrencyReconnectEvent value)? reconnect,
  }) {
    return changeFromCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult Function(CurrencyChangeFromCurrencyEvent value)? changeFromCurrency,
    TResult Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult Function(CurrencyReconnectEvent value)? reconnect,
    required TResult orElse(),
  }) {
    if (changeFromCurrency != null) {
      return changeFromCurrency(this);
    }
    return orElse();
  }
}

abstract class CurrencyChangeFromCurrencyEvent implements CurrencyEvent {
  const factory CurrencyChangeFromCurrencyEvent(
          {required final CurrencyModel currency,
          final Completer<Either<Failure, CurrencyInfoModel?>?>? completer}) =
      _$CurrencyChangeFromCurrencyEventImpl;

  CurrencyModel get currency;
  Completer<Either<Failure, CurrencyInfoModel?>?>? get completer;
  @JsonKey(ignore: true)
  _$$CurrencyChangeFromCurrencyEventImplCopyWith<
          _$CurrencyChangeFromCurrencyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrencyChangeFromValueEventImplCopyWith<$Res> {
  factory _$$CurrencyChangeFromValueEventImplCopyWith(
          _$CurrencyChangeFromValueEventImpl value,
          $Res Function(_$CurrencyChangeFromValueEventImpl) then) =
      __$$CurrencyChangeFromValueEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {double? value,
      Completer<Either<Failure, CurrencyInfoModel?>?>? completer});
}

/// @nodoc
class __$$CurrencyChangeFromValueEventImplCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res,
        _$CurrencyChangeFromValueEventImpl>
    implements _$$CurrencyChangeFromValueEventImplCopyWith<$Res> {
  __$$CurrencyChangeFromValueEventImplCopyWithImpl(
      _$CurrencyChangeFromValueEventImpl _value,
      $Res Function(_$CurrencyChangeFromValueEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? completer = freezed,
  }) {
    return _then(_$CurrencyChangeFromValueEventImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      completer: freezed == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<Either<Failure, CurrencyInfoModel?>?>?,
    ));
  }
}

/// @nodoc

class _$CurrencyChangeFromValueEventImpl
    implements CurrencyChangeFromValueEvent {
  const _$CurrencyChangeFromValueEventImpl(
      {required this.value, this.completer});

  @override
  final double? value;
  @override
  final Completer<Either<Failure, CurrencyInfoModel?>?>? completer;

  @override
  String toString() {
    return 'CurrencyEvent.changeFromValue(value: $value, completer: $completer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyChangeFromValueEventImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.completer, completer) ||
                other.completer == completer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, completer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyChangeFromValueEventImplCopyWith<
          _$CurrencyChangeFromValueEventImpl>
      get copyWith => __$$CurrencyChangeFromValueEventImplCopyWithImpl<
          _$CurrencyChangeFromValueEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Completer<Failure?>? completer) fetchCurrencies,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromValue,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToValue,
    required TResult Function() reverseCurrencies,
    required TResult Function() reconnect,
  }) {
    return changeFromValue(value, completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult? Function()? reverseCurrencies,
    TResult? Function()? reconnect,
  }) {
    return changeFromValue?.call(value, completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult Function()? reverseCurrencies,
    TResult Function()? reconnect,
    required TResult orElse(),
  }) {
    if (changeFromValue != null) {
      return changeFromValue(value, completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyFetchCurrenciesEvent value)
        fetchCurrencies,
    required TResult Function(CurrencyChangeFromCurrencyEvent value)
        changeFromCurrency,
    required TResult Function(CurrencyChangeFromValueEvent value)
        changeFromValue,
    required TResult Function(CurrencyChangeToCurrencyEvent value)
        changeToCurrency,
    required TResult Function(CurrencyChangeToValueEvent value) changeToValue,
    required TResult Function(CurrencyReverseCurrenciesEvent value)
        reverseCurrencies,
    required TResult Function(CurrencyReconnectEvent value) reconnect,
  }) {
    return changeFromValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult? Function(CurrencyChangeFromCurrencyEvent value)?
        changeFromCurrency,
    TResult? Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult? Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult? Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult? Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult? Function(CurrencyReconnectEvent value)? reconnect,
  }) {
    return changeFromValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult Function(CurrencyChangeFromCurrencyEvent value)? changeFromCurrency,
    TResult Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult Function(CurrencyReconnectEvent value)? reconnect,
    required TResult orElse(),
  }) {
    if (changeFromValue != null) {
      return changeFromValue(this);
    }
    return orElse();
  }
}

abstract class CurrencyChangeFromValueEvent implements CurrencyEvent {
  const factory CurrencyChangeFromValueEvent(
          {required final double? value,
          final Completer<Either<Failure, CurrencyInfoModel?>?>? completer}) =
      _$CurrencyChangeFromValueEventImpl;

  double? get value;
  Completer<Either<Failure, CurrencyInfoModel?>?>? get completer;
  @JsonKey(ignore: true)
  _$$CurrencyChangeFromValueEventImplCopyWith<
          _$CurrencyChangeFromValueEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrencyChangeToCurrencyEventImplCopyWith<$Res> {
  factory _$$CurrencyChangeToCurrencyEventImplCopyWith(
          _$CurrencyChangeToCurrencyEventImpl value,
          $Res Function(_$CurrencyChangeToCurrencyEventImpl) then) =
      __$$CurrencyChangeToCurrencyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CurrencyModel currency,
      Completer<Either<Failure, CurrencyInfoModel?>?>? completer});

  $CurrencyModelCopyWith<$Res> get currency;
}

/// @nodoc
class __$$CurrencyChangeToCurrencyEventImplCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res,
        _$CurrencyChangeToCurrencyEventImpl>
    implements _$$CurrencyChangeToCurrencyEventImplCopyWith<$Res> {
  __$$CurrencyChangeToCurrencyEventImplCopyWithImpl(
      _$CurrencyChangeToCurrencyEventImpl _value,
      $Res Function(_$CurrencyChangeToCurrencyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? completer = freezed,
  }) {
    return _then(_$CurrencyChangeToCurrencyEventImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyModel,
      completer: freezed == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<Either<Failure, CurrencyInfoModel?>?>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyModelCopyWith<$Res> get currency {
    return $CurrencyModelCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value));
    });
  }
}

/// @nodoc

class _$CurrencyChangeToCurrencyEventImpl
    implements CurrencyChangeToCurrencyEvent {
  const _$CurrencyChangeToCurrencyEventImpl(
      {required this.currency, this.completer});

  @override
  final CurrencyModel currency;
  @override
  final Completer<Either<Failure, CurrencyInfoModel?>?>? completer;

  @override
  String toString() {
    return 'CurrencyEvent.changeToCurrency(currency: $currency, completer: $completer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyChangeToCurrencyEventImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.completer, completer) ||
                other.completer == completer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency, completer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyChangeToCurrencyEventImplCopyWith<
          _$CurrencyChangeToCurrencyEventImpl>
      get copyWith => __$$CurrencyChangeToCurrencyEventImplCopyWithImpl<
          _$CurrencyChangeToCurrencyEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Completer<Failure?>? completer) fetchCurrencies,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromValue,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToValue,
    required TResult Function() reverseCurrencies,
    required TResult Function() reconnect,
  }) {
    return changeToCurrency(currency, completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult? Function()? reverseCurrencies,
    TResult? Function()? reconnect,
  }) {
    return changeToCurrency?.call(currency, completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult Function()? reverseCurrencies,
    TResult Function()? reconnect,
    required TResult orElse(),
  }) {
    if (changeToCurrency != null) {
      return changeToCurrency(currency, completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyFetchCurrenciesEvent value)
        fetchCurrencies,
    required TResult Function(CurrencyChangeFromCurrencyEvent value)
        changeFromCurrency,
    required TResult Function(CurrencyChangeFromValueEvent value)
        changeFromValue,
    required TResult Function(CurrencyChangeToCurrencyEvent value)
        changeToCurrency,
    required TResult Function(CurrencyChangeToValueEvent value) changeToValue,
    required TResult Function(CurrencyReverseCurrenciesEvent value)
        reverseCurrencies,
    required TResult Function(CurrencyReconnectEvent value) reconnect,
  }) {
    return changeToCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult? Function(CurrencyChangeFromCurrencyEvent value)?
        changeFromCurrency,
    TResult? Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult? Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult? Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult? Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult? Function(CurrencyReconnectEvent value)? reconnect,
  }) {
    return changeToCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult Function(CurrencyChangeFromCurrencyEvent value)? changeFromCurrency,
    TResult Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult Function(CurrencyReconnectEvent value)? reconnect,
    required TResult orElse(),
  }) {
    if (changeToCurrency != null) {
      return changeToCurrency(this);
    }
    return orElse();
  }
}

abstract class CurrencyChangeToCurrencyEvent implements CurrencyEvent {
  const factory CurrencyChangeToCurrencyEvent(
          {required final CurrencyModel currency,
          final Completer<Either<Failure, CurrencyInfoModel?>?>? completer}) =
      _$CurrencyChangeToCurrencyEventImpl;

  CurrencyModel get currency;
  Completer<Either<Failure, CurrencyInfoModel?>?>? get completer;
  @JsonKey(ignore: true)
  _$$CurrencyChangeToCurrencyEventImplCopyWith<
          _$CurrencyChangeToCurrencyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrencyChangeToValueEventImplCopyWith<$Res> {
  factory _$$CurrencyChangeToValueEventImplCopyWith(
          _$CurrencyChangeToValueEventImpl value,
          $Res Function(_$CurrencyChangeToValueEventImpl) then) =
      __$$CurrencyChangeToValueEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {double? value,
      Completer<Either<Failure, CurrencyInfoModel?>?>? completer});
}

/// @nodoc
class __$$CurrencyChangeToValueEventImplCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res, _$CurrencyChangeToValueEventImpl>
    implements _$$CurrencyChangeToValueEventImplCopyWith<$Res> {
  __$$CurrencyChangeToValueEventImplCopyWithImpl(
      _$CurrencyChangeToValueEventImpl _value,
      $Res Function(_$CurrencyChangeToValueEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? completer = freezed,
  }) {
    return _then(_$CurrencyChangeToValueEventImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      completer: freezed == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<Either<Failure, CurrencyInfoModel?>?>?,
    ));
  }
}

/// @nodoc

class _$CurrencyChangeToValueEventImpl implements CurrencyChangeToValueEvent {
  const _$CurrencyChangeToValueEventImpl({required this.value, this.completer});

  @override
  final double? value;
  @override
  final Completer<Either<Failure, CurrencyInfoModel?>?>? completer;

  @override
  String toString() {
    return 'CurrencyEvent.changeToValue(value: $value, completer: $completer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyChangeToValueEventImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.completer, completer) ||
                other.completer == completer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, completer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyChangeToValueEventImplCopyWith<_$CurrencyChangeToValueEventImpl>
      get copyWith => __$$CurrencyChangeToValueEventImplCopyWithImpl<
          _$CurrencyChangeToValueEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Completer<Failure?>? completer) fetchCurrencies,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromValue,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToValue,
    required TResult Function() reverseCurrencies,
    required TResult Function() reconnect,
  }) {
    return changeToValue(value, completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult? Function()? reverseCurrencies,
    TResult? Function()? reconnect,
  }) {
    return changeToValue?.call(value, completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult Function()? reverseCurrencies,
    TResult Function()? reconnect,
    required TResult orElse(),
  }) {
    if (changeToValue != null) {
      return changeToValue(value, completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyFetchCurrenciesEvent value)
        fetchCurrencies,
    required TResult Function(CurrencyChangeFromCurrencyEvent value)
        changeFromCurrency,
    required TResult Function(CurrencyChangeFromValueEvent value)
        changeFromValue,
    required TResult Function(CurrencyChangeToCurrencyEvent value)
        changeToCurrency,
    required TResult Function(CurrencyChangeToValueEvent value) changeToValue,
    required TResult Function(CurrencyReverseCurrenciesEvent value)
        reverseCurrencies,
    required TResult Function(CurrencyReconnectEvent value) reconnect,
  }) {
    return changeToValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult? Function(CurrencyChangeFromCurrencyEvent value)?
        changeFromCurrency,
    TResult? Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult? Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult? Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult? Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult? Function(CurrencyReconnectEvent value)? reconnect,
  }) {
    return changeToValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult Function(CurrencyChangeFromCurrencyEvent value)? changeFromCurrency,
    TResult Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult Function(CurrencyReconnectEvent value)? reconnect,
    required TResult orElse(),
  }) {
    if (changeToValue != null) {
      return changeToValue(this);
    }
    return orElse();
  }
}

abstract class CurrencyChangeToValueEvent implements CurrencyEvent {
  const factory CurrencyChangeToValueEvent(
          {required final double? value,
          final Completer<Either<Failure, CurrencyInfoModel?>?>? completer}) =
      _$CurrencyChangeToValueEventImpl;

  double? get value;
  Completer<Either<Failure, CurrencyInfoModel?>?>? get completer;
  @JsonKey(ignore: true)
  _$$CurrencyChangeToValueEventImplCopyWith<_$CurrencyChangeToValueEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrencyReverseCurrenciesEventImplCopyWith<$Res> {
  factory _$$CurrencyReverseCurrenciesEventImplCopyWith(
          _$CurrencyReverseCurrenciesEventImpl value,
          $Res Function(_$CurrencyReverseCurrenciesEventImpl) then) =
      __$$CurrencyReverseCurrenciesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrencyReverseCurrenciesEventImplCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res,
        _$CurrencyReverseCurrenciesEventImpl>
    implements _$$CurrencyReverseCurrenciesEventImplCopyWith<$Res> {
  __$$CurrencyReverseCurrenciesEventImplCopyWithImpl(
      _$CurrencyReverseCurrenciesEventImpl _value,
      $Res Function(_$CurrencyReverseCurrenciesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrencyReverseCurrenciesEventImpl
    implements CurrencyReverseCurrenciesEvent {
  const _$CurrencyReverseCurrenciesEventImpl();

  @override
  String toString() {
    return 'CurrencyEvent.reverseCurrencies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyReverseCurrenciesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Completer<Failure?>? completer) fetchCurrencies,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromValue,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToValue,
    required TResult Function() reverseCurrencies,
    required TResult Function() reconnect,
  }) {
    return reverseCurrencies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult? Function()? reverseCurrencies,
    TResult? Function()? reconnect,
  }) {
    return reverseCurrencies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult Function()? reverseCurrencies,
    TResult Function()? reconnect,
    required TResult orElse(),
  }) {
    if (reverseCurrencies != null) {
      return reverseCurrencies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyFetchCurrenciesEvent value)
        fetchCurrencies,
    required TResult Function(CurrencyChangeFromCurrencyEvent value)
        changeFromCurrency,
    required TResult Function(CurrencyChangeFromValueEvent value)
        changeFromValue,
    required TResult Function(CurrencyChangeToCurrencyEvent value)
        changeToCurrency,
    required TResult Function(CurrencyChangeToValueEvent value) changeToValue,
    required TResult Function(CurrencyReverseCurrenciesEvent value)
        reverseCurrencies,
    required TResult Function(CurrencyReconnectEvent value) reconnect,
  }) {
    return reverseCurrencies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult? Function(CurrencyChangeFromCurrencyEvent value)?
        changeFromCurrency,
    TResult? Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult? Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult? Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult? Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult? Function(CurrencyReconnectEvent value)? reconnect,
  }) {
    return reverseCurrencies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult Function(CurrencyChangeFromCurrencyEvent value)? changeFromCurrency,
    TResult Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult Function(CurrencyReconnectEvent value)? reconnect,
    required TResult orElse(),
  }) {
    if (reverseCurrencies != null) {
      return reverseCurrencies(this);
    }
    return orElse();
  }
}

abstract class CurrencyReverseCurrenciesEvent implements CurrencyEvent {
  const factory CurrencyReverseCurrenciesEvent() =
      _$CurrencyReverseCurrenciesEventImpl;
}

/// @nodoc
abstract class _$$CurrencyReconnectEventImplCopyWith<$Res> {
  factory _$$CurrencyReconnectEventImplCopyWith(
          _$CurrencyReconnectEventImpl value,
          $Res Function(_$CurrencyReconnectEventImpl) then) =
      __$$CurrencyReconnectEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrencyReconnectEventImplCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res, _$CurrencyReconnectEventImpl>
    implements _$$CurrencyReconnectEventImplCopyWith<$Res> {
  __$$CurrencyReconnectEventImplCopyWithImpl(
      _$CurrencyReconnectEventImpl _value,
      $Res Function(_$CurrencyReconnectEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrencyReconnectEventImpl implements CurrencyReconnectEvent {
  const _$CurrencyReconnectEventImpl();

  @override
  String toString() {
    return 'CurrencyEvent.reconnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyReconnectEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Completer<Failure?>? completer) fetchCurrencies,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeFromValue,
    required TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToCurrency,
    required TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)
        changeToValue,
    required TResult Function() reverseCurrencies,
    required TResult Function() reconnect,
  }) {
    return reconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult? Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult? Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult? Function()? reverseCurrencies,
    TResult? Function()? reconnect,
  }) {
    return reconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Completer<Failure?>? completer)? fetchCurrencies,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeFromValue,
    TResult Function(CurrencyModel currency,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToCurrency,
    TResult Function(double? value,
            Completer<Either<Failure, CurrencyInfoModel?>?>? completer)?
        changeToValue,
    TResult Function()? reverseCurrencies,
    TResult Function()? reconnect,
    required TResult orElse(),
  }) {
    if (reconnect != null) {
      return reconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyFetchCurrenciesEvent value)
        fetchCurrencies,
    required TResult Function(CurrencyChangeFromCurrencyEvent value)
        changeFromCurrency,
    required TResult Function(CurrencyChangeFromValueEvent value)
        changeFromValue,
    required TResult Function(CurrencyChangeToCurrencyEvent value)
        changeToCurrency,
    required TResult Function(CurrencyChangeToValueEvent value) changeToValue,
    required TResult Function(CurrencyReverseCurrenciesEvent value)
        reverseCurrencies,
    required TResult Function(CurrencyReconnectEvent value) reconnect,
  }) {
    return reconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult? Function(CurrencyChangeFromCurrencyEvent value)?
        changeFromCurrency,
    TResult? Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult? Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult? Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult? Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult? Function(CurrencyReconnectEvent value)? reconnect,
  }) {
    return reconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyFetchCurrenciesEvent value)? fetchCurrencies,
    TResult Function(CurrencyChangeFromCurrencyEvent value)? changeFromCurrency,
    TResult Function(CurrencyChangeFromValueEvent value)? changeFromValue,
    TResult Function(CurrencyChangeToCurrencyEvent value)? changeToCurrency,
    TResult Function(CurrencyChangeToValueEvent value)? changeToValue,
    TResult Function(CurrencyReverseCurrenciesEvent value)? reverseCurrencies,
    TResult Function(CurrencyReconnectEvent value)? reconnect,
    required TResult orElse(),
  }) {
    if (reconnect != null) {
      return reconnect(this);
    }
    return orElse();
  }
}

abstract class CurrencyReconnectEvent implements CurrencyEvent {
  const factory CurrencyReconnectEvent() = _$CurrencyReconnectEventImpl;
}

/// @nodoc
mixin _$CurrencyState {
  CurrencyModel? get fromCurrency => throw _privateConstructorUsedError;
  double? get fromValue => throw _privateConstructorUsedError;
  CurrencyModel? get toCurrency => throw _privateConstructorUsedError;
  double? get toValue => throw _privateConstructorUsedError;
  List<CurrencyModel>? get currencies => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CurrencyModel? fromCurrency,
            double? fromValue,
            CurrencyModel? toCurrency,
            double? toValue,
            List<CurrencyModel>? currencies)
        filling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CurrencyModel? fromCurrency,
            double? fromValue,
            CurrencyModel? toCurrency,
            double? toValue,
            List<CurrencyModel>? currencies)?
        filling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CurrencyModel? fromCurrency,
            double? fromValue,
            CurrencyModel? toCurrency,
            double? toValue,
            List<CurrencyModel>? currencies)?
        filling,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyFillingState value) filling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFillingState value)? filling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyFillingState value)? filling,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyStateCopyWith<CurrencyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyStateCopyWith<$Res> {
  factory $CurrencyStateCopyWith(
          CurrencyState value, $Res Function(CurrencyState) then) =
      _$CurrencyStateCopyWithImpl<$Res, CurrencyState>;
  @useResult
  $Res call(
      {CurrencyModel? fromCurrency,
      double? fromValue,
      CurrencyModel? toCurrency,
      double? toValue,
      List<CurrencyModel>? currencies});

  $CurrencyModelCopyWith<$Res>? get fromCurrency;
  $CurrencyModelCopyWith<$Res>? get toCurrency;
}

/// @nodoc
class _$CurrencyStateCopyWithImpl<$Res, $Val extends CurrencyState>
    implements $CurrencyStateCopyWith<$Res> {
  _$CurrencyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromCurrency = freezed,
    Object? fromValue = freezed,
    Object? toCurrency = freezed,
    Object? toValue = freezed,
    Object? currencies = freezed,
  }) {
    return _then(_value.copyWith(
      fromCurrency: freezed == fromCurrency
          ? _value.fromCurrency
          : fromCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyModel?,
      fromValue: freezed == fromValue
          ? _value.fromValue
          : fromValue // ignore: cast_nullable_to_non_nullable
              as double?,
      toCurrency: freezed == toCurrency
          ? _value.toCurrency
          : toCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyModel?,
      toValue: freezed == toValue
          ? _value.toValue
          : toValue // ignore: cast_nullable_to_non_nullable
              as double?,
      currencies: freezed == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyModelCopyWith<$Res>? get fromCurrency {
    if (_value.fromCurrency == null) {
      return null;
    }

    return $CurrencyModelCopyWith<$Res>(_value.fromCurrency!, (value) {
      return _then(_value.copyWith(fromCurrency: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyModelCopyWith<$Res>? get toCurrency {
    if (_value.toCurrency == null) {
      return null;
    }

    return $CurrencyModelCopyWith<$Res>(_value.toCurrency!, (value) {
      return _then(_value.copyWith(toCurrency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrencyFillingStateImplCopyWith<$Res>
    implements $CurrencyStateCopyWith<$Res> {
  factory _$$CurrencyFillingStateImplCopyWith(_$CurrencyFillingStateImpl value,
          $Res Function(_$CurrencyFillingStateImpl) then) =
      __$$CurrencyFillingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CurrencyModel? fromCurrency,
      double? fromValue,
      CurrencyModel? toCurrency,
      double? toValue,
      List<CurrencyModel>? currencies});

  @override
  $CurrencyModelCopyWith<$Res>? get fromCurrency;
  @override
  $CurrencyModelCopyWith<$Res>? get toCurrency;
}

/// @nodoc
class __$$CurrencyFillingStateImplCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$CurrencyFillingStateImpl>
    implements _$$CurrencyFillingStateImplCopyWith<$Res> {
  __$$CurrencyFillingStateImplCopyWithImpl(_$CurrencyFillingStateImpl _value,
      $Res Function(_$CurrencyFillingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromCurrency = freezed,
    Object? fromValue = freezed,
    Object? toCurrency = freezed,
    Object? toValue = freezed,
    Object? currencies = freezed,
  }) {
    return _then(_$CurrencyFillingStateImpl(
      fromCurrency: freezed == fromCurrency
          ? _value.fromCurrency
          : fromCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyModel?,
      fromValue: freezed == fromValue
          ? _value.fromValue
          : fromValue // ignore: cast_nullable_to_non_nullable
              as double?,
      toCurrency: freezed == toCurrency
          ? _value.toCurrency
          : toCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyModel?,
      toValue: freezed == toValue
          ? _value.toValue
          : toValue // ignore: cast_nullable_to_non_nullable
              as double?,
      currencies: freezed == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>?,
    ));
  }
}

/// @nodoc

class _$CurrencyFillingStateImpl implements CurrencyFillingState {
  const _$CurrencyFillingStateImpl(
      {this.fromCurrency,
      this.fromValue,
      this.toCurrency,
      this.toValue,
      final List<CurrencyModel>? currencies})
      : _currencies = currencies;

  @override
  final CurrencyModel? fromCurrency;
  @override
  final double? fromValue;
  @override
  final CurrencyModel? toCurrency;
  @override
  final double? toValue;
  final List<CurrencyModel>? _currencies;
  @override
  List<CurrencyModel>? get currencies {
    final value = _currencies;
    if (value == null) return null;
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CurrencyState.filling(fromCurrency: $fromCurrency, fromValue: $fromValue, toCurrency: $toCurrency, toValue: $toValue, currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyFillingStateImpl &&
            (identical(other.fromCurrency, fromCurrency) ||
                other.fromCurrency == fromCurrency) &&
            (identical(other.fromValue, fromValue) ||
                other.fromValue == fromValue) &&
            (identical(other.toCurrency, toCurrency) ||
                other.toCurrency == toCurrency) &&
            (identical(other.toValue, toValue) || other.toValue == toValue) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromCurrency, fromValue,
      toCurrency, toValue, const DeepCollectionEquality().hash(_currencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyFillingStateImplCopyWith<_$CurrencyFillingStateImpl>
      get copyWith =>
          __$$CurrencyFillingStateImplCopyWithImpl<_$CurrencyFillingStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CurrencyModel? fromCurrency,
            double? fromValue,
            CurrencyModel? toCurrency,
            double? toValue,
            List<CurrencyModel>? currencies)
        filling,
  }) {
    return filling(fromCurrency, fromValue, toCurrency, toValue, currencies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CurrencyModel? fromCurrency,
            double? fromValue,
            CurrencyModel? toCurrency,
            double? toValue,
            List<CurrencyModel>? currencies)?
        filling,
  }) {
    return filling?.call(
        fromCurrency, fromValue, toCurrency, toValue, currencies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CurrencyModel? fromCurrency,
            double? fromValue,
            CurrencyModel? toCurrency,
            double? toValue,
            List<CurrencyModel>? currencies)?
        filling,
    required TResult orElse(),
  }) {
    if (filling != null) {
      return filling(fromCurrency, fromValue, toCurrency, toValue, currencies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyFillingState value) filling,
  }) {
    return filling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFillingState value)? filling,
  }) {
    return filling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyFillingState value)? filling,
    required TResult orElse(),
  }) {
    if (filling != null) {
      return filling(this);
    }
    return orElse();
  }
}

abstract class CurrencyFillingState implements CurrencyState {
  const factory CurrencyFillingState(
      {final CurrencyModel? fromCurrency,
      final double? fromValue,
      final CurrencyModel? toCurrency,
      final double? toValue,
      final List<CurrencyModel>? currencies}) = _$CurrencyFillingStateImpl;

  @override
  CurrencyModel? get fromCurrency;
  @override
  double? get fromValue;
  @override
  CurrencyModel? get toCurrency;
  @override
  double? get toValue;
  @override
  List<CurrencyModel>? get currencies;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyFillingStateImplCopyWith<_$CurrencyFillingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
