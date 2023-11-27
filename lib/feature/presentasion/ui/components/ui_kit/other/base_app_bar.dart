import 'package:converter/common/utils/layout.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const BaseAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: layout.theme.primary,
      centerTitle: false,
      title: Text(
        title,
        style: layout.fonts.styleEB16.copyWith(color: layout.theme.appBarText),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
