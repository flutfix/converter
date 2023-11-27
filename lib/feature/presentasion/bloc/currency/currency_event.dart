part of 'currency_bloc.dart';

@freezed
class CurrencyEvent with _$CurrencyEvent {
  const factory CurrencyEvent.fetchCurrencies({Completer<Failure?>? completer}) = CurrencyFetchCurrenciesEvent;

  const factory CurrencyEvent.changeFromCurrency({
    required CurrencyModel currency,
    Completer<SyncData<CurrencyInfoModel?>?>? completer,
  }) = CurrencyChangeFromCurrencyEvent;

  const factory CurrencyEvent.changeFromValue({
    required double? value,
    Completer<SyncData<CurrencyInfoModel?>?>? completer,
  }) = CurrencyChangeFromValueEvent;

  const factory CurrencyEvent.changeToCurrency({
    required CurrencyModel currency,
    Completer<SyncData<CurrencyInfoModel?>?>? completer,
  }) = CurrencyChangeToCurrencyEvent;

  const factory CurrencyEvent.changeToValue({
    required double? value,
    Completer<SyncData<CurrencyInfoModel?>?>? completer,
  }) = CurrencyChangeToValueEvent;

  const factory CurrencyEvent.reverseCurrencies() = CurrencyReverseCurrenciesEvent;
}
