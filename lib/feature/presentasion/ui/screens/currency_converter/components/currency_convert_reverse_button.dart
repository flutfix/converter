import 'package:converter/common/constants/assets.dart';
import 'package:converter/common/utils/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyConvertReverseButton extends StatelessWidget {
  final VoidCallback onTap;

  const CurrencyConvertReverseButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SvgPicture.asset(
          Assets.icons.convertArrows,
          height: 30,
          theme: SvgTheme(currentColor: layout.theme.primary),
        ),
      ),
    );
  }
}
