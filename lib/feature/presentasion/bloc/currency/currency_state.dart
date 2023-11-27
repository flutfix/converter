part of 'currency_bloc.dart';

@freezed
class CurrencyState with _$CurrencyState {
  const factory CurrencyState.filling({
    CurrencyModel? fromCurrency,
    double? fromValue,
    CurrencyModel? toCurrency,
    double? toValue,
    List<CurrencyModel>? currencies,
  }) = CurrencyFillingState;
}
