import 'package:converter/common/utils/layout.dart';
import 'package:converter/feature/presentasion/ui/components/components.dart';
import 'package:flutter/material.dart';

class ChooseCurrencyDialogActionButtons extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onDone;

  const ChooseCurrencyDialogActionButtons({super.key, required this.onCancel, required this.onDone});

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          DialogButton(
            text: layout.intl.cancel,
            onTap: onCancel,
          ),
          DialogButton(
            text: layout.intl.ok,
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            onTap: onDone,
          ),
        ],
      ),
    );
  }
}
