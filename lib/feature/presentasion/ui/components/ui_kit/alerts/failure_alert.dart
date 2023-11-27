import 'package:converter/common/utils/layout.dart';
import 'package:converter/feature/presentasion/ui/components/ui_kit/buttons/dialog_button.dart';
import 'package:converter/feature/presentasion/ui/components/ui_kit/other/base_divider.dart';
import 'package:flutter/material.dart';

class FailureAlert extends StatelessWidget {
  final String title;

  const FailureAlert({super.key, required this.title});

  static void show(BuildContext context, String title) {
    showDialog(context: context, builder: (_) => FailureAlert(title: title));
  }

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return Dialog(
      surfaceTintColor: layout.theme.backgroud,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
      insetPadding: EdgeInsets.symmetric(horizontal: _insetPadding(layout)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              title,
              style: layout.fonts.styleEB16.copyWith(color: layout.theme.primaryText),
              textAlign: TextAlign.center,
            ),
          ),
          const BaseDivider(),
          Padding(
            padding: const EdgeInsets.all(5),
            child: DialogButton(
              text: layout.intl.ok,
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              onTap: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }

  double _insetPadding(Layout layout) => (layout.width - 250) / 2;
}
