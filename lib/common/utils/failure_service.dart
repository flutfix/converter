import 'package:converter/common/utils/layout.dart';
import 'package:converter/core/failures/failure.dart';
import 'package:converter/feature/presentasion/ui/components/components.dart';
import 'package:flutter/material.dart';

class FailureService {
  static void onShowFailureAlert(BuildContext context, Failure failure) {
    final layout = Layout.of(context);

    if (failure.cause == 'base_currency_access_restricted') {
      FailureAlert.show(context, layout.intl.base_currency_access_restricted);
      return;
    }

    FailureAlert.show(context, layout.intl.unknown_failure_occurred);
  }
}
