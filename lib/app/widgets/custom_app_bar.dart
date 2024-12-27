import 'package:flutter/material.dart';
import 'package:onex/app/theme/colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget> actions;
  const CustomAppbar(
      {super.key,
      required this.text,
      required this.title,
      this.actions = const []});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.appbarAndBodyColor,
      title: Text(
        title ?? "",
        style: text.headlineLarge
            ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
