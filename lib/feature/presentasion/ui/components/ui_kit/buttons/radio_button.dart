import 'package:converter/common/utils/layout.dart';
import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  final bool isActive;

  const RadioButton({super.key, required this.isActive});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  late Layout _layout;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _layout = Layout.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 15,
      height: 15,
      duration: const Duration(milliseconds: 150),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: _borderColor, width: 2),
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _insideColor,
        ),
      ),
    );
  }

  Color get _borderColor => widget.isActive ? _layout.theme.primary : _layout.theme.radioButton;
  Color get _insideColor => widget.isActive ? _layout.theme.primary : Colors.transparent;
}
