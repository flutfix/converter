import 'package:flutter/material.dart';

class ScaffoldWithUnfocus extends StatelessWidget {
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;
  final Widget? body;

  const ScaffoldWithUnfocus({super.key, this.backgroundColor, this.appBar, this.body});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: appBar,
        body: body,
      ),
    );
  }
}
