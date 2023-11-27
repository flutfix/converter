import 'package:converter/common/utils/layout.dart';
import 'package:flutter/material.dart';

class BaseLoader extends StatelessWidget {
  const BaseLoader({super.key});

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return Center(
      child: SizedBox(
        width: 30,
        height: 30,
        child: CircularProgressIndicator(color: layout.theme.primary),
      ),
    );
  }
}
