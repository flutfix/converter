import 'package:converter/common/utils/layout.dart';
import 'package:flutter/material.dart';

class BaseDivider extends StatelessWidget {
  const BaseDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return Divider(height: 1, color: layout.theme.divider);
  }
}
