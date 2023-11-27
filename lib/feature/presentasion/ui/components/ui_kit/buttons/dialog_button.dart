import 'package:converter/common/utils/layout.dart';
import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  final VoidCallback onTap;

  const DialogButton({
    super.key,
    required this.text,
    this.padding = const EdgeInsets.all(10.0),
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Text(
          text.toUpperCase(),
          style: layout.fonts.styleSB14.copyWith(color: layout.theme.primary),
        ),
      ),
    );
  }
}
