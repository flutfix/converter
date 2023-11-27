import 'dart:async';

import 'package:converter/common/utils/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseTextField extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final Duration? debounceDuration;

  const BaseTextField({
    super.key,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.onChanged,
    this.debounceDuration,
  });

  @override
  State<BaseTextField> createState() => _BaseTextFieldState();
}

class _BaseTextFieldState extends State<BaseTextField> {
  Timer? _debounce;

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return TextField(
      controller: widget.controller,
      cursorColor: layout.theme.activeTextField,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      inputFormatters: widget.inputFormatters,
      style: layout.fonts.styleEB20,
      onChanged: _onChanged,
      decoration: InputDecoration(
        border: UnderlineInputBorder(borderSide: BorderSide(color: layout.theme.unactiveTextField)),
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: layout.theme.activeTextField)),
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
      ),
    );
  }

  void _onChanged(String text) {
    if (widget.debounceDuration == null) {
      widget.onChanged?.call(text);
      return;
    }

    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(widget.debounceDuration!, () async {
      widget.onChanged?.call(text);
      setState(() {});
    });
  }
}
