// ignore_for_file: avoid_print, avoid_bool_literals_in_conditional_expressions

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class LoggerService {
  static final _customOutput = CustomOutput();

  static Logger get ingect {
    return Logger(
      printer: PrettyPrinter(
        methodCount: 0,
        errorMethodCount: 5,
        lineLength: 50,
        colors: kIsWeb ? true : !Platform.isIOS,
        printEmojis: true,
        printTime: false,
      ),
      output: _customOutput,
    );
  }

  static List<OutputEvent> get history => _customOutput.eventsHistory;
}

class CustomOutput extends LogOutput {
  final maxHistoryItems = 500;
  final List<OutputEvent> eventsHistory = [];

  @override
  void output(OutputEvent event) {
    if (eventsHistory.length < maxHistoryItems) {
      eventsHistory.add(event);
    } else {
      eventsHistory.clear();
    }

    event.lines.forEach(print);
  }
}
