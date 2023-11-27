import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:converter/core/services/service_locator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

@sealed
class AppBlocObserver extends BlocObserver {
  static AppBlocObserver? _singleton;
  final Logger _logger;

  factory AppBlocObserver.instance() => _singleton ??= AppBlocObserver._(sl());
  AppBlocObserver._(this._logger);

  @override
  void onCreate(BlocBase<Object?> bloc) {
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (event == null) return;
    final Object? state = bloc.state;
    if (state == null) return;
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    final Object? event = transition.event;
    final Object? currentState = transition.currentState;
    final Object? nextState = transition.nextState;
    if (event == null || currentState == null || nextState == null) return;
    _logger.d(
      '[${bloc.runtimeType}]\nEvent: ${event.runtimeType.toString().replaceAll(RegExp(r'_|\$|[0-9]|Impl'), '')}\n${currentState.runtimeType.toString().replaceAll(RegExp(r'_|\$|[0-9]|Impl'), '')} -> ${nextState.runtimeType.toString().replaceAll(RegExp(r'_|\$|[0-9]|Impl'), '')}',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    _logger.e('Bloc Error: ${bloc.runtimeType}\nError: $error');
  }

  @override
  void onClose(BlocBase<Object?> bloc) {
    super.onClose(bloc);
    _logger.d('${bloc.runtimeType}.close()');
  }
}
